object frmConecxao: TfrmConecxao
  Left = 0
  Top = 0
  Caption = 'frmConecxao'
  ClientHeight = 281
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
  object fdConecxao: TFDConnection
    Params.Strings = (
      'Database=Sakila'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    Left = 104
    Top = 88
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\mysql\Documents\Delphi_2_Blu2022\Exericicios_OOP_e_DBDe' +
      'lphi\Avan'#231'ado\Pedidos\libmysql.dll'
    Left = 200
    Top = 152
  end
end
