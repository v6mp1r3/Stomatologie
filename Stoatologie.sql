
  CREATE TABLE "TEST"."PACIENT" 
   (	"ID" NUMBER, 
	"NUME" VARCHAR2(30 BYTE), 
	"PRENUME" VARCHAR2(30 BYTE), 
	"TELEFON" VARCHAR2(10 BYTE) DEFAULT '-', 
	"DATA" TIMESTAMP (6) NOT NULL ENABLE, 
	"SCOP" VARCHAR2(50 BYTE), 
	"DURATA" NUMBER NOT NULL ENABLE, 
	"PRET" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

  CREATE OR REPLACE TRIGGER "TEST"."PACIENT_TRIGGER" 
BEFORE INSERT ON Pacient
FOR EACH ROW
BEGIN

    :NEW.ID := Identity.NEXTVAL;
END;
/
ALTER TRIGGER "TEST"."PACIENT_TRIGGER" ENABLE;


  CREATE OR REPLACE FORCE VIEW "TEST"."PACIENT_VIEW" ("NUME", "PRENUME", "TELEFON", "DATA", "ORA_INCEPUT", "ORA_SFARSIT", "SCOP", "PRET") AS 
  SELECT Nume, Prenume, Telefon, TO_CHAR(Data, 'MM/DD/YYYY') AS Data, TO_CHAR(Data, 'HH24:MI') AS Ora_Inceput,
  TO_CHAR(Data + INTERVAL '1' MINUTE * Durata, 'HH24:MI') AS Ora_Sfarsit, Scop, Pret
FROM Pacient;


  CREATE OR REPLACE FORCE VIEW "TEST"."OREDELUCRU" ("DATA", "ORA_INCEPUT", "ORA_SFARSIT", "ORE_SUMAR", "ORA_MAXIMA") AS 
  SELECT
    TO_CHAR(Data, 'MM/DD/YYYY') AS Data,
    TO_CHAR(MIN(Data), 'HH24:MI') AS Ora_Inceput,
    TO_CHAR(MAX(Data + INTERVAL '1' MINUTE * Durata), 'HH24:MI') AS Ora_Sfarsit,
    MAX(Data + INTERVAL '1' MINUTE * Durata) - MIN(Data) AS Ore_Sumar,
    TO_CHAR(MIN(Data) + INTERVAL '8' HOUR, 'HH24:MI') AS Ora_Maxima
FROM Pacient
GROUP BY TO_CHAR(Data, 'MM/DD/YYYY');


  CREATE OR REPLACE FORCE VIEW "TEST"."RAPORT" ("DATA", "ORA_INCEPUT", "ORA_SFARSIT", "ORE_SUMAR", "NR_PACIENTTI", "SUMA") AS 
  SELECT
  TO_CHAR(Data, 'MM/DD/YYYY') AS Data,
  TO_CHAR(MIN(Data), 'HH24:MI') AS Ora_Inceput,
  TO_CHAR(MAX(Data + INTERVAL '1' MINUTE * Durata), 'HH24:MI') AS Ora_Sfarsit,
  TO_CHAR(EXTRACT(HOUR FROM MAX(Data + INTERVAL '1' MINUTE * Durata) - MIN(Data))) || ' h ' ||
  TO_CHAR(EXTRACT(MINUTE FROM MAX(Data + INTERVAL '1' MINUTE * Durata) - MIN(Data)), 'FM00') || ' min' AS Ore_Sumar,
  COUNT(Nume) AS Nr_Pacienti,
  SUM(Pret) AS Suma
FROM Pacient
GROUP BY TO_CHAR(Data, 'MM/DD/YYYY');


create or replace PACKAGE RAPORT_PKG AS

  TYPE RaportRecord IS RECORD (
    Data          VARCHAR2(10),
    Ora_Inceput   VARCHAR2(5),
    Ora_Sfarsit   VARCHAR2(5),
    Ore_Sumar     VARCHAR2(10),
    Nr_Pacienti   NUMBER,
    Suma          NUMBER
  );

  TYPE RaportTable IS TABLE OF RaportRecord;

  PROCEDURE GenerareRaport(V_Result OUT RaportTable);
END RAPORT_PKG;

create or replace PACKAGE BODY RAPORT_PKG AS

  PROCEDURE GenerareRaport(V_Result OUT RaportTable) IS
  BEGIN
    SELECT
      TO_CHAR(Data, 'MM/DD/YYYY'),
      TO_CHAR(MIN(Data), 'HH24:MI'),
      TO_CHAR(MAX(Data + INTERVAL '1' MINUTE * Durata), 'HH24:MI'),
      TO_CHAR(EXTRACT(HOUR FROM MAX(Data + INTERVAL '1' MINUTE * Durata) - MIN(Data))) || ' h ' ||
      TO_CHAR(EXTRACT(MINUTE FROM MAX(Data + INTERVAL '1' MINUTE * Durata) - MIN(Data)), 'FM00') || ' min',
      COUNT(Nume),
      SUM(Pret)
    BULK COLLECT INTO
      V_Result
    FROM
      Pacient
    GROUP BY
      TO_CHAR(Data, 'MM/DD/YYYY');
  END GenerareRaport;
END RAPORT_PKG;


DECLARE
  v_Result RAPORT_PKG.RaportTable;
BEGIN

  RAPORT_PKG.GenerareRaport(v_Result);


  DBMS_OUTPUT.PUT_LINE('DATA       | ORA_INCEPUT | ORA_SFARSIT |  ORE_SUMAR  | NR_PACIENTI | SUMA');
  DBMS_OUTPUT.PUT_LINE('-----------+-------------+-------------+-------------+-------------+--------');
FOR i IN v_Result.FIRST .. V_Result.LAST LOOP
    DBMS_OUTPUT.PUT_LINE(
      V_Result(i).Data || ' |    ' ||
      V_Result(i).Ora_Inceput || '    |    ' ||
      V_Result(i).Ora_Sfarsit || '    | ' ||
      V_Result(i).Ore_Sumar || '  |      ' ||
      V_Result(i).Nr_Pacienti || '      | ' ||
      V_Result(i).Suma
    );
  END LOOP;
END;
