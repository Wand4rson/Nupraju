object FormOcorrenciaItens: TFormOcorrenciaItens
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lan'#231'ar Ocorr'#234'ncia Itens'
  ClientHeight = 352
  ClientWidth = 700
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
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBotoes: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 305
    Width = 694
    Height = 44
    Align = alBottom
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 1
    object btnFechar: TBitBtn
      AlignWithMargins = True
      Left = 428
      Top = 3
      Width = 259
      Height = 34
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
    object btnSalvar: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 259
      Height = 34
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
  end
  object PanelItens: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 694
    Height = 296
    Align = alClient
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 59
      Height = 16
      Caption = 'Cliente *'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 524
      Top = 24
      Width = 95
      Height = 16
      Caption = 'Data Lan'#231'to *'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 72
      Width = 127
      Height = 16
      Caption = 'N'#250'mero Processo *'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 161
      Top = 72
      Width = 103
      Height = 16
      Caption = 'Carga Hor'#225'ria *'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 288
      Top = 73
      Width = 106
      Height = 16
      Caption = 'Tipo Processo *'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 24
      Top = 116
      Width = 85
      Height = 16
      Caption = 'Observa'#231#245'es'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 162
      Top = 21
      Width = 149
      Height = 16
      Caption = 'F3 - Para Pesquisar ...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 413
      Top = 72
      Width = 149
      Height = 16
      Caption = 'F3 - Para Pesquisar ...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 24
      Top = 230
      Width = 143
      Height = 16
      Caption = 'Status do Processo *'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 392
      Top = 230
      Width = 103
      Height = 16
      Caption = 'Data Conclus'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 563
      Top = 230
      Width = 102
      Height = 16
      Caption = 'Hora Conclus'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object edt_nome_cliente: TEdit
      Left = 161
      Top = 43
      Width = 357
      Height = 24
      TabStop = False
      Color = 14215660
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object edt_nome_tipoprocesso: TEdit
      Left = 412
      Top = 89
      Width = 253
      Height = 24
      TabStop = False
      Color = 14215660
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object dbe_nroprocesso: TDBEdit
      Left = 24
      Top = 89
      Width = 132
      Height = 24
      DataField = 'ocr_item_nroprocesso'
      DataSource = dsItem
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBMemoOBS: TDBMemo
      Left = 24
      Top = 135
      Width = 641
      Height = 89
      DataField = 'ocr_item_observacao'
      DataSource = dsItem
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 7
    end
    object JvDBCalcCargaHoraria: TJvDBCalcEdit
      Left = 161
      Top = 89
      Width = 121
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
      DataField = 'ocr_item_cargahoraria'
      DataSource = dsItem
    end
    object JvDBComboTipoProcesso: TJvDBComboEdit
      Left = 288
      Top = 89
      Width = 119
      Height = 24
      ClickKey = 114
      DataField = 'tipo_codigo'
      DataSource = dsItem
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Glyph.Data = {
        9E050000424D9E05000000000000360400002800000011000000120000000100
        08000000000068010000120B0000120B00000001000019000000FFFFFF00D9D9
        DB00D5D5D600D1D1D400CCCCCC00C7C7CA00C4C4C700BFBEC200BDBDBF00B2B3
        B600AEAEB200ACACAF00A4A4AA00A2A2A7009E9EA3009A9A9F0095949A009393
        97008C8C93008A8A8E0086858C00828286007D7D820079797E0077777C000000
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
        000000000000000000000000000000080B000000000000000000000000000000
        0000001717160200000000000000000000000000000000151616150100000000
        0000000000000000000000071515151401000000000000000000000000000000
        061212120F00000507020000000000000000000000050F0C0111181818181606
        0000000000000000000002011517171413161717080000000000000000000011
        1715030000001017160000000000000000000016160300000000001316090000
        0000000000000416130000000000000916110000000000000000051411000000
        00000007141000000000000000000112120000000000000C120B000000000000
        0000000F110C0000000005101001000000000000000000030F0F0D06040A0F0F
        0A0000000000000000000000040E0E0E0E0E0E09000000000000000000000000
        0000050909080000000000000000000000000000000000000000000000000000
        0000}
      ParentFont = False
      TabOrder = 5
      OnButtonClick = JvDBComboTipoProcessoButtonClick
      OnChange = JvDBComboTipoProcessoChange
      OnExit = JvDBComboTipoProcessoExit
    end
    object JvDBComboCliente: TJvDBComboEdit
      Left = 24
      Top = 43
      Width = 132
      Height = 24
      ClickKey = 114
      DataField = 'cliente_codigo'
      DataSource = dsItem
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Glyph.Data = {
        9E050000424D9E05000000000000360400002800000011000000120000000100
        08000000000068010000120B0000120B00000001000019000000FFFFFF00D9D9
        DB00D5D5D600D1D1D400CCCCCC00C7C7CA00C4C4C700BFBEC200BDBDBF00B2B3
        B600AEAEB200ACACAF00A4A4AA00A2A2A7009E9EA3009A9A9F0095949A009393
        97008C8C93008A8A8E0086858C00828286007D7D820079797E0077777C000000
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
        000000000000000000000000000000080B000000000000000000000000000000
        0000001717160200000000000000000000000000000000151616150100000000
        0000000000000000000000071515151401000000000000000000000000000000
        061212120F00000507020000000000000000000000050F0C0111181818181606
        0000000000000000000002011517171413161717080000000000000000000011
        1715030000001017160000000000000000000016160300000000001316090000
        0000000000000416130000000000000916110000000000000000051411000000
        00000007141000000000000000000112120000000000000C120B000000000000
        0000000F110C0000000005101001000000000000000000030F0F0D06040A0F0F
        0A0000000000000000000000040E0E0E0E0E0E09000000000000000000000000
        0000050909080000000000000000000000000000000000000000000000000000
        0000}
      ParentFont = False
      TabOrder = 0
      OnButtonClick = JvDBComboClienteButtonClick
      OnChange = JvDBComboClienteChange
      OnExit = JvDBComboClienteExit
    end
    object JvDBDateLcto: TJvDBDateEdit
      Left = 524
      Top = 42
      Width = 141
      Height = 24
      DataField = 'ocr_item_datalancamento'
      DataSource = dsItem
      CheckOnExit = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object JvDBComboBoxStatus: TJvDBComboBox
      Left = 24
      Top = 252
      Width = 238
      Height = 24
      Color = 8454143
      DataField = 'ocr_item_status'
      DataSource = dsItem
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Items.Strings = (
        'CONCLU'#205'DO'
        'EM ANDAMENTO')
      ParentFont = False
      TabOrder = 8
      Values.Strings = (
        'con'
        'and')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object JvDBDateConclusao: TJvDBDateEdit
      Left = 392
      Top = 252
      Width = 141
      Height = 24
      DataField = 'ocr_item_dataconclusao'
      DataSource = dsItem
      CheckOnExit = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object dbe_horaconclusao: TDBEdit
      Left = 562
      Top = 252
      Width = 103
      Height = 24
      DataField = 'ocr_item_horaconclusao'
      DataSource = dsItem
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
  end
  object qryItem: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'ocr_codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ocr_item_codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  ocr_codigo,'
      '  ocr_item_codigo,'
      '  ocr_item_datalancamento,'
      '  cliente_codigo,'
      '  tipo_codigo,'
      '  ocr_item_nroprocesso,'
      '  ocr_item_observacao,'
      '  ocr_item_cargahoraria,'
      '  ocr_item_status,'
      '  ocr_item_dataconclusao,'
      '  ocr_item_horalancamento,'
      '  ocr_item_horaconclusao'
      'FROM '
      ' ocorrencia_itens'
      'WHERE'
      '  ocr_codigo=:ocr_codigo AND ocr_item_codigo=:ocr_item_codigo')
    SQLConnection = DM.conn
    Left = 296
    Top = 8
    object qryItemocr_codigo: TIntegerField
      FieldName = 'ocr_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemocr_item_codigo: TIntegerField
      FieldName = 'ocr_item_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemocr_item_datalancamento: TDateField
      FieldName = 'ocr_item_datalancamento'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryItemcliente_codigo: TIntegerField
      FieldName = 'cliente_codigo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryItemtipo_codigo: TIntegerField
      FieldName = 'tipo_codigo'
      ProviderFlags = [pfInUpdate]
    end
    object qryItemocr_item_nroprocesso: TStringField
      FieldName = 'ocr_item_nroprocesso'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryItemocr_item_observacao: TMemoField
      FieldName = 'ocr_item_observacao'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object qryItemocr_item_cargahoraria: TFloatField
      FieldName = 'ocr_item_cargahoraria'
      ProviderFlags = [pfInUpdate]
    end
    object qryItemocr_item_status: TStringField
      FieldName = 'ocr_item_status'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qryItemocr_item_dataconclusao: TDateField
      FieldName = 'ocr_item_dataconclusao'
      ProviderFlags = [pfInUpdate]
    end
    object qryItemocr_item_horalancamento: TStringField
      FieldName = 'ocr_item_horalancamento'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object qryItemocr_item_horaconclusao: TStringField
      FieldName = 'ocr_item_horaconclusao'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
  end
  object dspItem: TDataSetProvider
    DataSet = qryItem
    UpdateMode = upWhereKeyOnly
    Left = 344
    Top = 8
  end
  object cdsItem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ocr_codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ocr_item_codigo'
        ParamType = ptInput
      end>
    ProviderName = 'dspItem'
    OnNewRecord = cdsItemNewRecord
    Left = 392
    Top = 8
    object cdsItemocr_codigo: TIntegerField
      FieldName = 'ocr_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsItemocr_item_codigo: TIntegerField
      FieldName = 'ocr_item_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsItemocr_item_datalancamento: TDateField
      DisplayLabel = 'Data Lan'#231'to'
      FieldName = 'ocr_item_datalancamento'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsItemcliente_codigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'cliente_codigo'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsItemtipo_codigo: TIntegerField
      DisplayLabel = 'Tipo Processo'
      FieldName = 'tipo_codigo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsItemocr_item_nroprocesso: TStringField
      DisplayLabel = 'N'#250'mero Processo'
      FieldName = 'ocr_item_nroprocesso'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsItemocr_item_observacao: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'ocr_item_observacao'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsItemocr_item_cargahoraria: TFloatField
      DisplayLabel = 'Carga Hor'#225'ria'
      FieldName = 'ocr_item_cargahoraria'
      ProviderFlags = [pfInUpdate]
    end
    object cdsItemocr_item_status: TStringField
      FieldName = 'ocr_item_status'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsItemocr_item_dataconclusao: TDateField
      FieldName = 'ocr_item_dataconclusao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsItemocr_item_horalancamento: TStringField
      FieldName = 'ocr_item_horalancamento'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object cdsItemocr_item_horaconclusao: TStringField
      FieldName = 'ocr_item_horaconclusao'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
  end
  object dsItem: TDataSource
    DataSet = cdsItem
    Left = 448
    Top = 8
  end
end
