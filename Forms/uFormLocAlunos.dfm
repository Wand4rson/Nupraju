object FormLocAlunos: TFormLocAlunos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar Alunos'
  ClientHeight = 508
  ClientWidth = 679
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 673
    Height = 58
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 152
      Top = 8
      Width = 187
      Height = 14
      Caption = 'Entre com os Dados da Busca'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 8
      Width = 107
      Height = 14
      Caption = 'Selecione o Filtro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object edt_busca: TEdit
      Left = 152
      Top = 27
      Width = 441
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = edt_buscaExit
    end
    object JvComboFiltro: TJvComboBox
      Left = 7
      Top = 27
      Width = 138
      Height = 22
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 0
      Text = 'Nome Aluno'
      Items.Strings = (
        'Nome Aluno'
        'Matricula Aluno')
      ItemIndex = 0
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 445
    Width = 673
    Height = 41
    Align = alBottom
    BevelKind = bkTile
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 2
    object btnSelecionar: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 189
      Height = 31
      Align = alLeft
      Caption = 'Selecionar'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000120B0000120B00000000000000000000FFFFFFFFFFFF
        B0ADA9443F375B564E57524A57524A57524A57524A57524A57524A57524A5752
        4A57524A57524A5B564E544E45393B3E6E737BE9E9EAFFFFFFFFFFFF9E9C9798
        958FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7F7F67D8188AFB3B8BCC7CB585F69FFFFFFFFFFFFA09D9998958FF0EF
        EFB7B3B0B4B0ADB5B1AEB5B1AEB5B1AEB4B0ADB4AFABB4AFADB4B0ADC0BBB789
        8D96A4AAAFE2E9E963707E858C94FFFFFFFFFFFFA7A5A09E9C97F1F0F0B4B0AD
        B0ABA7B0ABA7B4AFABBAB6B3BFBAB6BBB6B2ADA9A6B9B3AE53555AA2ABAFE4EA
        EB6773849397A0FFFFFFFFFFFFFFFFFFACAAA5A29F99FFFFFFFBFCFBFBFCFBFF
        FFFFDEDEDF9E9B9C838080918E8EECEBE9BCC0C595A3ACE0E7E7738192393A3E
        E0DDD9FFFFFFFFFFFFFFFFFFACAAA5A6A49FDEDBD9968E89918A845A5351726D
        6BC4C3BDD9D9D2DFDEDCA29E9D655F5E929AA3707F8F9FA6AE7F7970C8C6C3FF
        FFFFFFFFFFFFFFFFB3B0ACA6A39DFFFFFFFFFFFFB6B5B6797370E1E0D8E4E3DD
        EEEEE9F7F7F4FFFFFFBDB9B8726A67BCC5CBFFFFFF736E66C7C5C2FFFFFFFFFF
        FFFFFFFFB4B1ADABA9A4E5E3E2A49E9B85807EC8C2BBC8C4BFD8D5D1E7E6E2ED
        ECE8FBFBFAFFFFFFA8A3A1C2BCB9FFFFFF746F67C7C5C2FFFFFFFFFFFFFFFFFF
        B6B4AFACAAA5EDEBEAA9A5A277716ED4CEC7C4C0BBD7D5D0F0F0EDEDECE8F1F0
        EEFDFDFCD5D4D496918FFFFFFF76726BC7C5C2FFFFFFFFFFFFFFFFFFB7B5B2AB
        A9A4FFFFFFDEDDDD837C7ACEC8C1D3D1CCDFDDDAE0DED9F2F2EFE7E6E2F4F4F1
        D4D3D1B4B2B1FFFFFF746F67C8C6C3FFFFFFFFFFFFFFFFFFBCBAB7B2B1ADE5E3
        E28F8884827B79BAB2ABE5E5E0FDFDFCDDDAD6E0DED9DEDCD7EFEFEAB4B1AD8A
        8583FBFBFA706B63CAC8C5FFFFFFFFFFFFFFFFFFC3C1BEB4B1ADFFFFFFFFFFFF
        C3C1C0948B85D2CDC5E8E7E1DAD8D3CCC8C3D1CEC8E0DED78D8988DBDBDAE1E0
        DE6B675ECDCBC8FFFFFFFFFFFFFFFFFFC9C7C4BDBBB8E9E7E6ACA7A3948E8B6F
        6764978E88B5AEA6C8C2BBC5BEB6C6C1B98A84816D6664A39E9AD9D8D669645C
        CFCDCAFFFFFFFFFFFFFFFFFFCDCBC8C0BFBBF1F0F0C9C6C4CDCAC8D9D8D8B9B6
        B68D8784948E8B9C96939E999794908D8E88838C8781A6A39D5A554BD4D3D1FF
        FFFFFFFFFFFFFFFFCECDCBC0BEBBFDFCFCF5F6F5F4F3F3F4F4F3E9E9E8D4D3D1
        D0CECDC8C6C59D9A96DEDDDBF5F5F4E6E5E3B0AEA9635E56D6D5D3FFFFFFFFFF
        FFFFFFFFCECDCBC4C2BFE3E1E097918C948C87948D878F89848C847F8C847F7C
        746F77726CE9E8E6FDFEFDB9B6B279756ECDCBC8FFFFFFFFFFFFFFFFFFFFFFFF
        D0CFCDC1BFBCFFFFFFFFFFFFFFFFFFFEFEFDF2F3F2E8E8E7E2E1DFD6D5D39996
        90C8C7C5CECCC9726E65CCCAC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0CFCDC2
        C0BDFFFFFFFDFEFEFBFBFAF2F1F1E8E7E5DAD9D7CFCDCAC5C3C08A877FA2A09B
        78746DD1CFCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D0CEC5C3C0F2F2
        F1F0F0EFE9E9E8DDDCDAD2D1CFC4C2BFB8B5B1ABA9A47C79716A655DD2D0CDFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D8D6A2A09BADAAA6ABA9A4
        AAA8A3A9A6A2AAA7A3A4A19BA19E9892908969645CC5C3C0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnClick = btnSelecionarClick
    end
    object btnFechar: TBitBtn
      AlignWithMargins = True
      Left = 477
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
  object grid: TJvDBUltimGrid
    AlignWithMargins = True
    Left = 3
    Top = 123
    Width = 673
    Height = 316
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = gridDblClick
    AlternateRowColor = 8454143
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 18
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'alu_matricula'
        Title.Caption = 'N'#250'mero Matricula'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alu_nome'
        Title.Caption = 'Nome do Acad'#234'mico'
        Width = 270
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alu_telcelular'
        Title.Caption = 'Fone Celular'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alu_telfixo'
        Title.Caption = 'Fone Fixo'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alu_ativo'
        Title.Caption = 'Ativo'
        Width = 35
        Visible = True
      end>
  end
  object paneldetalhes: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 67
    Width = 673
    Height = 50
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 3
    object Label3: TLabel
      Left = 7
      Top = 25
      Width = 43
      Height = 13
      Caption = 'E-Mail :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 7
      Top = 6
      Width = 62
      Height = 13
      Caption = 'Endere'#231'o :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 431
      Top = 10
      Width = 44
      Height = 13
      Caption = 'Bairro :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object dbtextendereco: TDBText
      Left = 75
      Top = 6
      Width = 320
      Height = 17
      DataField = 'alu_endereco'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object dbtextbairro: TDBText
      Left = 481
      Top = 10
      Width = 176
      Height = 17
      DataField = 'alu_bairro'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object dbtextemail: TDBText
      Left = 75
      Top = 25
      Width = 582
      Height = 17
      DataField = 'alu_email'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
  end
  object status: TStatusBar
    Left = 0
    Top = 489
    Width = 679
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object qry: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM '
      '  alunos')
    SQLConnection = DM.conn
    Left = 392
    Top = 192
    object qryalu_matricula: TLargeintField
      FieldName = 'alu_matricula'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryalu_nome: TStringField
      FieldName = 'alu_nome'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryalu_email: TStringField
      FieldName = 'alu_email'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryalu_telfixo: TStringField
      FieldName = 'alu_telfixo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object qryalu_telcelular: TStringField
      FieldName = 'alu_telcelular'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object qryalu_endereco: TStringField
      FieldName = 'alu_endereco'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryalu_bairro: TStringField
      FieldName = 'alu_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qryestado_codigo: TStringField
      FieldName = 'estado_codigo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qrycidade_codigo: TStringField
      FieldName = 'cidade_codigo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object qryalu_observacao: TMemoField
      FieldName = 'alu_observacao'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object qryalu_datanascimento: TDateField
      FieldName = 'alu_datanascimento'
      ProviderFlags = [pfInUpdate]
    end
    object qryalu_localnascimento: TStringField
      FieldName = 'alu_localnascimento'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryalu_ativo: TStringField
      FieldName = 'alu_ativo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qryalu_datacadastro: TDateField
      FieldName = 'alu_datacadastro'
      ProviderFlags = [pfInUpdate]
    end
    object qryalu_dataalterado: TDateField
      FieldName = 'alu_dataalterado'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsp: TDataSetProvider
    DataSet = qry
    UpdateMode = upWhereKeyOnly
    Left = 432
    Top = 192
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    AfterOpen = cdsAfterOpen
    Left = 480
    Top = 192
    object cdsalu_matricula: TLargeintField
      FieldName = 'alu_matricula'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsalu_nome: TStringField
      FieldName = 'alu_nome'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsalu_email: TStringField
      FieldName = 'alu_email'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsalu_telfixo: TStringField
      FieldName = 'alu_telfixo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object cdsalu_telcelular: TStringField
      FieldName = 'alu_telcelular'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object cdsalu_endereco: TStringField
      FieldName = 'alu_endereco'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsalu_bairro: TStringField
      FieldName = 'alu_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsestado_codigo: TStringField
      FieldName = 'estado_codigo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdscidade_codigo: TStringField
      FieldName = 'cidade_codigo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object cdsalu_observacao: TMemoField
      FieldName = 'alu_observacao'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsalu_datanascimento: TDateField
      FieldName = 'alu_datanascimento'
      ProviderFlags = [pfInUpdate]
    end
    object cdsalu_localnascimento: TStringField
      FieldName = 'alu_localnascimento'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsalu_ativo: TStringField
      FieldName = 'alu_ativo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsalu_datacadastro: TDateField
      FieldName = 'alu_datacadastro'
      ProviderFlags = [pfInUpdate]
    end
    object cdsalu_dataalterado: TDateField
      FieldName = 'alu_dataalterado'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds: TDataSource
    DataSet = cds
    Left = 528
    Top = 192
  end
end
