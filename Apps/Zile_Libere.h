#ifndef Zile_LibereH
#define Zile_LibereH

#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>

class TDays_Form : public TForm
{
__published:
	TLabel *Titlu;
	TEdit *Durata_Edit;
	TButton *Anuleaza;
	TButton *Afisare;
	TListBox *Lista;
	TADOTable *OreDeLucru;
	TADOTable *Pacient;
	void __fastcall FormActivate(TObject *Sender);
	void __fastcall AnuleazaClick(TObject *Sender);
	void __fastcall AfisareClick(TObject *Sender);
private:
public:
	__fastcall TDays_Form(TComponent* Owner);
};

extern PACKAGE TDays_Form *Days_Form;

#endif
