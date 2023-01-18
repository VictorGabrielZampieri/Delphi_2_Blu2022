object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 413
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
    Left = 224
    Top = 13
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label2: TLabel
    Left = 377
    Top = 13
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Memo1: TMemo
    Left = 224
    Top = 72
    Width = 274
    Height = 305
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object edtCpf: TEdit
    Left = 224
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edtCpf'
  end
  object edtNome: TEdit
    Left = 377
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edtNome'
  end
  object btnAdd: TButton
    Left = 32
    Top = 42
    Width = 89
    Height = 25
    Caption = 'Add'
    TabOrder = 3
    OnClick = btnAddClick
  end
  object btnTryGetValue: TButton
    Left = 32
    Top = 73
    Width = 89
    Height = 25
    Caption = 'TryGetValue'
    TabOrder = 4
    OnClick = btnTryGetValueClick
  end
  object btnRemove: TButton
    Left = 32
    Top = 104
    Width = 89
    Height = 25
    Caption = 'Remove'
    TabOrder = 5
    OnClick = btnRemoveClick
  end
  object btnTrimExcess: TButton
    Left = 32
    Top = 135
    Width = 89
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 6
    OnClick = btnTrimExcessClick
  end
  object btnContainsKey: TButton
    Left = 32
    Top = 166
    Width = 89
    Height = 25
    Caption = 'ContainsKey'
    TabOrder = 7
    OnClick = btnContainsKeyClick
  end
  object btnAddOrSetValue: TButton
    Left = 32
    Top = 197
    Width = 89
    Height = 25
    Caption = 'AddOrSetValue'
    TabOrder = 8
    OnClick = btnAddOrSetValueClick
  end
  object btnListaKey: TButton
    Left = 32
    Top = 228
    Width = 89
    Height = 25
    Caption = 'Lista Key'
    TabOrder = 9
    OnClick = btnListaKeyClick
  end
  object btnClear: TButton
    Left = 32
    Top = 290
    Width = 89
    Height = 25
    Caption = 'Clear'
    TabOrder = 10
    OnClick = btnClearClick
  end
  object btnListaValue: TButton
    Left = 32
    Top = 259
    Width = 89
    Height = 25
    Caption = 'Lista Value'
    TabOrder = 11
    OnClick = btnListaValueClick
  end
  object btnOnKeyNotify: TButton
    Left = 32
    Top = 321
    Width = 89
    Height = 25
    Caption = 'OnKeyNotify'
    TabOrder = 12
    OnClick = btnOnKeyNotifyClick
  end
  object btnOnValueNotify: TButton
    Left = 32
    Top = 352
    Width = 89
    Height = 25
    Caption = 'OnValueNotify'
    TabOrder = 13
    OnClick = btnOnValueNotifyClick
  end
end
