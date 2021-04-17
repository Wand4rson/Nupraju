object FormTipoProcessos: TFormTipoProcessos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Tipos de Processos'
  ClientHeight = 492
  ClientWidth = 642
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 162
    Width = 636
    Height = 40
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    Color = 14215660
    Constraints.MaxHeight = 40
    Constraints.MinHeight = 40
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object btnFechar: TBitBtn
      AlignWithMargins = True
      Left = 539
      Top = 3
      Width = 90
      Height = 30
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
      TabOrder = 4
      OnClick = btnFecharClick
    end
    object btnNovo: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 90
      Height = 30
      Align = alLeft
      Caption = '&Novo'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Glyph.Data = {
        16050000424D160500000000000036040000280000000E0000000E0000000100
        080000000000E0000000120B0000120B000000010000120000006F6A6600FFFF
        FF00ABA8A4008A868300CCC9C700A4A09B00B7B4B200D3D2D000C3C0BE00DBD9
        D800B4B0AD00CCCCCC00BBB8B600C8C5C300A7A3A000E2E2E100D7D5D4000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000010101010103
        000003010101010100000101010101000F040001010101010000010101010100
        0B0500010101010100000101010101000B050001010101010000010101010100
        0D0E00010101010100000300000000000D0E0000000000030000000B0C0C0C0C
        06060A0A0202080000000009070707100B0B070B0B0B0B000000030000000000
        0B0B00000000000300000101010101000B0B0001010101010000010101010100
        0B0B00010101010100000101010101000B0B0001010101010000010101010100
        0B0B000101010101000001010101010300000301010101010000}
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = btnNovoClick
    end
    object btnSalvar: TBitBtn
      AlignWithMargins = True
      Left = 99
      Top = 3
      Width = 90
      Height = 30
      Align = alLeft
      Caption = '&Salvar'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B0000000100002800000021211F00E8E8
        C200006CCA007673710061605F00C4D4DD003A373500B2B2A600E1E0E000037F
        EE00FCE9D50045414000AFA396002E2B2B00ECECCF00F4F4E1004D4B4A003F3B
        39002827250033333300FCEBD700F2F2DD00504B4900383534006D6B6A00E8E8
        CD00484442003D3A390042423A002A292700F8F8EB00514F4D0029212100312F
        2C004B484500F0F0D700F6F6E80054515000FFFFFF0000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000040002020202
        0202020202020202000400210909090909090909090909092100000009090909
        090909090909090900001D1D0A0A0A0A0A0A0A0A0A0A0A0A121212120A0A0A0A
        0A0A0A0A0A0A0A0A1D1D1D0D0505050505050505050505050D0D0D2114141414
        141414141414141421212113050505050505050505050505172113060C141414
        141414141414140C0613171B1B1B1B1B1B1B1B1B1B1B1B1B1B13061C25100606
        06060606060606061C17060B1011110E19191901012301130B061B1A16111A23
        23230E191922010D1A061B221F1122151515150E0E220112221B1B1806111824
        242424240F2223001B0303111111160707070707070707000308}
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnExcluir: TBitBtn
      AlignWithMargins = True
      Left = 195
      Top = 3
      Width = 90
      Height = 30
      Align = alLeft
      Caption = 'E&xcluir'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Glyph.Data = {
        56050000424D5605000000000000360400002800000010000000120000000100
        08000000000020010000120B0000120B00000001000047000000FFFFFF00DBDB
        E000DBDCE000D8D8DB00CFCFD400D0D0D300D0CFD400CDCDD200CAC9CE00C6C6
        CD00C2C2C700BEBEC300BEBDCA00BDBDC400BABAC700B5B4C300B6B6B900B1B1
        C000B1B1BE00AFAFB800AEADB600ACABBA00ACACB500ABAABB00A8A8B700A8A7
        B800A7A8B200A7A7B200A3A2B500A4A4AB00A2A2AD00A0A0AF009F9EB1009E9D
        A8009B9AAB009B9BA4009998AD009999A4009897A6009697A1009595AA009595
        A2009393A4009190A7008F8FA0008F8F9E008C8CA3008A8A9B00878697008382
        9300807F8E007F7E8F007B7B8A007A7988007877860076768700717184006E6E
        7D006E6D7E0069697A006A697A006565780066657600616073005C5C6F005E5D
        6E0058586B0054546700505063004B4B600048485B0000000000000000000000
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
        000000104344270000000000233F1D00000000392C123741050000213F22430A
        00000B400C200E3125001A3F0E0F184300003E1F192B0C3D0D00362A112E112A
        3F163B0E2E19263C00000443121C2B0E304618202B0C430800000013400E2020
        0E120F2E112F34000000000029380E2024202E280E440300000000000036310E
        20242E24154200000000000000003F1F111C202E0E333300000000000000362A
        1119171C280C3B1E000000000007400C17110E0C191C0E4009000000003E1F11
        170C3B3A0C171111430200000D3B0C170F223C32300E110E263C00003F181111
        0C4006003F1F0E0E2A3E0000460F0E0E2C3500000143152A4200000014432D15
        43000000000D453F00000000000032441B000000000000000000}
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnCancelar: TBitBtn
      AlignWithMargins = True
      Left = 291
      Top = 3
      Width = 98
      Height = 30
      Align = alLeft
      Caption = '&Cancelar'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000120B0000120B0000000100003C00000041424400C6C7
        CB00A0A2A500FFFFFF0086888C006E727900B4B5B800DADBDD00696B6E009496
        9A00E5E6E80061636800A8AAAD007D808600BBBCBE00D1D3D60055565800F0F0
        F0009A9B9E008E909500C0C2C500A5ADB500797B7E00CCCCCC006E707300A4A7
        AD00848C940097999C00B8BABD00D7D8DA00B0B2B500F7F7F70084868B00DFE0
        E20076797F00BDBFC400CFD1D4009B9EA400B5B7BC00DDDEE000C3C5C800D5D6
        D800A3A4A60058595B008A8B8D00C5CECE00ABACAE006A6D7300797C8200949C
        A500929497007173760075798000828387005B5D6000ADAFB400E9EAEB008B8E
        940073757A000000000000000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000030311110A07
        0F1C22360000000036221C17070A111F030303030303030718100B183A333333
        180B2B18070303030303030303030C2B18163A2F0B0B0B0B2F3A16182B0C0303
        0303030303390B1616083A1B2E0E0E371B3A0816160B39030303030337083516
        0804142A2C16162C2A14022F163508370303032708200D2F3A043A3A14242401
        32332E1C220D20082703030435043A3005352C333703030303270D2A2E220435
        04032716320D1B2832342C13221E030303031F201E1B0D32222719391B391C32
        282520321B0D060303030327351C391B2C19091212251E20130119132525201C
        03030303021E252525090419250C0C17193217371219192C1C03030317191925
        0C202C1E191E1B2903191B2406023737390E030329091E191E042C0E37261329
        0303191B241C191E1E130E03291326370E2C2C281E1C1B17030303191B292337
        2637130E171B0E1E282C25140E0E2A19030303033712291406230613092A2323
        2825370E01231C3238030303030E121D010E14261B1C23010E3721121D28012E
        2503030303030E12072414011717280F2521030217291717022A1F0303030323
        2527240101010F01020303211B071D0F0F37321E1D031F24122A2924241D1D1B
        21030303230C0A271D1D140C251B1B021E240729270A0C2303030303032E2E21
        0A2727271D0F0F072727270A0A0C2E030303030303032325243838380A0A0A0A
        383838242523030303030303030303210202141D0A0A0A0A1D14020221030303
        030303030303030303211E2A090909092A1E2103030303030303}
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 3
      OnClick = btnCancelarClick
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 636
    Height = 153
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 51
      Height = 13
      Caption = 'C'#243'digo *'
      FocusControl = dbe_codigo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 56
      Width = 67
      Height = 13
      Caption = 'Descri'#231#227'o *'
      FocusControl = dbe_descricao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object dbe_codigo: TDBEdit
      Left = 24
      Top = 32
      Width = 74
      Height = 21
      DataField = 'tp_codigo'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object dbe_descricao: TDBEdit
      Left = 24
      Top = 72
      Width = 580
      Height = 21
      DataField = 'tp_descricao'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBRadioGroup: TDBRadioGroup
      Left = 24
      Top = 99
      Width = 137
      Height = 37
      Columns = 2
      DataField = 'tp_ativo'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      Items.Strings = (
        'Ativo'
        'Inativo')
      ParentBackground = True
      ParentFont = False
      TabOrder = 2
      Values.Strings = (
        'sim'
        'nao')
    end
  end
  object grid: TJvDBUltimGrid
    AlignWithMargins = True
    Left = 3
    Top = 208
    Width = 636
    Height = 262
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
        FieldName = 'tp_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tp_descricao'
        Width = 450
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tp_ativo'
        Title.Caption = 'Ativo'
        Width = 50
        Visible = True
      end>
  end
  object status: TStatusBar
    Left = 0
    Top = 473
    Width = 642
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object qry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  tp_codigo,'
      '  tp_descricao,'
      '  tp_ativo'
      'FROM '
      'tipo_processo')
    SQLConnection = DM.conn
    Left = 456
    Top = 24
    object qrytp_codigo: TIntegerField
      FieldName = 'tp_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrytp_descricao: TStringField
      FieldName = 'tp_descricao'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qrytp_ativo: TStringField
      FieldName = 'tp_ativo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
  end
  object dsp: TDataSetProvider
    DataSet = qry
    UpdateMode = upWhereKeyOnly
    Left = 496
    Top = 24
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    AfterOpen = cdsAfterOpen
    OnNewRecord = cdsNewRecord
    AfterApplyUpdates = cdsAfterApplyUpdates
    Left = 536
    Top = 24
    object cdstp_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tp_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdstp_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'tp_descricao'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdstp_ativo: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'tp_ativo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
  end
  object ds: TDataSource
    DataSet = cds
    OnStateChange = dsStateChange
    Left = 576
    Top = 24
  end
end