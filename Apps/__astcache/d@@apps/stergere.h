#ifndef StergereH
#define StergereH

#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>

class TDelete_Form : public TForm
{
__published:
    TPanel *New;
	TADOTable *Pacient;
	TADOQuery *Pacienti_Query;
	TLabel *Nume_Label;
	TLabel *Prenume_Label;
	TButton *Sterge;
	TButton *Anuleaza;
	TEdit *Nume_Edit;
	TEdit *Prenume_Edit;
	void __fastcall StergeClick(TObject *Sender);
    void __fastcall AnuleazaClick(TObject *Sender);
	void __fastcall FormActivate(TObject *Sender);
private:
public:
	__fastcall TDelete_Form(TComponent* Owner);
};

extern PACKAGE TDelete_Form *Delete_Form;

#endif

