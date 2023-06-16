#ifndef ModificareH
#define ModificareH

#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.WinXPickers.hpp>

class TModify_Form : public TForm
{
__published:
	TPanel *New;
	TLabel *Nume_Label;
	TLabel *Titlu;
	TLabel *Prenume_Label;
	TButton *Cautare;
	TButton *Anuleaza;
	TEdit *Nume_Edit;
	TEdit *Prenume_Edit;
	TADOTable *Pacient;
	TADOQuery *Pacienti_Query;
	TButton *Modifica;
	TDateTimePicker *Data_Edit;
	TLabel *Data_Label;
	TEdit *Durata_Edit;
	TLabel *Durata_Label;
	TTimePicker *Ora_Edit;
	TLabel *Ora_Label;
	TEdit *Pret_Edit;
	TLabel *Pret_Label;
	TEdit *Scop_Edit;
	TLabel *Scop_Label;
	TEdit *Telefon_Edit;
	TLabel *Telefon_Label;
	TPanel *Date;
	TADOTable *OreDeLucru;
	void __fastcall CautareClick(TObject *Sender);
	void __fastcall AnuleazaClick(TObject *Sender);
	void __fastcall ModificaClick(TObject *Sender);
	void __fastcall FormActivate(TObject *Sender);
private:
public:
	__fastcall TModify_Form(TComponent* Owner);
};

extern PACKAGE TModify_Form *Modify_Form;

#endif
