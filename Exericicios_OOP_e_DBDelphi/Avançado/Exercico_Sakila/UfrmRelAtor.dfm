object frmRelAtor: TfrmRelAtor
  Left = 0
  Top = 0
  Caption = 'frmRelAtor'
  ClientHeight = 252
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 64
    Top = 32
    Width = 265
    Height = 121
    Caption = 'Atores'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 21
      Width = 54
      Height = 13
      Caption = 'Sobrenome'
    end
    object edtNome: TEdit
      Left = 24
      Top = 40
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object btnVisualizar: TButton
      Left = 174
      Top = 77
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 1
    end
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = frmConecxao.fdConecxao
    SQL.Strings = (
      
        'SELECT ACTOR.ACTOR_ID, ACTOR.FIRST_NAME, ACTOR.LAST_NAME FROM AC' +
        'TOR WHERE ( LAST_NAME LIKE :LAST_NAME) OR (COALESCE(:LAST_NAME, ' +
        #39#39') = '#39#39')')
    Left = 256
    Top = 184
    ParamData = <
      item
        Name = 'LAST_NAME'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = FDQuery1
    BCDToCurrency = False
    Left = 168
    Top = 192
  end
  object frxReport1: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44938.908414571800000000
    ReportOptions.LastChange = 44938.913619525460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
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
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 11.338590000000000000
          Width = 302.362400000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio dos Atores')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'ID')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Primeiro Nome')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Ultimos Nome')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ACTOR_ID: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ACTOR_ID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ACTOR_ID"]')
        end
        object frxDBDataset1FIRST_NAME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 15.118120000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'FIRST_NAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."FIRST_NAME"]')
        end
        object frxDBDataset1LAST_NAME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 313.700990000000000000
          Top = 15.118120000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'LAST_NAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."LAST_NAME"]')
        end
      end
    end
  end
end
