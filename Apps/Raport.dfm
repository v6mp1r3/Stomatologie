object Raport_Form: TRaport_Form
  Left = 0
  Top = 0
  Caption = 'Raport'
  ClientHeight = 491
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  DesignSize = (
    594
    491)
  TextHeight = 15
  object Titlu: TLabel
    Left = 0
    Top = 0
    Width = 594
    Height = 20
    Align = alTop
    Caption = 'Lista locurilor libere pentru programre:'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 267
  end
  object Afisare: TButton
    Left = 462
    Top = 65
    Width = 90
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Afisare'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = AfisareClick
    ExplicitLeft = 456
  end
  object Anuleaza: TButton
    Left = 352
    Top = 65
    Width = 90
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Anulare'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = AnuleazaClick
    ExplicitLeft = 346
  end
  object Read: TPanel
    Left = 0
    Top = 20
    Width = 620
    Height = 40
    TabOrder = 2
    object Inceput: TLabel
      Left = 38
      Top = 10
      Width = 42
      Height = 17
      Alignment = taRightJustify
      Caption = 'De pe: '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Sfarsit: TLabel
      Left = 264
      Top = 10
      Width = 56
      Height = 17
      Alignment = taRightJustify
      Caption = 'Pana pe: '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Sfarsit_Date: TDateTimePicker
      Left = 330
      Top = 10
      Width = 150
      Height = 23
      Date = 45092.000000000000000000
      Time = 0.833333333335758700
      TabOrder = 0
    end
    object Inceput_Date: TDateTimePicker
      Left = 90
      Top = 10
      Width = 150
      Height = 23
      Date = 45092.000000000000000000
      Time = 0.333333333335758700
      TabOrder = 1
    end
  end
  object Raport_Table: TDBGrid
    Left = 4
    Top = 26
    Width = 582
    Height = 421
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdLeftToRight
    BorderStyle = bsNone
    DataSource = Raport_Sourse
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ORA_INCEPUT'
        ImeName = 'Select * From Pacient_View'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ORA_SFARSIT'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ORE_SUMAR'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NR_PACIENTTI'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUMA'
        Width = 100
        Visible = True
      end>
  end
  object Raport: TADOTable
    Active = True
    Connection = FM.DB_Connection
    CursorType = ctStatic
    LockType = ltReadOnly
    TableDirect = True
    TableName = 'RAPORT'
    Left = 65520
    Top = 65520
  end
  object Raport_Sourse: TDataSource
    DataSet = Raport
    Left = 65512
    Top = 65512
  end
end
