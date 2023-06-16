#ifndef RaportH
#define RaportH

#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>

class TRaport_Form : public TForm
{
__published:
	TADOTable *Raport;
	TButton *Afisare;
	TButton *Anuleaza;
	TLabel *Titlu;
	TDateTimePicker *Inceput_Date;
	TDateTimePicker *Sfarsit_Date;
	TPanel *Read;
	TLabel *Inceput;
	TLabel *Sfarsit;
	TDBGrid *Raport_Table;
	TDataSource *Raport_Sourse;
	void __fastcall FormActivate(TObject *Sender);
	void __fastcall AnuleazaClick(TObject *Sender);
	void __fastcall AfisareClick(TObject *Sender);
private:
public:
	__fastcall TRaport_Form(TComponent* Owner);
};

extern PACKAGE TRaport_Form *Raport_Form;

#endif
