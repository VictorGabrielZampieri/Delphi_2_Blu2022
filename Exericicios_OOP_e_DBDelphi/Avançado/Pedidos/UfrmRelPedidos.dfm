object frmRelPedidos: TfrmRelPedidos
  Left = 0
  Top = 0
  Caption = 'Relator - Pedidos'
  ClientHeight = 373
  ClientWidth = 598
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
  object GroupBox1: TGroupBox
    Left = 40
    Top = 40
    Width = 321
    Height = 161
    Caption = 'Filtros'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 53
      Height = 13
      Caption = 'Comprador'
    end
    object Fornecedor: TLabel
      Left = 16
      Top = 70
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
    end
    object btnVisualizar: TButton
      Left = 232
      Top = 133
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 0
      OnClick = btnVisualizarClick
    end
    object btnExportar: TButton
      Left = 151
      Top = 133
      Width = 75
      Height = 25
      Caption = 'Exportar'
      TabOrder = 1
      OnClick = btnExportarClick
    end
    object DBLookupComprador: TDBLookupComboBox
      Left = 16
      Top = 43
      Width = 210
      Height = 21
      KeyField = 'id_comprador'
      ListField = 'nome'
      ListSource = dtsLookupComprador
      TabOrder = 2
    end
    object DBLookupFornecedor: TDBLookupComboBox
      Left = 16
      Top = 86
      Width = 210
      Height = 21
      KeyField = 'id_fornecedor'
      ListField = 'nome'
      ListSource = dtslookupFornecedor
      TabOrder = 3
    end
  end
  object dtsLookupComprador: TDataSource
    DataSet = LookupComprador
    Left = 400
    Top = 32
  end
  object dtslookupFornecedor: TDataSource
    DataSet = LookupFornecedor
    Left = 392
    Top = 128
  end
  object LookupComprador: TFDTable
    IndexFieldNames = 'id_comprador'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.comprador'
    Left = 504
    Top = 24
  end
  object LookupFornecedor: TFDTable
    IndexFieldNames = 'id_fornecedor'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.fornecedor'
    Left = 504
    Top = 136
  end
  object dtsPedido: TDataSource
    DataSet = QryPedido
    Left = 312
    Top = 240
  end
  object QryPedido: TFDQuery
    Active = True
    Connection = dmPedidos.fdConexao
    SQL.Strings = (
      
        'SELECT PEDIDO_COMPRA.ID_PEDIDO, PEDIDO_COMPRA.NUMERO, PEDIDO_COM' +
        'PRA.DATA_PEDIDO,'
      
        'COMPRADOR.NOME COMPRADOR, COMPRADOR.CARGO, FORNECEDOR.NOME FORNE' +
        'CEDOR,'
      'FORNECEDOR.CNPJ'
      'FROM PEDIDO_COMPRA'
      
        'LEFT JOIN COMPRADOR ON PEDIDO_COMPRA.IDCOMPRADOR = COMPRADOR.ID_' +
        'COMPRADOR'
      
        'LEFT JOIN FORNECEDOR ON PEDIDO_COMPRA.IDFORNECEDOR = FORNECEDOR.' +
        'ID_FORNECEDOR'
      
        'WHERE (IDCOMPRADOR = :IDCOMPRADOR OR COALESCE(:IDCOMPRADOR, 0) =' +
        ' 0)'
      
        'AND (IDFORNECEDOR = :IDFORNECEDOR OR COALESCE(:IDFORNECEDOR, 0) ' +
        '= 0)')
    Left = 240
    Top = 240
    ParamData = <
      item
        Name = 'IDCOMPRADOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDFORNECEDOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QryPedido
    BCDToCurrency = False
    Left = 136
    Top = 240
  end
  object frxReport1: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44938.856714490700000000
    ReportOptions.LastChange = 44938.896938402780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 256
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 20.787415000000000000
          Width = 234.330860000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio Pedidos')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 45.354360000000000000
        ParentFont = False
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Comprador')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1NUMERO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NUMERO"]')
        end
        object frxDBDataset1DATA_PEDIDO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 147.401670000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_PEDIDO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DATA_PEDIDO"]')
        end
        object frxDBDataset1COMPRADOR: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 11.338590000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'COMPRADOR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COMPRADOR"]')
        end
        object frxDBDataset1FORNECEDOR: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 11.338590000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'FORNECEDOR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."FORNECEDOR"]')
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 287.244280000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Id. Produto')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descricao')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2IDPRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'IDPRODUTO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."IDPRODUTO"]')
        end
        object frxDBDataset2PRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'PRODUTO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."PRODUTO"]')
        end
        object frxDBDataset2QUANTIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."QUANTIDADE"]')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 22.677180000000000000
          Width = 638.740570000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Line2: TfrxLineView
        AllowVectorExport = True
        Left = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 650.079160000000000000
        Color = clBlack
        Frame.Typ = []
        Diagonal = True
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 432
    Top = 256
  end
  object QryItemCompra: TFDQuery
    Active = True
    IndexFieldNames = 'IDPEDIDO_COMPRA'
    MasterSource = dtsPedido
    MasterFields = 'ID_PEDIDO'
    Connection = dmPedidos.fdConexao
    SQL.Strings = (
      
        'SELECT ITEM_COMPRA.IDPEDIDO_COMPRA, ITEM_COMPRA.IDPRODUTO, PRODU' +
        'TO.DESCRICAO PRODUTO,'
      'ITEM_COMPRA.QUANTIDADE'
      'FROM ITEM_COMPRA'
      'LEFT JOIN PRODUTO ON PRODUTO.ID_PRODUTO = ITEM_COMPRA.IDPRODUTO')
    Left = 256
    Top = 320
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = QryItemCompra
    BCDToCurrency = False
    Left = 160
    Top = 320
  end
end
