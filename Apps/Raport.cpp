﻿#include <vcl.h>
#pragma hdrstop

#include "Raport.h"
#include "Programare.h"
#include <DateUtils.hpp>

#pragma package(smart_init)
#pragma resource "*.dfm"

__fastcall TRaport_Form::TRaport_Form(TComponent* Owner)
	: TForm(Owner) {
}

void __fastcall TRaport_Form::FormActivate(TObject *Sender) {
	Titlu->Caption = "Introduceti intervalul: ";
	Read->Visible = true;
	Inceput_Date->Date = Now();
	Sfarsit_Date->Date = Now();
	Raport_Form->ClientHeight = 120;
	Raport_Table->Visible = false;
	Afisare->Visible = true;
	Anuleaza->Top = 80;
	Anuleaza->Left = 470;
	Afisare->Top = 80;
	Afisare->Left = 600;
	Raport->Active = false;
	Raport->Active = true;
}

void __fastcall TRaport_Form::AnuleazaClick(TObject *Sender) {
	Raport_Form->Close();
}

void __fastcall TRaport_Form::AfisareClick(TObject *Sender) {
    TDateTime Data_Inceput = Inceput_Date->DateTime;
    TDateTime Data_Sfarsit = Sfarsit_Date->DateTime;
    Raport_Form->ClientHeight = 500;
    Titlu->Caption = "Lista locurilor libere pentru programare:";
    Afisare->Visible = false;
    Anuleaza->Top = 460;
    Anuleaza->Left = 600;
    Read->Visible = false;
	Raport_Table->Visible = true;

    Raport->Sort = "DATA";
    if (Data_Inceput <= Data_Sfarsit) {
        Raport_Table->DataSource->DataSet->Filter =
            "DATA >= #" + FormatDateTime("mm/dd/yyyy", Data_Inceput) + "# AND " +
            "DATA <= #" + FormatDateTime("mm/dd/yyyy", Data_Sfarsit) + "#";
		Raport_Table->DataSource->DataSet->Filtered = true;
        Raport_Table->DataSource->DataSet->First();
    } else {
		ShowMessage("Prima dată trebuie să fie mai mică sau egală");
		FormActivate(Raport_Form);
	}


}


