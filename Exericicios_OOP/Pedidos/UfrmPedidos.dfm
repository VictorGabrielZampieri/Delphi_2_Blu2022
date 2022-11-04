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
    Left = 172
    Top = 312
    Width = 159
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
    DataSource = dtsPedidoCompra
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 108
    Top = 77
    Width = 61
    Height = 21
    DataField = 'id_pedido'
    DataSource = dtsPedidoCompra
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 236
    Top = 77
    Width = 61
    Height = 21
    DataField = 'numero'
    DataSource = dtsPedidoCompra
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 396
    Top = 77
    Width = 61
    Height = 21
    DataField = 'data_pedido'
    DataSource = dtsPedidoCompra
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 56
    Top = 131
    Width = 401
    Height = 21
    DataField = 'idcomprador'
    DataSource = dtsPedidoCompra
    KeyField = 'id_comprador'
    ListField = 'nome'
    ListSource = dtsLookupComprador
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 56
    Top = 187
    Width = 401
    Height = 21
    DataField = 'idfornecedor'
    DataSource = dtsPedidoCompra
    KeyField = 'id_fornecedor'
    ListField = 'nome'
    ListSource = dtsLookupFornecedor
    TabOrder = 5
  end
  object DBNavigator2: TDBNavigator
    Left = 495
    Top = 391
    Width = 34
    Height = 130
    DataSource = dtsLookupCompra
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Kind = dbnVertical
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 376
    Width = 449
    Height = 145
    DataSource = dtsLookupCompra
    TabOrder = 7
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
  object dtsPedidoCompra: TDataSource
    DataSet = Pedido_compra
    Left = 496
    Top = 32
  end
  object Pedido_compra: TFDTable
    IndexFieldNames = 'id_pedido'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.pedido_compra'
    Left = 640
    Top = 32
    object Pedido_compraid_pedido: TFDAutoIncField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Pedido_compranumero: TLongWordField
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
    end
    object Pedido_compradata_pedido: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_pedido'
      Origin = 'data_pedido'
    end
    object Pedido_compraidcomprador: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idcomprador'
      Origin = 'idcomprador'
    end
    object Pedido_compraidfornecedor: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idfornecedor'
      Origin = 'idfornecedor'
    end
  end
  object dtsLookupComprador: TDataSource
    DataSet = FDTableLookupComprador
    Left = 496
    Top = 184
  end
  object FDTableLookupComprador: TFDTable
    IndexFieldNames = 'id_comprador'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.comprador'
    Left = 640
    Top = 184
  end
  object dtsLookupFornecedor: TDataSource
    DataSet = FDTableLookupFornecedor
    Left = 488
    Top = 280
  end
  object FDTableLookupFornecedor: TFDTable
    IndexFieldNames = 'id_fornecedor'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.fornecedor'
    Left = 640
    Top = 280
  end
  object dtsLookupCompra: TDataSource
    DataSet = Item_compra
    Left = 568
    Top = 416
  end
  object Item_compra: TFDTable
    BeforePost = Item_compraBeforePost
    IndexFieldNames = 'id_item'
    MasterSource = dtsPedidoCompra
    MasterFields = 'id_pedido'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.item_compra'
    Left = 672
    Top = 408
    object Item_compraid_item: TFDAutoIncField
      FieldName = 'id_item'
      Origin = 'id_item'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Item_compraquantidade: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object Item_compraidpedido_compra: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idpedido_compra'
      Origin = 'idpedido_compra'
    end
    object Item_compraidproduto: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object Item_compralookupProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'lookupProduto'
      LookupDataSet = LookupProdutos
      LookupKeyFields = 'id_produto'
      LookupResultField = 'descricao'
      KeyFields = 'idproduto'
      Size = 250
      Lookup = True
    end
  end
  object LookupProdutos: TFDTable
    IndexFieldNames = 'id_produto'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.produto'
    Left = 648
    Top = 488
    object LookupProdutosdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 95
    end
    object LookupProdutosid_produto: TFDAutoIncField
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object LookupProdutosidunidade_medida: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idunidade_medida'
      Origin = 'idunidade_medida'
    end
  end
end
