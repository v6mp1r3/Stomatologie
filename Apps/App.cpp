//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
//---------------------------------------------------------------------------
USEFORM("Programare.cpp", FM);
USEFORM("Stergere.cpp", Delete_Form);
USEFORM("Zile_Libere.cpp", Days_Form);
USEFORM("Modificare.cpp", Modify_Form);
USEFORM("Adaugare.cpp", Add_Form);
USEFORM("Raport.cpp", Raport_Form);
//---------------------------------------------------------------------------
int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
	try
	{
		Application->Initialize();
		Application->MainFormOnTaskBar = true;
		Application->CreateForm(__classid(TFM), &FM);
		Application->CreateForm(__classid(TAdd_Form), &Add_Form);
		Application->CreateForm(__classid(TDelete_Form), &Delete_Form);
		Application->CreateForm(__classid(TModify_Form), &Modify_Form);
		Application->CreateForm(__classid(TDays_Form), &Days_Form);
		Application->CreateForm(__classid(TDays_Form), &Days_Form);
		Application->CreateForm(__classid(TRaport_Form), &Raport_Form);
		Application->Run();
	}
	catch (Exception &exception)
	{
		Application->ShowException(&exception);
	}
	catch (...)
	{
		try
		{
			throw Exception("");
		}
		catch (Exception &exception)
		{
			Application->ShowException(&exception);
		}
	}
	return 0;
}
//---------------------------------------------------------------------------
