object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Consumindo Meu Primeiro api'
  ClientHeight = 187
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
  object lbl_Resultado: TLabel
    Left = 80
    Top = 136
    Width = 80
    Height = 18
    Caption = 'Resultado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnPingPong: TButton
    Left = 184
    Top = 48
    Width = 75
    Height = 25
    Caption = 'PingPong'
    TabOrder = 0
    OnClick = btnPingPongClick
  end
  object btnHello_World: TButton
    Left = 280
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Hello World'
    TabOrder = 1
    OnClick = btnHello_WorldClick
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://localhost:9090/ping'
    Params = <>
    Left = 16
    Top = 24
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 16
    Top = 80
  end
  object RESTResponse1: TRESTResponse
    Left = 16
    Top = 136
  end
end
