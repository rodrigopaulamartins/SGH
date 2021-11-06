object DM: TDM
  OldCreateOrder = False
  Height = 231
  Width = 263
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=dbabm'
      'User_Name=root'
      'Password=rpmt123'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 192
    Top = 56
  end
  object Conexao: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    HostName = 'localhost'
    Port = 3306
    Database = 'dbabm'
    User = 'root'
    Password = 'rpmt123'
    Protocol = 'mysql-5'
    Left = 56
    Top = 40
  end
end
