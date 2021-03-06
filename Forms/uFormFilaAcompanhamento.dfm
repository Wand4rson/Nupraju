object FormFilaAcompanhamento: TFormFilaAcompanhamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Fila de Acompanhamento de Processo em Andamento'
  ClientHeight = 467
  ClientWidth = 1025
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelGridItem: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1019
    Height = 284
    Align = alClient
    BevelKind = bkTile
    BevelOuter = bvNone
    Caption = 'PanelGridItem'
    TabOrder = 0
    object gridItem: TJvDBUltimGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1009
      Height = 274
      Align = alClient
      DataSource = dsItem
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      PopupMenu = PopupMenu
      TabOrder = 0
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
          FieldName = 'ocr_item_nroprocesso'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ocr_codigo'
          Title.Caption = 'Ocorr'#234'ncia'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ocr_item_datalancamento'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ocr_item_horalancamento'
          Title.Caption = 'Hr Lan'#231'to'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cliente_codigo'
          Title.Caption = 'C'#243'd. Cliente'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_razao'
          Width = 230
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tp_descricao'
          Title.Caption = 'Tipo Processo'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'alu_matricula'
          Title.Caption = 'N'#250'mero Matricula'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'alu_nome'
          Title.Caption = 'Nome do Acad'#234'mico'
          Width = 230
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 404
    Width = 1019
    Height = 41
    Align = alBottom
    BevelKind = bkTile
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object btnAtualizar: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 189
      Height = 31
      Align = alLeft
      Caption = 'Atualizar'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7775757775757775757775757775
        75777575777575777575FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF767574777575A9A6A6CBCACA
        046B0B90A993BBBBBBC6BCBCC6BCBCA59F9F777575777575FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF777575777575A6A4A4DE
        DDDDBFBFC1959395046B0B046B0B566849756E6B8B8281B6A6A7D4BDBDA39595
        777575777575FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7775757775
        75E5E3E5CFCFD07E7E7E736F63898E6E046B0B26A943046B0B8C9F749F957B72
        695972625EC1AAABDDBDBC777575777575FF00FFFF00FFFF00FFFF00FFFF00FF
        777575777575EFEEEFC9C7C96A68645C7E4B046B0B046B0B046B0B3CD46B38CC
        64046B0BB0D0B1FBF8E5A7A18A534C44A98F8FEBC2C2777575777575FF00FFFF
        00FFFF00FFFF00FF777575F2F0F0C7C6C75E6857046B0B046B0B21B03C2FC955
        3AD5673DD76C41DD743AD068046B0B9DC497FFFFFFD4D0BC5F5649A98F8FE9BD
        BC777575FF00FFFF00FFFF00FF777575B1AFAFEEEDEE6C73691A701B0F951E1D
        B53623BB4129C14B32CB5838D1643ED76D44E37A24A641046B0BFFFBE7FFFFFF
        D4D0BC50463ECCA7A7AC9696777575FF00FFFF00FF777575FEFCFCA6A5A73574
        300787110F9E1E046B0B046B0B046B0B046B0B2DBF513FDC6E22A33E046B0BE0
        C58AF8DEA9FAF0D9FFFFFF9F957B6E5B58F2C0C0777575FF00FF777575C1C0C0
        EFEEEF807E790F721106890D15761675AC60C2DC9FD0E3A7046B0B23AC3F1B98
        31046B0BEAB87EEEBA7FEFBD81F0C48AFCF3E5FAF0D95F5649D0A6A6C0A1A077
        7575777575F7F6F6C5C4C59995840370071B781CD4E6B1FFFFCCFFFFCCFFFFCC
        046B0B0A7313046B0BFCEBB6F3CE96EEB77BEAAC6FEAA769F3CBA0FFFFFF907D
        72907D72F4C1C0777575777575FFFFFFACABABBBB49802600596C196FFFFE9FF
        FFCCFFFFCCFFFFCC046B0B046B0BBFBB9CFFFCCBFFFBC2FFD799FBBB7AEEA969
        EDB47FFFFFF4B1A69172625EF4C0BF777575777575FFFFFFABA7A4BBB8A74BBD
        FFDCEBDEFFFFFCFFFFDCFFFFCCFFFFD1CED4A75555514C4C4E5B5C518B8B7687
        7A60866D52BF8E5EEFB27595A1ED9093AB705D54EDBAB8777575777575FFFFFF
        B2ACA9A6AFA91F81FFE3F0E9FFFFFFFFFFF6FFFFD5FFFFD1D3D3AB5B5B5B6969
        6C1616162020201F20201F1F20BF8E5EF2B4793D59F25E6DA9796758EDBAB877
        7575777575FFFEFEB6B6B6C4B59DFFFFFAFFFFFFFFFFFFFFFFFFFFFFF0FFFFD1
        FFFFCFADAD9168685B1C1C1D5B5C51E5E3BBE7CC99E7B177EEB77BFCF3E5ABA7
        8F7D6B69F3BFBD777575777575F7F4F6CFCFD0B1A691FFFBEEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF4FFFFD5FFFFD5FFFFDCA6A68C1C1C1D5F5D50F8E2ACF8C484
        F2C792FFFFE9938E77997E7FF4C0BF777575777575C1BFC0F7F4F6A39990F6E3
        CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFDEFFFFCFFFFFD9AFAF931A
        1C1D504A3FE6BD87FBE5BDF6F0CE706B60CFA6A7C0A0A0777575FF00FF777575
        FCFBFBBABABAC4B097FFFCF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F0FFFFDCFFFFDEC2C1A11F1F1F56514BFFFFE1ABA78F7D6B69F4C1C0777575FF
        00FFFF00FF777575B4B1B1EAEBEBA59E97E2CBADFFFFFAFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFE3BFBB9CBBB8A7E5E3BB6D6B65CCA7
        A7AD9696777575FF00FFFF00FFFF00FF777575F2F0F0D0D1D3A39990E7D1B2FF
        FFF4FFFFFFFFFFFFFFFFFFFCFEFFF7FCFCFFFFFFFFFFFFFFFFF6FFFFE3EEEFC5
        7E7B70B6999AE9BDBC777575FF00FFFF00FFFF00FFFF00FF777575777575EAEB
        EBCACBCEA99F96CFBBA1FAF0D9FFFFFAFFFFFF4BBDFF1F81FFFFFFFFFFFFFFFC
        FCE5CBC9AA868179AA9596E7C0BF777575777575FF00FFFF00FFFF00FFFF00FF
        FF00FF777575777575E5E3E5D4D4D5ACAAA9ACA092CFBBA1E6D7BCE1DECCD3D9
        D1E9E5C7CBC6B49E998C968B8AC9AFB0DDBDBC777575777575FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF777575777575A6A5A6D8D8D8C2C5C6ACAAA9
        A5A09CA9A198ABA197A09A95A49C99BBABACD4BDBDA39595777575777575FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF76767677
        7575A4A3A3C4C4C4C0C0C1B8BABBB6B6B6C0B6B6C0B6B6A19C9C777575777575
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF77757577757577757577757577757577757577757577
        7575FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnClick = btnAtualizarClick
    end
    object btnFechar: TBitBtn
      AlignWithMargins = True
      Left = 823
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
  object GroupBoxHistorico: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 293
    Width = 1019
    Height = 105
    Align = alBottom
    Caption = 'Hist'#243'rico do Lan'#231'amento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object DBMemoHistorico: TDBMemo
      Left = 2
      Top = 15
      Width = 1015
      Height = 88
      Align = alClient
      Color = 8454143
      DataField = 'ocr_item_observacao'
      DataSource = dsItem
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object status: TStatusBar
    Left = 0
    Top = 448
    Width = 1025
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object qryItem: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'ocr_codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  oci.ocr_codigo,'
      '  oci.ocr_item_codigo,'
      '  oci.ocr_item_datalancamento,'
      '  cliente_codigo,'
      '  cli.cli_razao,'
      '  tipo_codigo,'
      '  tipo.tp_descricao,  '
      '  oci.ocr_item_nroprocesso,'
      '  oci.ocr_item_observacao,'
      '  oci.ocr_item_cargahoraria,'
      '  oci.ocr_item_status,'
      '  ocr.alu_matricula,'
      '  alu.alu_nome,'
      '  oci.ocr_item_horalancamento'
      'FROM '
      ' ocorrencia_itens oci'
      '  INNER JOIN ocorrencia ocr ON(oci.ocr_codigo = ocr.ocr_codigo)'
      
        '  INNER JOIN alunos alu ON (ocr.alu_matricula = alu.alu_matricul' +
        'a)'
      
        '  INNER JOIN clientes cli ON(oci.cliente_codigo = cli.cli_codigo' +
        ')'
      
        '  INNER JOIN tipo_processo tipo ON(oci.tipo_codigo = tipo.tp_cod' +
        'igo)'
      'WHERE'
      '   oci.ocr_item_status<>'#39'con'#39)
    SQLConnection = DM.conn
    Left = 456
    Top = 136
    object qryItemocr_codigo: TIntegerField
      FieldName = 'ocr_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryItemocr_item_codigo: TIntegerField
      FieldName = 'ocr_item_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryItemocr_item_datalancamento: TDateField
      FieldName = 'ocr_item_datalancamento'
      ProviderFlags = [pfInUpdate]
    end
    object qryItemcliente_codigo: TIntegerField
      FieldName = 'cliente_codigo'
      ProviderFlags = [pfInUpdate]
    end
    object qryItemcli_razao: TStringField
      FieldName = 'cli_razao'
      ProviderFlags = []
      Size = 100
    end
    object qryItemtipo_codigo: TIntegerField
      FieldName = 'tipo_codigo'
      ProviderFlags = [pfInUpdate]
    end
    object qryItemtp_descricao: TStringField
      FieldName = 'tp_descricao'
      ProviderFlags = []
      Size = 50
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
    object qryItemalu_matricula: TLargeintField
      FieldName = 'alu_matricula'
      ProviderFlags = []
      Required = True
    end
    object qryItemalu_nome: TStringField
      FieldName = 'alu_nome'
      ProviderFlags = []
      Size = 100
    end
    object qryItemocr_item_horalancamento: TStringField
      FieldName = 'ocr_item_horalancamento'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
  end
  object dspItem: TDataSetProvider
    DataSet = qryItem
    UpdateMode = upWhereKeyOnly
    Left = 504
    Top = 136
  end
  object cdsItem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ocr_codigo'
        ParamType = ptInput
      end>
    ProviderName = 'dspItem'
    AfterOpen = cdsItemAfterOpen
    AfterRefresh = cdsItemAfterRefresh
    Left = 568
    Top = 136
    object cdsItemocr_codigo: TIntegerField
      DisplayLabel = 'Ocorrencia'
      FieldName = 'ocr_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsItemocr_item_codigo: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ocr_item_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsItemocr_item_datalancamento: TDateField
      DisplayLabel = 'Data Lan'#231'to'
      FieldName = 'ocr_item_datalancamento'
      ProviderFlags = [pfInUpdate]
    end
    object cdsItemcliente_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo Cliente'
      FieldName = 'cliente_codigo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsItemcli_razao: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'cli_razao'
      ProviderFlags = []
      Size = 100
    end
    object cdsItemtipo_codigo: TIntegerField
      DisplayLabel = 'Tipo Processo'
      FieldName = 'tipo_codigo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsItemtp_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'tp_descricao'
      ProviderFlags = []
      Size = 50
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
    object cdsItemalu_matricula: TLargeintField
      FieldName = 'alu_matricula'
      ProviderFlags = []
      Required = True
    end
    object cdsItemalu_nome: TStringField
      FieldName = 'alu_nome'
      ProviderFlags = []
      Size = 100
    end
    object cdsItemocr_item_horalancamento: TStringField
      FieldName = 'ocr_item_horalancamento'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
  end
  object dsItem: TDataSource
    DataSet = cdsItem
    Left = 632
    Top = 136
  end
  object PopupMenu: TPopupMenu
    Left = 328
    Top = 88
    object ConcluirProcesso1: TMenuItem
      Caption = 'Concluir Processo'
      OnClick = ConcluirProcesso1Click
    end
  end
end
