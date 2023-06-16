object Delete_Form: TDelete_Form
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Stergere'
  ClientHeight = 221
  ClientWidth = 494
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
    Width = 494
    Height = 221
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 488
    ExplicitHeight = 212
    DesignSize = (
      494
      221)
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
    object Titlu: TLabel
      Left = 40
      Top = 20
      Width = 157
      Height = 23
      Alignment = taCenter
      Caption = 'Cauta dupa nume...'
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
    object Sterge: TButton
      Left = 320
      Top = 171
      Width = 90
      Height = 27
      Anchors = [akRight, akBottom]
      Caption = 'Sterge'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = StergeClick
      ExplicitLeft = 314
      ExplicitTop = 162
    end
    object Anuleaza: TButton
      Left = 200
      Top = 171
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
      ExplicitLeft = 194
      ExplicitTop = 162
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
  end
  object Pacient: TADOTable
    Active = True
    Connection = FM.DB_Connection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'PACIENT'
    Left = 65504
    Top = 65512
  end
  object Pacienti_Query: TADOQuery
    Active = True
    Connection = FM.DB_Connection
    CursorType = ctStatic
    DataSource = FM.Pacienti_Sourse
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Pacient')
    Left = 65512
    Top = 65520
  end
end
