object frmProduto: TfrmProduto
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 422
  ClientWidth = 642
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
    Left = 56
    Top = 80
    Width = 52
    Height = 13
    Caption = 'id_produto'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 56
    Top = 136
    Width = 45
    Height = 13
    Caption = 'descricao'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 56
    Top = 208
    Width = 79
    Height = 13
    Caption = 'Unidade_medida'
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 312
    Width = 320
    Height = 97
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 56
    Top = 24
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 96
    Width = 134
    Height = 21
    DataField = 'id_produto'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 152
    Width = 150
    Height = 21
    DataField = 'descricao'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 400
    Top = 56
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'id_produto'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.produto'
    Left = 488
    Top = 104
    object FDTable1descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 95
    end
    object FDTable1id_produto: TFDAutoIncField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1idunidade_medida: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idunidade_medida'
      Origin = 'idunidade_medida'
    end
  end
end
