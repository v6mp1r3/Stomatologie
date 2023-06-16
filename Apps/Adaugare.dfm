object Add_Form: TAdd_Form
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Adaugare'
  ClientHeight = 491
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 15
  object New: TPanel
    Left = 0
    Top = 0
    Width = 394
    Height = 491
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 388
    ExplicitHeight = 482
    DesignSize = (
      394
      491)
    object Nume_Label: TLabel
      Left = 54
      Top = 70
      Width = 46
      Height = 20
      Alignment = taRightJustify
      Caption = 'Nume:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Telefon_Label: TLabel
      Left = 46
      Top = 160
      Width = 54
      Height = 20
      Alignment = taRightJustify
      Caption = 'Telefon:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Data_Label: TLabel
      Left = 64
      Top = 205
      Width = 36
      Height = 20
      Alignment = taRightJustify
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Scop_Label: TLabel
      Left = 63
      Top = 295
      Width = 37
      Height = 20
      Alignment = taRightJustify
      Caption = 'Scop:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Durata_Label: TLabel
      Left = 49
      Top = 340
      Width = 51
      Height = 20
      Alignment = taRightJustify
      Caption = 'Durata:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Pret_Label: TLabel
      Left = 68
      Top = 385
      Width = 32
      Height = 20
      Alignment = taRightJustify
      Caption = 'Pret:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Titlu: TLabel
      Left = 40
      Top = 25
      Width = 149
      Height = 23
      Alignment = taCenter
      Caption = 'Introduceti datele:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Prenume_Label: TLabel
      Left = 34
      Top = 114
      Width = 66
      Height = 20
      Alignment = taRightJustify
      Caption = 'Prenume:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Ora_Label: TLabel
      Left = 71
      Top = 250
      Width = 29
      Height = 20
      Alignment = taRightJustify
      Caption = 'Ora:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Adauga: TButton
      Left = 202
      Top = 441
      Width = 90
      Height = 27
      Anchors = [akRight, akBottom]
      Caption = 'Adauga'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = AdaugaClick
      ExplicitLeft = 196
      ExplicitTop = 432
    end
    object Anuleaza: TButton
      Left = 82
      Top = 441
      Width = 90
      Height = 27
      Anchors = [akRight, akBottom]
      Caption = 'Anulare'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = AnuleazaClick
      ExplicitLeft = 76
      ExplicitTop = 432
    end
    object Nume_Edit: TEdit
      Left = 130
      Top = 70
      Width = 150
      Height = 23
      TabOrder = 2
      TextHint = 'ex: Petrescu'
    end
    object Prenume_Edit: TEdit
      Left = 130
      Top = 115
      Width = 150
      Height = 23
      TabOrder = 3
      TextHint = 'ex: Maria'
    end
    object Scop_Edit: TEdit
      Left = 130
      Top = 295
      Width = 190
      Height = 23
      TabOrder = 4
      TextHint = 'ex: Caris'
    end
    object Telefon_Edit: TEdit
      Left = 130
      Top = 160
      Width = 150
      Height = 23
      TabOrder = 5
      TextHint = 'ex: 012345678'
    end
    object Durata_Edit: TEdit
      Left = 130
      Top = 340
      Width = 70
      Height = 23
      TabOrder = 6
      TextHint = 'ex: 180'
    end
    object Pret_Edit: TEdit
      Left = 130
      Top = 385
      Width = 70
      Height = 23
      TabOrder = 7
      TextHint = 'ex: 300'
    end
    object Data_Edit: TDateTimePicker
      Left = 130
      Top = 205
      Width = 150
      Height = 23
      Date = 45087.000000000000000000
      Time = 0.333333333335758700
      TabOrder = 8
    end
    object Ora_Edit: TTimePicker
      Left = 130
      Top = 245
      Width = 91
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 9
      Time = 0.333333333333333300
      TimeFormat = 'HH:MM'
    end
  end
  object Pacient: TADOTable
    Active = True
    Connection = FM.DB_Connection
    CursorType = ctStatic
    MasterSource = FM.Pacienti_Sourse
    TableDirect = True
    TableName = 'PACIENT'
    Left = 65520
    Top = 65520
  end
  object Pacienti_Query: TADOQuery
    Active = True
    Connection = FM.DB_Connection
    CursorType = ctStatic
    DataSource = FM.Pacienti_Sourse
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Pacient')
    Left = 65528
    Top = 65528
  end
  object OreDeLucru: TADOTable
    Active = True
    Connection = FM.DB_Connection
    CursorType = ctStatic
    LockType = ltReadOnly
    TableDirect = True
    TableName = 'OREDELUCRU'
    Left = 65528
    Top = 65528
  end
end
