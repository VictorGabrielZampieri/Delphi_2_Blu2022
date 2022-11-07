object frmUnidadeMedidas: TfrmUnidadeMedidas
  Left = 0
  Top = 0
  Caption = 'Unidade de Medidas'
  ClientHeight = 316
  ClientWidth = 648
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
    Top = 96
    Width = 52
    Height = 13
    Caption = 'id_unidade'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 56
    Top = 144
    Width = 46
    Height = 13
    Caption = 'Descricao'
    FocusControl = DBEdit2
  end
  object DBNavigator1: TDBNavigator
    Left = 56
    Top = 24
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 224
    Width = 337
    Height = 84
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Width = 250
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 112
    Width = 134
    Height = 21
    DataField = 'id_unidade'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 160
    Width = 134
    Height = 21
    DataField = 'descricao'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 408
    Top = 96
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'id_unidade'
    Connection = dmPedidos.fdConexao
    TableName = 'sistema_compra.unidade_medida'
    Left = 504
    Top = 104
    object FDTable1id_unidade: TFDAutoIncField
      FieldName = 'id_unidade'
      Origin = 'id_unidade'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1descricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 95
    end
  end
end
