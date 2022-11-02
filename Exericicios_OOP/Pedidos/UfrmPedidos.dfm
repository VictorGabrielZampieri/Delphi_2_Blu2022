object frmPedidos: TfrmPedidos
  Left = 0
  Top = 0
  Caption = 'Pedidos'
  ClientHeight = 556
  ClientWidth = 766
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
    Width = 46
    Height = 13
    Caption = 'id_pedido'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 186
    Top = 80
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 320
    Top = 80
    Width = 73
    Height = 13
    Caption = 'Data do Pedido'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 56
    Top = 112
    Width = 53
    Height = 13
    Caption = 'Comprador'
  end
  object Fornecedor: TLabel
    Left = 56
    Top = 168
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object Label5: TLabel
    Left = 252
    Top = 288
    Width = 173
    Height = 24
    Caption = 'Itens do Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 32
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 108
    Top = 77
    Width = 61
    Height = 21
    DataField = 'id_pedido'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 236
    Top = 77
    Width = 61
    Height = 21
    DataField = 'numero'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 396
    Top = 77
    Width = 61
    Height = 21
    DataField = 'data_pedido'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 56
    Top = 131
    Width = 401
    Height = 21
    DataField = 'idcomprador'
    DataSource = DataSource1
    KeyField = 'id_comprador'
    ListField = 'nome'
    ListSource = DataSource2
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 56
    Top = 187
    Width = 401
    Height = 21
    DataField = 'idfornecedor'
    DataSource = DataSource1
    KeyField = 'id_fornecedor'
    ListField = 'nome'
    ListSource = DataSource3
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 360
    Width = 449
    Height = 145
    DataSource = DataSource4
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idproduto'
        Title.Caption = 'id_produto'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lookupProduto'
        Title.Caption = 'Descri'#231'ao Produto'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Title.Caption = 'Quantidade'
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 511
    Top = 360
    Width = 34
    Height = 145
    DataSource = DataSource4
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Kind = dbnVertical
    TabOrder = 7
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 552
    Top = 48
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'id_pedido'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.pedido_compra'
    Left = 616
    Top = 48
    object FDTable1id_pedido: TFDAutoIncField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1numero: TLongWordField
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
    end
    object FDTable1data_pedido: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_pedido'
      Origin = 'data_pedido'
    end
    object FDTable1idcomprador: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idcomprador'
      Origin = 'idcomprador'
    end
    object FDTable1idfornecedor: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idfornecedor'
      Origin = 'idfornecedor'
    end
  end
  object DataSource2: TDataSource
    DataSet = FDTableLookupComprador
    Left = 536
    Top = 120
  end
  object FDTableLookupComprador: TFDTable
    IndexFieldNames = 'id_comprador'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.comprador'
    Left = 640
    Top = 120
  end
  object DataSource3: TDataSource
    DataSet = FDTableLookupFornecedor
    Left = 512
    Top = 200
  end
  object FDTableLookupFornecedor: TFDTable
    IndexFieldNames = 'id_fornecedor'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.fornecedor'
    Left = 632
    Top = 200
  end
  object DataSource4: TDataSource
    DataSet = FDTable2
    Left = 504
    Top = 272
  end
  object FDTable2: TFDTable
    BeforePost = FDTable2BeforePost
    IndexFieldNames = 'id_item'
    MasterSource = DataSource1
    MasterFields = 'id_pedido'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.item_compra'
    Left = 616
    Top = 280
    object FDTable2id_item: TFDAutoIncField
      FieldName = 'id_item'
      Origin = 'id_item'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable2quantidade: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object FDTable2idpedido_compra: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idpedido_compra'
      Origin = 'idpedido_compra'
    end
    object FDTable2idproduto: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object FDTable2lookupProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'lookupProduto'
      LookupDataSet = FDTable3
      LookupKeyFields = 'id_produto'
      LookupResultField = 'descricao'
      KeyFields = 'idproduto'
      Size = 250
      Lookup = True
    end
  end
  object FDTable3: TFDTable
    IndexFieldNames = 'id_produto'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.produto'
    Left = 616
    Top = 360
    object FDTable3descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 95
    end
    object FDTable3id_produto: TFDAutoIncField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable3idunidade_medida: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idunidade_medida'
      Origin = 'idunidade_medida'
    end
  end
end
