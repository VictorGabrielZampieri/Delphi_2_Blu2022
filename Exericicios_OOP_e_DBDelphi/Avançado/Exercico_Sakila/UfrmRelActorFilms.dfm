object frmRelActorFilm: TfrmRelActorFilm
  Left = 0
  Top = 0
  Caption = 'Relatorio - ActorFilm'
  ClientHeight = 258
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 56
    Top = 40
    Width = 249
    Height = 105
    Caption = 'Atores'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 21
      Width = 58
      Height = 13
      Caption = 'Ultimo nome'
    end
    object edtLastName: TEdit
      Left = 24
      Top = 40
      Width = 177
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 128
      Top = 67
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object QryAtor: TFDQuery
    Connection = frmConecxao.fdConecxao
    SQL.Strings = (
      
        'Select COUNT(*) Qnt, ACTOR.ACTOR_ID CODIGO, ACTOR.FIRST_NAME, AC' +
        'TOR.LAST_NAME NOME'
      'FROM ACTOR'
      'INNER JOIN FILM_ACTOR ON ACTOR.ACTOR_ID = FILM_ACTOR.ACTOR_ID'
      
        'WHERE (LAST_NAME LIKE :LAST_NAME) OR (COALESCE(:LAST_NAME, '#39#39') =' +
        ' '#39#39')'
      'GROUP BY  CODIGO, NOME')
    Left = 320
    Top = 120
    ParamData = <
      item
        Name = 'LAST_NAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QryAtor
    BCDToCurrency = False
    Left = 200
    Top = 152
  end
  object frxReport1: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44939.869655219900000000
    ReportOptions.LastChange = 44939.907347349540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 64
    Top = 184
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 28.346475000000000000
          Width = 287.244280000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relatorio do Atores')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 79.370130000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome Ator')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1Qnt: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 22.677180000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'Qnt'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Qnt"]')
        end
        object frxDBDataset1NOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 22.677180000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NOME"]')
        end
        object frxDBDataset1CODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CODIGO"]')
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = QryAtor
    Left = 352
    Top = 48
  end
end
