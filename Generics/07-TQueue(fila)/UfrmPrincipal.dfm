object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 228
  ClientWidth = 499
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
    Left = 216
    Top = 24
    Width = 265
    Height = 192
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object btnEnqueue: TButton
    Left = 24
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Enqueue'
    TabOrder = 2
    OnClick = btnEnqueueClick
  end
  object btnDequeue: TButton
    Left = 24
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Dequeue'
    TabOrder = 3
    OnClick = btnDequeueClick
  end
  object btnExtract: TButton
    Left = 24
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Extract'
    TabOrder = 4
    OnClick = btnExtractClick
  end
  object btnPeek: TButton
    Left = 24
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Peek'
    TabOrder = 5
    OnClick = btnPeekClick
  end
  object btnTrimExcess: TButton
    Left = 24
    Top = 143
    Width = 75
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 6
    OnClick = btnTrimExcessClick
  end
  object btnCount: TButton
    Left = 24
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 7
    OnClick = btnCountClick
  end
  object btnCapacity: TButton
    Left = 24
    Top = 191
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 8
    OnClick = btnCapacityClick
  end
end
