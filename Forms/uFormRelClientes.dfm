object FormRelClientes: TFormRelClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rios de Clientes'
  ClientHeight = 330
  ClientWidth = 580
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 286
    Width = 574
    Height = 41
    Align = alBottom
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 1
    object btnImprimir: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 189
      Height = 31
      Align = alLeft
      Caption = 'Imprimir'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6A6C
        6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF6C6A6AB0ADAD9692938E8A8B6C6A6A6C6A6A817E7F6C6A6ADDDCDCD0CFCF6C
        6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF6C6A6AD5D4D4C6C4C4A19F9FA19F9FA19F9F8381825C5B5BBCBC
        BCCECECECFCFCFD1D1D1D3D3D3CAC9C96C6A6A6C6A6A6C6A6AFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF6C6A6AD8D7D7E0DEDEC0BFBFA19F9FA19F9FA19F9F
        6260600000000000001616165D5D5DA9A9A9CACACACACACACACACACACACAC1C0
        C06C6A6A6C6A6A6C6A6AFF00FFFF00FF6C6A6AD3D3D3D4D3D3CFCFCF8C8A8A81
        7F7F817F7F817F7F6C6A6A1414140808080000000000000000001616165D5D5D
        A9A9A9CACACACACACAB7B6B6B7B6B66C6A6AFF00FF6C6A6ACACACACACACAC6C6
        C68E8C8CB8B5B5B6B4B4A19F9FA19F9F9F9D9D9997979390918280805250502B
        2A2A080808000000000000161616646464817E7F6C6A6AFF00FFFF00FF6C6A6A
        CACACAC5C5C58E8C8CD7D4D4F7F6F6F6F4F4F2F0F0E0DEDECAC7C7B6B5B5A5A3
        A3A19F9FA19F9F9E9A9C9390916865662322230303031919199997976C6A6AFF
        00FFFF00FF6C6A6AC5C5C58E8C8CE7E6E6F7F6F6F7F6F6F6F4F4F2F0F0EEEDED
        EAEAEAE7E6E6E3E2E2D4D3D3C2C1C1AFADADA19F9FA19F9F9997978280806C6A
        6A9F9D9D6C6A6AFF00FFFF00FF6C6A6A8E8C8CEFEEEEF7F6F6F7F6F6F7F6F6F6
        F4F4D5D3D4867B7E958B8EC1BFBFDDDCDCE0E0E0DCDCDCD8D8D8D1D1D1C2C1C1
        B2B0B0A19F9F9C99996C6A6A6C6A6AFF00FFFF00FF6C6A6ACECBCCF7F6F6F7F6
        F6F7F6F6F7F6F6CFCBCCAFACADADABAB9E989883797B75696B898081ABA5A6C7
        C6C6D5D5D5D1D1D1CECECEC9C7C7BBBABAA6A4A46C6A6AFF00FFFF00FFFF00FF
        6C6A6A6C6A6ACECBCCEDEBEBAFA4A56B5D5F766A6C83787A9C9697ACAAAAB2B0
        B0ABA7A9989192817778847A7D938C8EBFBFBFCBCBCBCACACAC0C0C06C6A6AFF
        00FFFF00FFFF00FFFF00FFFF00FF6C6A6A6C6A6ABD8281AF8A737D5E51665456
        6554576D5E626D5E62898081A09A9CAFACADB2B0B0A49FA0CAC9CACBCBCBB7B6
        B66C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FF
        D4ABFFD0A1FFCB98D5A57BA1785C7B665F6050536656596F62658E8687CECCCC
        CFCFCFA5A4A46C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFBD8281FFD9B2FFD4A9FFCFA0FFCA97FFC68EFFC186FFBF81FFC084BD
        82816C6A6A6C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFBD8281FFDDBAFFD8B1FFD3A7FFCE9EFFCA96FFC5
        8CFFC084FFC084BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE5CBFFE1C2FFDCB8FFD7AF
        FFD3A6FFCE9DFFC995FFC48BBD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFEAD4FF
        E5CAFFE0C0FFDAB7FFD7ADFFD1A5FFCC9CFFC792BD8281FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFBD8281FFEEDCFFE9D1FFE3C9FFE0BFFFDAB6FFD5ACFFD0A3F7C297BD8281FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFBD8281FFF7EEFFF2E3FFEDDAFFE7D0FFE3C7FFDEBDFFD9B4FFD4
        ABBD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFBD8281FFFAF3FFFAF3FFF6EDFFF0E2FFEBD9FFE7CF
        FFE2C5FFDDBCF2C7A9BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD8281BD8281FF
        F4EBFFF0E1FFEBD7FFE6CEFBDCC0BD8281FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFBD8281BD8281BD8281BD8281BD8281FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnClick = btnImprimirClick
    end
    object btnFechar: TBitBtn
      AlignWithMargins = True
      Left = 378
      Top = 3
      Width = 189
      Height = 31
      Align = alRight
      Caption = '&Fechar'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Glyph.Data = {
        2E060000424D2E06000000000000360400002800000015000000150000000100
        080000000000F8010000120B0000120B0000000100002D00000051535C00BABB
        C1008587900074768100FFFFFF009899A10065687200DDDEE000A4A6AD007F82
        8C008E909900F8F7F70061636E00ADAEB400C9CACE006E7077007A7B83005557
        60009FA1A8008A8C9500B2B3B9007C7F890082848D0072747D00EAEAEB009C9D
        A500A9AAB000CDCED2006C6E79007679830093949C005A5B6300C2C3C7008789
        9200696B72009CA5AD00D3D3D6005A5A6B00ADB5B500525263006E717B00BBBC
        C200B5B6BC00ADADAD0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000040404040404
        0404040404040404040404040B0404222222040722001F1F1F1F1F1F1F1F1111
        111111000C07042222220B03220F1717171717171717170F0F22220C1F0C0422
        2222041C031515161616161616151510101728280C0004222222041715162113
        1313131302020915151D1728060004222222040316210A24040A0A0A13211616
        040E03030600042222220410020A0A0404040A0A0A21210404041D171C110422
        22220415131E1E1E0404040A0A1304040415100328110422222204090A1E0505
        050404040A04040B15151010281F0422222204021E050505051E040404040409
        15151510171F04222222042105050505051E1E040404161615151515031F0422
        2222041319191919051E040404040409091010151D0C04222222040A12121219
        050404042104040415151515100C04222222040A080808120404040A13020404
        04151515100C04222222041E1A1A1A0404041E1E0A21210404041616100C0422
        222204050D0D0D070419051E0A0A2121041B1616100C0422222204192A01141A
        1A12121905051E1E0A0A21211D1F04222222040820202A0D0D1A081212121219
        051E0A021D1F04222222040D29292A0D1A08081212121919051E1316170F0B22
        222204180D12051E1E0A0A13131313020202151D15070422222204040B040404
        040404040404040404040404040404222222}
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = btnFecharClick
    end
  end
  object PanelCabecalho: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 65
    Width = 574
    Height = 215
    Align = alClient
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 123
      Top = 120
      Width = 109
      Height = 14
      Caption = 'Situa'#231#227'o Clientes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 123
      Top = 16
      Width = 314
      Height = 89
      Caption = 'Por Data de Cadastro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label4: TLabel
        Left = 161
        Top = 31
        Width = 57
        Height = 13
        Caption = 'Data Final'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 23
        Top = 31
        Width = 65
        Height = 13
        Caption = 'Data Inicial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object JvDateFinal: TJvDateEdit
        Left = 161
        Top = 50
        Width = 132
        Height = 21
        CheckOnExit = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object JvDateInicial: TJvDateEdit
        Left = 23
        Top = 50
        Width = 132
        Height = 21
        CheckOnExit = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object JvComboFiltroAtivo: TJvComboBox
      Left = 123
      Top = 139
      Width = 155
      Height = 22
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 1
      Text = 'Ativo'
      Items.Strings = (
        'Ambos'
        'Ativo'
        'Inativo')
      ItemIndex = 1
    end
  end
  object pnlTopo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 574
    Height = 56
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    Color = clBtnHighlight
    ParentBackground = False
    TabOrder = 2
    object Image1: TImage
      Left = 47
      Top = 10
      Width = 34
      Height = 31
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
        0000001508060000005CE92E26000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC61050000001974455874536F6674776172650041646F6265
        20496D616765526561647971C9653C0000009A49444154484BCD94D10D80200C
        44D9C915188CB8880BB993F64C4CB02D14A5443E2E8450EED1520831C6C074D0
        BC452BC5EDCAFE871F37C7BCC51C3137A00AA901B4B5FC0039A008F1CA000015
        E20D1090DE12A14C5C6E975C6A867900A52EB2BA6B9E0C5A1F1C8F333348D419
        3D1200987D3DADB52FBDF97B2C3375DD1BB051351612C60BE80D80393C310E01
        0CCF40DC837789FE010C7D07275B12EE52EBE4A4450000000049454E44AE4260
        82}
      Proportional = True
      Stretch = True
    end
    object Label2: TLabel
      Left = 207
      Top = 17
      Width = 134
      Height = 16
      Caption = 'Relat'#243'rio de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object qryrelcliente: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  cli_codigo,'
      '  cli_razao,'
      '  cli_fantasia,'
      '  cli_cep,'
      '  est_codigo,'
      '  cid_codigo,'
      '  cli_bairro,'
      '  cli_logradouro,'
      '  cli_enderecoreferencia,'
      '  cli_numero,'
      '  cli_fisicajuridica,'
      '  cli_cpfcnpj,'
      '  cli_rgie,'
      '  cli_telfixo,'
      '  cli_telfax,'
      '  cli_telcelular,'
      '  cli_contato,'
      '  cli_email,'
      '  cli_ativo,'
      '  cli_datacadastro,'
      '  cli_dataalterado,'
      '  cli_nomepai,'
      '  cli_nomemae,'
      '  cli_naturalidade,'
      '  cli_sexo,'
      '  cli_estadocivil,'
      '  cli_datanascimento,'
      '  cli_nomeconj,'
      '  cli_observacao'
      'FROM'
      'clientes')
    SQLConnection = DM.conn
    Left = 56
    Top = 72
    object qryrelclientecli_codigo: TIntegerField
      FieldName = 'cli_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryrelclientecli_razao: TStringField
      FieldName = 'cli_razao'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryrelclientecli_fantasia: TStringField
      FieldName = 'cli_fantasia'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryrelclientecli_cep: TStringField
      FieldName = 'cli_cep'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryrelclienteest_codigo: TStringField
      FieldName = 'est_codigo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qryrelclientecid_codigo: TStringField
      FieldName = 'cid_codigo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object qryrelclientecli_bairro: TStringField
      FieldName = 'cli_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qryrelclientecli_logradouro: TStringField
      FieldName = 'cli_logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryrelclientecli_enderecoreferencia: TStringField
      FieldName = 'cli_enderecoreferencia'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryrelclientecli_numero: TStringField
      FieldName = 'cli_numero'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryrelclientecli_fisicajuridica: TStringField
      FieldName = 'cli_fisicajuridica'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qryrelclientecli_cpfcnpj: TStringField
      FieldName = 'cli_cpfcnpj'
      ProviderFlags = [pfInUpdate]
    end
    object qryrelclientecli_rgie: TStringField
      FieldName = 'cli_rgie'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qryrelclientecli_telfixo: TStringField
      FieldName = 'cli_telfixo'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object qryrelclientecli_telfax: TStringField
      FieldName = 'cli_telfax'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object qryrelclientecli_telcelular: TStringField
      FieldName = 'cli_telcelular'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object qryrelclientecli_contato: TStringField
      FieldName = 'cli_contato'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryrelclientecli_email: TStringField
      FieldName = 'cli_email'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qryrelclientecli_ativo: TStringField
      FieldName = 'cli_ativo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qryrelclientecli_datacadastro: TDateField
      FieldName = 'cli_datacadastro'
      ProviderFlags = [pfInUpdate]
    end
    object qryrelclientecli_dataalterado: TDateField
      FieldName = 'cli_dataalterado'
      ProviderFlags = [pfInUpdate]
    end
    object qryrelclientecli_nomepai: TStringField
      FieldName = 'cli_nomepai'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qryrelclientecli_nomemae: TStringField
      FieldName = 'cli_nomemae'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qryrelclientecli_naturalidade: TStringField
      FieldName = 'cli_naturalidade'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qryrelclientecli_sexo: TStringField
      FieldName = 'cli_sexo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qryrelclientecli_estadocivil: TStringField
      FieldName = 'cli_estadocivil'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qryrelclientecli_datanascimento: TDateField
      FieldName = 'cli_datanascimento'
      ProviderFlags = [pfInUpdate]
    end
    object qryrelclientecli_nomeconj: TStringField
      FieldName = 'cli_nomeconj'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qryrelclientecli_observacao: TMemoField
      FieldName = 'cli_observacao'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsprelcliente: TDataSetProvider
    DataSet = qryrelcliente
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 120
  end
  object cdsrelcliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprelcliente'
    Left = 56
    Top = 176
    object cdsrelclientecli_codigo: TIntegerField
      FieldName = 'cli_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsrelclientecli_razao: TStringField
      FieldName = 'cli_razao'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsrelclientecli_fantasia: TStringField
      FieldName = 'cli_fantasia'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsrelclientecli_cep: TStringField
      FieldName = 'cli_cep'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsrelclienteest_codigo: TStringField
      FieldName = 'est_codigo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsrelclientecid_codigo: TStringField
      FieldName = 'cid_codigo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object cdsrelclientecli_bairro: TStringField
      FieldName = 'cli_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsrelclientecli_logradouro: TStringField
      FieldName = 'cli_logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsrelclientecli_enderecoreferencia: TStringField
      FieldName = 'cli_enderecoreferencia'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsrelclientecli_numero: TStringField
      FieldName = 'cli_numero'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsrelclientecli_fisicajuridica: TStringField
      FieldName = 'cli_fisicajuridica'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsrelclientecli_cpfcnpj: TStringField
      FieldName = 'cli_cpfcnpj'
      ProviderFlags = [pfInUpdate]
    end
    object cdsrelclientecli_rgie: TStringField
      FieldName = 'cli_rgie'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsrelclientecli_telfixo: TStringField
      FieldName = 'cli_telfixo'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsrelclientecli_telfax: TStringField
      FieldName = 'cli_telfax'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsrelclientecli_telcelular: TStringField
      FieldName = 'cli_telcelular'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsrelclientecli_contato: TStringField
      FieldName = 'cli_contato'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsrelclientecli_email: TStringField
      FieldName = 'cli_email'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsrelclientecli_ativo: TStringField
      FieldName = 'cli_ativo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsrelclientecli_datacadastro: TDateField
      FieldName = 'cli_datacadastro'
      ProviderFlags = [pfInUpdate]
    end
    object cdsrelclientecli_dataalterado: TDateField
      FieldName = 'cli_dataalterado'
      ProviderFlags = [pfInUpdate]
    end
    object cdsrelclientecli_nomepai: TStringField
      FieldName = 'cli_nomepai'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsrelclientecli_nomemae: TStringField
      FieldName = 'cli_nomemae'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsrelclientecli_naturalidade: TStringField
      FieldName = 'cli_naturalidade'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsrelclientecli_sexo: TStringField
      FieldName = 'cli_sexo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsrelclientecli_estadocivil: TStringField
      FieldName = 'cli_estadocivil'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsrelclientecli_datanascimento: TDateField
      FieldName = 'cli_datanascimento'
      ProviderFlags = [pfInUpdate]
    end
    object cdsrelclientecli_nomeconj: TStringField
      FieldName = 'cli_nomeconj'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsrelclientecli_observacao: TMemoField
      FieldName = 'cli_observacao'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
  object frxDBDatasetRelClientes: TfrxDBDataset
    UserName = 'frxDBDatasetRelClientes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cli_codigo=cli_codigo'
      'cli_razao=cli_razao'
      'cli_fantasia=cli_fantasia'
      'cli_cep=cli_cep'
      'est_codigo=est_codigo'
      'cid_codigo=cid_codigo'
      'cli_bairro=cli_bairro'
      'cli_logradouro=cli_logradouro'
      'cli_enderecoreferencia=cli_enderecoreferencia'
      'cli_numero=cli_numero'
      'cli_fisicajuridica=cli_fisicajuridica'
      'cli_cpfcnpj=cli_cpfcnpj'
      'cli_rgie=cli_rgie'
      'cli_telfixo=cli_telfixo'
      'cli_telfax=cli_telfax'
      'cli_telcelular=cli_telcelular'
      'cli_contato=cli_contato'
      'cli_email=cli_email'
      'cli_ativo=cli_ativo'
      'cli_datacadastro=cli_datacadastro'
      'cli_dataalterado=cli_dataalterado'
      'cli_nomepai=cli_nomepai'
      'cli_nomemae=cli_nomemae'
      'cli_naturalidade=cli_naturalidade'
      'cli_sexo=cli_sexo'
      'cli_estadocivil=cli_estadocivil'
      'cli_datanascimento=cli_datanascimento'
      'cli_nomeconj=cli_nomeconj'
      'cli_observacao=cli_observacao')
    DataSet = cdsrelcliente
    BCDToCurrency = False
    Left = 360
    Top = 160
  end
end
