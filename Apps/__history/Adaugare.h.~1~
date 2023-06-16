#ifndef AdaugareH
#define AdaugareH

#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.WinXPickers.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Data.FMTBcd.hpp>
#include <Data.SqlExpr.hpp>

class TAdd_Form : public TForm
{
__published:
	TPanel *New;
	TLabel *Nume_Label;
	TLabel *Telefon_Label;
	TLabel *Data_Label;
	TLabel *Scop_Label;
	TLabel *Durata_Label;
	TLabel *Pret_Label;
	TLabel *Titlu;
	TLabel *Prenume_Label;
	TLabel *Ora_Label;
	TButton *Adauga;
	TButton *Anuleaza;
	TEdit *Nume_Edit;
	TEdit *Prenume_Edit;
	TEdit *Scop_Edit;
	TEdit *Telefon_Edit;
	TEdit *Durata_Edit;
	TEdit *Pret_Edit;
	TDateTimePicker *Data_Edit;
	TTimePicker *Ora_Edit;
	TADOTable *Pacient;
	TADOQuery *Pacienti_Query;
	TADOTable *OreDeLucru;
	void __fastcall AdaugaClick(TObject *Sender);
	void __fastcall AnuleazaClick(TObject *Sender);
	void __fastcall FormActivate(TObject *Sender);
private:
public:
	__fastcall TAdd_Form(TComponent* Owner);
};

extern PACKAGE TAdd_Form *Add_Form;

#endif
