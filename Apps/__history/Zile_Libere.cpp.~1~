#include <vcl.h>
#pragma hdrstop

#include "Zile_Libere.h"
#include "Programare.h"
#include <DateUtils.hpp>

#pragma package(smart_init)
#pragma resource "*.dfm"


__fastcall TDays_Form::TDays_Form(TComponent* Owner)
	: TForm(Owner){
   Afisare->Default = true;
}

void __fastcall TDays_Form::FormActivate(TObject *Sender) {
	Lista->Clear();
	Titlu->Caption = "Durata: ";
	Durata_Edit->Visible = true;
	Durata_Edit->Text = "";
	Days_Form->ClientHeight = 90;
	Lista->Visible = false;
	Afisare->Visible = true;
	Anuleaza->Top = 30;
	Anuleaza->Left = 170;
	Afisare->Top = 30;
    OreDeLucru->Active = false;
	OreDeLucru->Active = true;
	Pacient->Active = false;
	Pacient->Active = true;
}

void __fastcall TDays_Form::AnuleazaClick(TObject *Sender) {
	Days_Form->Close();
}

void __fastcall TDays_Form::AfisareClick(TObject *Sender){
	String Durata_S = Durata_Edit->Text;
	int Durata = StrToInt(Durata_S);
	Days_Form->ClientHeight = 500;
	Durata_Edit->Visible = false;
	Titlu->Caption = "Lista locurilor libere pentru programre:";
	Afisare->Visible = false;
	Anuleaza->Top = 460;
	Anuleaza->Left = 300;
	Lista->Visible = true;


	Pacient->Sort = "DATA, ORA_INCEPUT";
	OreDeLucru->Sort = "DATA";

	OreDeLucru->First();
	while (!OreDeLucru->Eof)  {
		Pacient->First();
		while (!Pacient->Eof) {
			if (Pacient->Fields->Fields[3]->AsString == OreDeLucru->Fields->Fields[0]->AsString) {
				if (MinutesBetween(StrToTime("8:00:00 AM"), StrToTime(OreDeLucru->Fields->Fields[1]->AsString)) >= Durata) {
					String Item = Pacient->Fields->Fields[3]->AsString + " 08:00 - " + OreDeLucru->Fields->Fields[1]->AsString;
					int index = Lista->Items->IndexOf(Item);
					if (index == -1) {
					   Lista->Items->Add(Item);
					}
				}
				if (MinutesBetween(StrToTime(OreDeLucru->Fields->Fields[2]->AsString), StrToTime(OreDeLucru->Fields->Fields[4]->AsString)) >= Durata) {
					String Item = Pacient->Fields->Fields[3]->AsString + " " + OreDeLucru->Fields->Fields[2]->AsString + " - " + OreDeLucru->Fields->Fields[4]->AsString;
					int index = Lista->Items->IndexOf(Item);
					if (index == -1) {
					   Lista->Items->Add(Item);
					}
				}



			}
			Pacient->Next();
		}
		OreDeLucru->Next();
	}

	OreDeLucru->First();
	while (!OreDeLucru->Eof) {
		Pacient->First();
		while (!Pacient->Eof) {
			String Ora_Sfarsit = Pacient->Fields->Fields[5]->AsString;
			String Data = Pacient->Fields->Fields[3]->AsString;
			Pacient->Next();
			if (!Pacient->Eof) {
				if (MinutesBetween(StrToTime(Ora_Sfarsit), StrToTime(Pacient->Fields->Fields[4]->AsString)) >= Durata
					&& Data == Pacient->Fields->Fields[3]->AsString) {
					String Item = Pacient->Fields->Fields[3]->AsString + " " + Ora_Sfarsit + " - " + Pacient->Fields->Fields[4]->AsString;
					int index = Lista->Items->IndexOf(Item);
					if (index == -1) {
					   Lista->Items->Add(Item);
					}
				}
			}
		}
		OreDeLucru->Next();
	}

	OreDeLucru->Last();
	String Item = "De pe data: " + DateTimeToStr(IncDay(OreDeLucru->Fields->Fields[0]->AsDateTime, 1)) + " 08:00 - 20:00";
	Lista->Items->Add(Item);


	TStringList *stringList = new TStringList;
	stringList->Assign(Lista->Items);
	stringList->Sort();

	Lista->Items->Clear();

	for (int i = 0; i < stringList->Count; i++) {
		Lista->Items->Add(stringList->Strings[i]);
	}

	delete stringList;

}
