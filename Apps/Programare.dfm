object FM: TFM
  Left = 0
  Top = 0
  Width = 1112
  Height = 738
  AutoScroll = True
  Caption = 'Program'
  Color = clMenuBar
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Visible = True
  OnKeyDown = FormKeyDown
  DesignSize = (
    1094
    691)
  TextHeight = 15
  object Program_Label: TLabel
    Left = 280
    Top = 40
    Width = 137
    Height = 23
    Caption = 'Program de lucru:'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 544
    Top = 360
    Width = 126
    Height = 22
    Transparent = False
  end
  object Zile: TPanel
    Left = 0
    Top = 0
    Width = 250
    Height = 691
    Align = alLeft
    TabOrder = 0
    object Zile_Label: TLabel
      Left = 62
      Top = 20
      Width = 126
      Height = 23
      Alignment = taCenter
      Caption = 'Zile programate:'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Zile_Grid: TDBGrid
      AlignWithMargins = True
      Left = 20
      Top = 20
      Width = 200
      Height = 719
      BorderStyle = bsNone
      DataSource = Zile_Sourse
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object Pacienti: TDBGrid
    Left = 264
    Top = 70
    Width = 868
    Height = 660
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdLeftToRight
    BorderStyle = bsNone
    DataSource = Pacienti_View_Sourse
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NUME'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRENUME'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFON'
        Width = 100
        Visible = True
      end
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
        FieldName = 'SCOP'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRET'
        Width = 60
        Visible = True
      end>
  end
  object Meniu: TPanel
    Left = 250
    Top = 0
    Width = 889
    Height = 30
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    object Add: TButton
      AlignWithMargins = True
      Left = 5
      Top = 0
      Width = 100
      Height = 30
      Caption = '+ Adauga'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = AddClick
    end
    object Delete: TButton
      AlignWithMargins = True
      Left = 110
      Top = 0
      Width = 100
      Height = 30
      Caption = '- Sterge'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = DeleteClick
    end
    object Refresh: TButton
      Left = 535
      Top = 0
      Width = 70
      Height = 28
      BiDiMode = bdRightToLeft
      Caption = 'Refresh'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnClick = RefreshClick
    end
    object Modifica: TButton
      AlignWithMargins = True
      Left = 215
      Top = -1
      Width = 100
      Height = 30
      Caption = '* Modifica'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = ModificaClick
    end
    object Zile_Libere: TButton
      AlignWithMargins = True
      Left = 320
      Top = -1
      Width = 100
      Height = 30
      Caption = '/ Zile Libere'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Zile_LibereClick
    end
    object Raport: TButton
      AlignWithMargins = True
      Left = 425
      Top = -1
      Width = 100
      Height = 30
      Caption = '^ Raport'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = RaportClick
    end
  end
  object DB_Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=OraOLEDB.Oracle.1;Password=test;Persist Security Info=T' +
      'rue;User ID=test;Data Source=clouddev'
    ConnectOptions = coAsyncConnect
    Provider = 'OraOLEDB.Oracle.1'
    Left = 65528
    Top = 65528
  end
  object Zile_Query: TADOQuery
    Active = True
    Connection = DB_Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCT TO_CHAR(Data, '#39'YYYY-MM-DD'#39') AS Data FROM Pacient' +
        ' ORDER BY Data')
    Left = 65528
    Top = 65528
  end
  object Zile_Sourse: TDataSource
    DataSet = Zile_Query
    Left = 65512
    Top = 65512
  end
  object Pacienti_Sourse: TDataSource
    DataSet = Pacienti_Query
    Left = 65520
    Top = 65528
  end
  object Pacienti_Query: TADOQuery
    Active = True
    Connection = DB_Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Pacient')
    Left = 65528
    Top = 65528
  end
  object Pacient: TADOTable
    Active = True
    Connection = DB_Connection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'PACIENT'
    Left = 65520
    Top = 65520
  end
  object Pacienti_View_Query: TADOQuery
    Active = True
    Connection = DB_Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Pacient_View ORDER BY Data, Ora_Inceput')
    Left = 65528
    Top = 65528
  end
  object Pacienti_View_Sourse: TDataSource
    DataSet = Pacienti_View_Query
    Left = 65528
  end
  object OreDeLucru: TADOTable
    Active = True
    Connection = DB_Connection
    CursorType = ctStatic
    LockType = ltReadOnly
    TableDirect = True
    TableName = 'OREDELUCRU'
    Left = 65520
    Top = 65520
  end
  object Raport_Sourse: TDataSource
    Top = 8
  end
end
