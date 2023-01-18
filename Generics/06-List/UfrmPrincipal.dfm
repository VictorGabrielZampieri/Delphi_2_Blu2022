object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 324
  ClientWidth = 547
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
  object Memo1: TMemo
    Left = 264
    Top = 40
    Width = 257
    Height = 241
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 24
    Top = 40
    Width = 161
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object btnAdd: TButton
    Left = 24
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 2
    OnClick = btnAddClick
  end
  object btnRemove: TButton
    Left = 24
    Top = 119
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 3
    OnClick = btnRemoveClick
  end
  object btnListar: TButton
    Left = 24
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 4
    OnClick = btnListarClick
  end
  object btnCapacity: TButton
    Left = 24
    Top = 181
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 5
    OnClick = btnCapacityClick
  end
  object btnCount: TButton
    Left = 24
    Top = 212
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 6
    OnClick = btnCountClick
  end
  object btnNotify: TButton
    Left = 24
    Top = 243
    Width = 75
    Height = 25
    Caption = 'OnNotify'
    TabOrder = 7
    OnClick = btnNotifyClick
  end
end
