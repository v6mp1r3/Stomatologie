#include <vcl.h>
#pragma hdrstop

#include "Stergere.h"
#include "Programare.h"

#pragma package(smart_init)
#pragma resource "*.dfm"

__fastcall TDelete_Form::TDelete_Form(TComponent* Owner)
	: TForm(Owner) {
    Sterge -> Default = true;
}

void __fastcall TDelete_Form::StergeClick(TObject *Sender) {
	String Nume = Nume_Edit->Text;
	String Prenume = Prenume_Edit->Text;

	bool pacientGasit = false;
	Pacient->First();
	while (!Pacient->Eof) {
		if (Pacient->Fields->Fields[1]->AsString == Nume && Pacient->Fields->Fields[2]->AsString == Prenume) {
			pacientGasit = true;
			break;
		}
		Pacient->Next();
	}

	if (pacientGasit) {
		Pacient->Delete();
	} else {
		ShowMessage("Pacientul nu a fost gasit!");
	}

	Delete_Form->Close();
}

void __fastcall TDelete_Form::AnuleazaClick(TObject *Sender) {
	Delete_Form->Close();
}


void __fastcall TDelete_Form::FormActivate(TObject *Sender) {
    Nume_Edit->Text = "";
	Prenume_Edit->Text = "";
	Pacient->Active = false;
	Pacient->Active = true;
	Pacienti_Query->Active = false;
	Pacienti_Query->Active = true;
}
