object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 149
  Width = 202
  object conn: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'HostName=localhost'
      'Database=bd_nupraju'
      'User_Name=root'
      'Password=123'
      'ConnectTimeout=60'
      'Port=3306')
    Left = 88
    Top = 24
  end
  object sqlMonitor: TSQLMonitor
    AutoSave = True
    FileName = 'C:\Nupraju\Auditoria\Auditoria.txt'
    Left = 88
    Top = 80
  end
end
