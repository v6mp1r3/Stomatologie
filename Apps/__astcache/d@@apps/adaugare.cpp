#include <vcl.h>
#pragma hdrstop

#include "Adaugare.h"
#include "Programare.h"
#include <DateUtils.hpp>

#pragma package(smart_init)
#pragma resource "*.dfm"

__fastcall TAdd_Form::TAdd_Form(TComponent* Owner)
	: TForm(Owner) {
	Adauga->Default = true;
}

void __fastcall TAdd_Form::AdaugaClick(TObject *Sender) {
	bool Liber = false;
	bool H8 = true;
	bool Ora_8_20 = false;
	String Nume = Nume_Edit->Text;
	String Prenume = Prenume_Edit->Text;
	String Telefon = Telefon_Edit->Text;
	String Data_S = Data_Edit->DateTime;
	String Ora_S = Ora_Edit->Time;
	String Scop = Scop_Edit->Text;
	String Durata_S = Durata_Edit->Text;
	String Pret_S = Pret_Edit->Text;
	Data_S = Data_S.Delete(Data_S.Length()-10, 11);
	String Data = Data_S + Ora_S;
	int Durata = StrToInt(Durata_S);
	float Pret = StrToFloat(Pret_S);

	if (StrToTime(Ora_S) < StrToTime("8:00:00 AM") || IncMinute(StrToTime(Ora_S), Durata) > StrToTime("8:00:00 PM")) {
		ShowMessage("Va rugam sa alegeti o ora rationala (08:00 - 20:00)");
		Ora_Edit->Time = StrToTime("8:00:00 AM");
		Ora_8_20 = false;
   } else {
		Ora_8_20 = true;
		Pacient->First();
		while (!Pacient->Eof) {
			if (StrToDateTime(Data) >= Pacient->Fields->Fields[4]->AsDateTime && IncMinute(StrToDateTime(Data), Durata)
				<= IncMinute(Pacient->Fields->Fields[4]->AsDateTime, Pacient->Fields->Fields[6]->AsInteger)) {
				Liber = false;
				ShowMessage("Data este ocupata.");
				Data_Edit->Date = Now();
				Ora_Edit->Time = StrToTime("8:00:00 AM");
				break;
			} else {
				Liber = true;
			}
			Pacient->Next();
		}

		if (Pacient->IsEmpty()) {
			Liber = true;
			H8 = true;
		} else {
			OreDeLucru->First();
			while (!OreDeLucru->Eof)  {
				if (StrToDateTime(Data_S) == OreDeLucru->Fields->Fields[0]->AsDateTime) {
					if (IncMinute(StrToTime(Ora_S), Durata) > OreDeLucru->Fields->Fields[4]->AsDateTime) {
						ShowMessage("Se depaseste norma de 8 ore.");
						Data_Edit->Date = Now();
						Ora_Edit->Time = StrToTime("8:00:00 AM");
						H8 = false;
					} else {
						H8 = true;
					}
				}
				OreDeLucru->Next();
			}
	   	}
   }

	if (Liber && H8 && Ora_8_20) {
		Pacient->Append();
		Pacient->Fields->Fields[1]->AsString = Nume;
		Pacient->Fields->Fields[2]->AsString = Prenume;
		Pacient->Fields->Fields[3]->AsString = Telefon;
		Pacient->Fields->Fields[4]->AsString = Data;
		Pacient->Fields->Fields[5]->AsString = Scop;
		Pacient->Fields->Fields[6]->AsInteger = Durata;
		Pacient->Fields->Fields[7]->AsFloat = Pret;
		Pacient->Post();
		Add_Form->Close();
	}
}

void __fastcall TAdd_Form::AnuleazaClick(TObject *Sender) {

	Add_Form->Close();
}

void __fastcall TAdd_Form::FormActivate(TObject *Sender) {
	 Nume_Edit->Text = "";
	Prenume_Edit->Text = "";
	Telefon_Edit->Text = "";
	Data_Edit->Date = Now();
	Ora_Edit->Time = StrToTime("8:00:00 AM");
	Scop_Edit->Text = "";
	Durata_Edit->Text = "";
	Pret_Edit->Text = "";
	OreDeLucru->Active = false;
	OreDeLucru->Active = true;
	Pacient->Active = false;
	Pacient->Active = true;
	Pacienti_Query->Active = false;
	Pacienti_Query->Active = true;
}

