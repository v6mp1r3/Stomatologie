#include <vcl.h>
#include <sstream>
#include <string>
#pragma hdrstop

#include "Programare.h"
#include "Adaugare.h"
#include "Stergere.h"
#include "Modificare.h"
#include "Zile_Libere.h"
#include "Raport.h"

#pragma package(smart_init)
#pragma resource "*.dfm"
TFM *FM;
TAdd_Form *Add_Form;
TDelete_Form *Delete_Form;
TModify_Form *Modify_Form;
TDays_Form *Days_Form;
TRaport_Form *Raport_Form;

__fastcall TFM::TFM(TComponent* Owner)
	: TForm(Owner) {
	FM->WindowState = wsMaximized;
    Refresh-> Default = true;
}

void __fastcall TFM::AddClick(TObject *Sender) {
	Add_Form->Show();
	Pacient->Active = true;
}

void __fastcall TFM::DeleteClick(TObject *Sender) {
	Delete_Form->Show();

}

void __fastcall TFM::RaportClick(TObject *Sender) {
    Raport_Form->Show();
}

void __fastcall TFM::RefreshClick(TObject *Sender) {
	OreDeLucru->Active = false;
	OreDeLucru->Active = true;
	Pacient->Active = false;
	Pacient->Active = true;
	Pacienti_Query->Active = false;
	Pacienti_Query->Active = true;
	Pacienti_View_Query->Active = false;
	Pacienti_View_Query->Active = true;
	Zile_Query->Active = false;
	Zile_Query->Active = true;
}

void __fastcall TFM::ModificaClick(TObject *Sender) {
	Modify_Form->Show();
}

void __fastcall TFM::Zile_LibereClick(TObject *Sender) {
	Days_Form->Show();
}

void __fastcall TFM::FormKeyDown(TObject *Sender, WORD &Key, TShiftState Shift) {
	if (Key == '+'){
		AddClick(Add);
		ShowMessage("Tasta +");
	} else if (Key == '-') {
		DeleteClick(Delete);
		ShowMessage("Tasta -");
	 } else if (Key == '*') {
		ModificaClick(Modifica);
		ShowMessage("Tasta *");
	 }

}



