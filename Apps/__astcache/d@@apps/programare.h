﻿#ifndef ProgramareH
#define ProgramareH

#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Data.DB.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Data.SqlExpr.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.Mask.hpp>
#include <Data.FMTBcd.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.WinXPickers.hpp>

class TFM : public TForm
{
__published:
	TLabel *Program_Label;
	TButton *Add;
	TPanel *Zile;
	TLabel *Zile_Label;
	TADOConnection *DB_Connection;
	TDBGrid *Pacienti;
	TADOQuery *Zile_Query;
	TDBGrid *Zile_Grid;
	TDataSource *Zile_Sourse;
	TDataSource *Pacienti_Sourse;
	TADOQuery *Pacienti_Query;
	TPanel *Meniu;
	TButton *Delete;
	TADOTable *Pacient;
	TButton *Refresh;
	TButton *Modifica;
	TButton *Zile_Libere;
	TADOQuery *Pacienti_View_Query;
	TDataSource *Pacienti_View_Sourse;
	TSpeedButton *SpeedButton1;
	TADOTable *OreDeLucru;
	TButton *Raport;
	TDataSource *Raport_Sourse;

	void __fastcall AddClick(TObject *Sender);
	void __fastcall DeleteClick(TObject *Sender);
	void __fastcall RefreshClick(TObject *Sender);
	void __fastcall ModificaClick(TObject *Sender);
	void __fastcall FormKeyDown(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall Zile_LibereClick(TObject *Sender);
	void __fastcall RaportClick(TObject *Sender);


private:
public:
	__fastcall TFM(TComponent* Owner);
};

extern PACKAGE TFM *FM;

#endif
