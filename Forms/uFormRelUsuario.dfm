object FormRelUsuario: TFormRelUsuario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Imprimir Relat'#243'rio de Usu'#225'rios'
  ClientHeight = 301
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 64
    Top = 112
    Width = 193
    Height = 73
    Brush.Color = 10549345
  end
  object BitBtn1: TBitBtn
    Left = 88
    Top = 8
    Width = 153
    Height = 41
    Caption = 'Visualizar'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object qryUser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM usuario')
    SQLConnection = DM.conn
    Left = 24
    Top = 8
    object qryUseremp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object qryUserusr_codigo: TIntegerField
      FieldName = 'usr_codigo'
      Required = True
    end
    object qryUserusr_nome: TStringField
      FieldName = 'usr_nome'
      Required = True
      Size = 50
    end
    object qryUserusr_senha: TStringField
      FieldName = 'usr_senha'
      Required = True
    end
    object qryUserusr_ativo: TStringField
      FieldName = 'usr_ativo'
      FixedChar = True
      Size = 1
    end
  end
  object frxDBDatasetUser: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'emp_codigo=emp_codigo'
      'usr_codigo=usr_codigo'
      'usr_nome=usr_nome'
      'usr_senha=usr_senha'
      'usr_ativo=usr_ativo')
    DataSet = qryUser
    BCDToCurrency = False
    Left = 88
    Top = 8
  end
end
