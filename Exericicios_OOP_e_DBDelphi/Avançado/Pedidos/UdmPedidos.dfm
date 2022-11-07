object dmPedidos: TdmPedidos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 308
  Width = 357
  object fdConexao: TFDConnection
    Params.Strings = (
      'Database=sistema_compra'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 88
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\vgzampieri\Documents\Delphi_2_Blu2022\Exericicios_OOP\P' +
      'edidos\libmysql.dll'
    Left = 120
    Top = 176
  end
end
