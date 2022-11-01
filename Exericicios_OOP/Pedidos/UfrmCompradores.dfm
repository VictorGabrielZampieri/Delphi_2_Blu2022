object frmCompredores: TfrmCompredores
  Left = 0
  Top = 0
  Caption = 'Compradores'
  ClientHeight = 382
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 80
    Width = 65
    Height = 13
    Caption = 'id_comprador'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 32
    Top = 120
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 32
    Top = 160
    Width = 27
    Height = 13
    Caption = 'cargo'
    FocusControl = DBEdit3
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 256
    Width = 441
    Height = 89
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_comprador'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cargo'
        Width = 175
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 24
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 96
    Width = 134
    Height = 21
    DataField = 'id_comprador'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 139
    Width = 134
    Height = 21
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 32
    Top = 179
    Width = 134
    Height = 21
    DataField = 'cargo'
    DataSource = DataSource1
    TabOrder = 4
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'id_comprador'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.comprador'
    Left = 424
    Top = 168
    object FDTable1id_comprador: TFDAutoIncField
      FieldName = 'id_comprador'
      Origin = 'id_comprador'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTable1nome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 95
    end
    object FDTable1cargo: TStringField
      FieldName = 'cargo'
      Origin = 'cargo'
      Required = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 368
    Top = 96
  end
end
