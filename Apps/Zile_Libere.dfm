object Days_Form: TDays_Form
  Left = 0
  Top = 0
  Caption = 'Zile Libere'
  ClientHeight = 500
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  DesignSize = (
    350
    500)
  TextHeight = 15
  object Titlu: TLabel
    Left = 0
    Top = 0
    Width = 350
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
    Left = 235
    Top = 40
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
  end
  object Anuleaza: TButton
    Left = 105
    Top = 40
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
  end
  object Durata_Edit: TEdit
    Left = 70
    Top = 0
    Width = 50
    Height = 23
    TabOrder = 2
  end
  object Lista: TListBox
    Left = 0
    Top = 30
    Width = 344
    Height = 420
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 15
    TabOrder = 3
    ExplicitWidth = 338
    ExplicitHeight = 411
  end
  object OreDeLucru: TADOTable
    Active = True
    Connection = FM.DB_Connection
    CursorType = ctStatic
    LockType = ltReadOnly
    TableDirect = True
    TableName = 'OREDELUCRU'
    Left = 65520
    Top = 65520
  end
  object Pacient: TADOTable
    Active = True
    Connection = FM.DB_Connection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'PACIENT_VIEW'
    Left = 65528
    Top = 65520
  end
end
