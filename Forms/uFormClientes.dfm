object FormClientes: TFormClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Clientes'
  ClientHeight = 501
  ClientWidth = 733
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
  object pg: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 727
    Height = 430
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      AlignWithMargins = True
      Caption = 'Dados B'#225'sicos'
      object Label19: TLabel
        Left = 3
        Top = 329
        Width = 112
        Height = 13
        Caption = 'Observa'#231#245'es Di'#225'ria'
        FocusControl = dbe_fonefixo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 230
        Width = 707
        Height = 98
        Caption = 'Dados de Contato'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label14: TLabel
          Left = 17
          Top = 16
          Width = 54
          Height = 13
          Caption = 'Fone Fixo'
          FocusControl = dbe_fonefixo
        end
        object Label15: TLabel
          Left = 148
          Top = 16
          Width = 51
          Height = 13
          Caption = 'Fone Fax'
          FocusControl = dbe_fonefax
        end
        object Label16: TLabel
          Left = 280
          Top = 16
          Width = 72
          Height = 13
          Caption = 'Fone Celular'
          FocusControl = dbe_fonecelular
        end
        object Label17: TLabel
          Left = 411
          Top = 16
          Width = 100
          Height = 13
          Caption = 'Nome do Contato'
          FocusControl = dbe_contato
        end
        object Label18: TLabel
          Left = 17
          Top = 53
          Width = 34
          Height = 13
          Caption = 'E-Mail'
          FocusControl = dbe_email
        end
        object dbe_fonefixo: TDBEdit
          Left = 17
          Top = 32
          Width = 125
          Height = 21
          DataField = 'cli_telfixo'
          DataSource = ds
          TabOrder = 0
        end
        object dbe_fonefax: TDBEdit
          Left = 148
          Top = 32
          Width = 125
          Height = 21
          DataField = 'cli_telfax'
          DataSource = ds
          TabOrder = 1
        end
        object dbe_fonecelular: TDBEdit
          Left = 280
          Top = 32
          Width = 125
          Height = 21
          DataField = 'cli_telcelular'
          DataSource = ds
          TabOrder = 2
        end
        object dbe_contato: TDBEdit
          Left = 411
          Top = 32
          Width = 286
          Height = 21
          DataField = 'cli_contato'
          DataSource = ds
          TabOrder = 3
        end
        object dbe_email: TDBEdit
          Left = 17
          Top = 69
          Width = 680
          Height = 21
          DataField = 'cli_email'
          DataSource = ds
          TabOrder = 4
        end
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 0
        Width = 706
        Height = 113
        Caption = 'Dados B'#225'sicos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 17
          Top = 16
          Width = 56
          Height = 13
          Caption = 'C'#243'digo *'
          FocusControl = dbe_codigo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 89
          Top = 16
          Width = 118
          Height = 13
          Caption = 'Nome do Cliente *'
          FocusControl = dbe_razao
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 396
          Top = 16
          Width = 118
          Height = 13
          Caption = 'Nome do Cliente *'
          FocusControl = dbe_fantasia
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 16
          Top = 59
          Width = 68
          Height = 13
          Caption = 'Tipo Pessoa'
        end
        object Label5: TLabel
          Left = 143
          Top = 61
          Width = 56
          Height = 13
          Caption = 'CPF/CNPJ'
        end
        object Label6: TLabel
          Left = 396
          Top = 61
          Width = 34
          Height = 13
          Caption = 'RG/IE'
          FocusControl = dbe_rgie
        end
        object dbe_codigo: TDBEdit
          Left = 16
          Top = 32
          Width = 65
          Height = 21
          DataField = 'cli_codigo'
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
        object dbe_razao: TDBEdit
          Left = 88
          Top = 32
          Width = 300
          Height = 21
          DataField = 'cli_razao'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object dbe_fantasia: TDBEdit
          Left = 396
          Top = 32
          Width = 300
          Height = 21
          DataField = 'cli_fantasia'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object JvDBComboBoxTipoPessoa: TJvDBComboBox
          Left = 16
          Top = 78
          Width = 121
          Height = 21
          Color = 8454143
          DataField = 'cli_fisicajuridica'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'FISICA'
            'JURIDICA')
          ParentFont = False
          TabOrder = 3
          Values.Strings = (
            'fis'
            'jur')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
          OnChange = JvDBComboBoxTipoPessoaChange
        end
        object dbe_rgie: TDBEdit
          Left = 396
          Top = 77
          Width = 199
          Height = 21
          DataField = 'cli_rgie'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object dbmask_cpfcnpj: TJvDBMaskEdit
          Left = 143
          Top = 78
          Width = 245
          Height = 21
          DataField = 'cli_cpfcnpj'
          DataSource = ds
          TabOrder = 4
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 119
        Width = 707
        Height = 105
        Caption = 'Dados Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label7: TLabel
          Left = 143
          Top = 13
          Width = 53
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = dbe_endereco
        end
        object Label8: TLabel
          Left = 504
          Top = 16
          Width = 35
          Height = 13
          Caption = 'Bairro'
          FocusControl = dbe_bairro
        end
        object Label9: TLabel
          Left = 438
          Top = 13
          Width = 20
          Height = 13
          Caption = 'Nro'
          FocusControl = dbe_nro
        end
        object Label10: TLabel
          Left = 89
          Top = 56
          Width = 40
          Height = 13
          Caption = 'Cidade'
        end
        object Label11: TLabel
          Left = 16
          Top = 56
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object Label12: TLabel
          Left = 440
          Top = 56
          Width = 115
          Height = 13
          Caption = 'Ponto de Refer'#234'ncia'
          FocusControl = dbe_pontoref
        end
        object Label13: TLabel
          Left = 16
          Top = 13
          Width = 23
          Height = 13
          Caption = 'Cep'
          FocusControl = dbe_cep
        end
        object Label32: TLabel
          Left = 200
          Top = 56
          Width = 127
          Height = 13
          Caption = 'F3 - Para Pesquisar ...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object dbe_endereco: TDBEdit
          Left = 143
          Top = 29
          Width = 291
          Height = 21
          DataField = 'cli_logradouro'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object dbe_bairro: TDBEdit
          Left = 504
          Top = 29
          Width = 193
          Height = 21
          DataField = 'cli_bairro'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object dbe_nro: TDBEdit
          Left = 439
          Top = 29
          Width = 63
          Height = 21
          DataField = 'cli_numero'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object dbe_pontoref: TDBEdit
          Left = 439
          Top = 72
          Width = 258
          Height = 21
          DataField = 'cli_enderecoreferencia'
          DataSource = ds
          TabOrder = 6
        end
        object dbe_cep: TDBEdit
          Left = 16
          Top = 29
          Width = 121
          Height = 21
          DataField = 'cli_cep'
          DataSource = ds
          TabOrder = 0
        end
        object JvDBComboEstado: TJvDBComboBox
          Left = 16
          Top = 72
          Width = 65
          Height = 21
          DataField = 'est_codigo'
          DataSource = ds
          ItemHeight = 13
          Items.Strings = (
            ''
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
          TabOrder = 4
          Values.Strings = (
            '12'
            '27'
            '16'
            '13'
            '29'
            '23'
            '53'
            '32'
            '52'
            '21'
            '51'
            '50'
            '31'
            '15'
            '25'
            '41'
            '26'
            '22'
            '33'
            '24'
            '43'
            '11'
            '14'
            '42'
            '35'
            '28'
            '17')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object JvDBComboCidade: TJvDBComboEdit
          Left = 91
          Top = 72
          Width = 101
          Height = 21
          ClickKey = 114
          DataField = 'cid_codigo'
          DataSource = ds
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
          TabOrder = 5
          OnButtonClick = JvDBComboCidadeButtonClick
          OnChange = JvDBComboCidadeChange
          OnExit = JvDBComboCidadeExit
        end
        object edt_nome_cidade: TEdit
          Left = 198
          Top = 72
          Width = 236
          Height = 21
          TabStop = False
          Color = 14215660
          ReadOnly = True
          TabOrder = 7
        end
      end
      object DBRadioGroup: TDBRadioGroup
        Left = 608
        Top = 343
        Width = 102
        Height = 50
        BiDiMode = bdLeftToRight
        Caption = 'Status'
        DataField = 'cli_ativo'
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
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 4
        Values.Strings = (
          'sim'
          'nao')
      end
      object dbmemo_obsdiario: TDBMemo
        Left = 3
        Top = 348
        Width = 599
        Height = 44
        DataField = 'cli_observacao_diario'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      AlignWithMargins = True
      Caption = 'Dados Pessoais'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label20: TLabel
        Left = 3
        Top = 342
        Width = 83
        Height = 13
        Caption = 'Data Cadastro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 175
        Top = 342
        Width = 85
        Height = 13
        Caption = 'Data Altera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 3
        Width = 710
        Height = 214
        Caption = 'Dados Pessoais'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label22: TLabel
          Left = 16
          Top = 24
          Width = 72
          Height = 13
          Caption = 'Nome do Pai'
          FocusControl = dbe_nomepai
        end
        object Label23: TLabel
          Left = 368
          Top = 24
          Width = 78
          Height = 13
          Caption = 'Nome da M'#227'e'
          FocusControl = dbe_nomemae
        end
        object Label24: TLabel
          Left = 16
          Top = 112
          Width = 72
          Height = 13
          Caption = 'Naturalidade'
          FocusControl = dbe_naturalidade
        end
        object Label25: TLabel
          Left = 16
          Top = 157
          Width = 29
          Height = 13
          Caption = 'Sexo'
        end
        object Label26: TLabel
          Left = 143
          Top = 157
          Width = 67
          Height = 13
          Caption = 'Estado Civil'
        end
        object Label27: TLabel
          Left = 283
          Top = 157
          Width = 97
          Height = 13
          Caption = 'Data Nascimento'
        end
        object Label28: TLabel
          Left = 16
          Top = 69
          Width = 85
          Height = 13
          Caption = 'Nome Conjuge'
          FocusControl = dbe_nomeconjuge
        end
        object dbe_nomepai: TDBEdit
          Left = 16
          Top = 42
          Width = 330
          Height = 21
          DataField = 'cli_nomepai'
          DataSource = ds
          TabOrder = 0
        end
        object dbe_nomemae: TDBEdit
          Left = 368
          Top = 42
          Width = 330
          Height = 21
          DataField = 'cli_nomemae'
          DataSource = ds
          TabOrder = 1
        end
        object dbe_naturalidade: TDBEdit
          Left = 16
          Top = 128
          Width = 330
          Height = 21
          DataField = 'cli_naturalidade'
          DataSource = ds
          TabOrder = 3
        end
        object dbe_nomeconjuge: TDBEdit
          Left = 16
          Top = 85
          Width = 330
          Height = 21
          DataField = 'cli_nomeconj'
          DataSource = ds
          TabOrder = 2
        end
        object JvDBComboBoxSexo: TJvDBComboBox
          Left = 16
          Top = 173
          Width = 121
          Height = 21
          Color = 8454143
          DataField = 'cli_sexo'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Items.Strings = (
            'MASCULINO'
            'FEMININO')
          ParentFont = False
          TabOrder = 4
          Values.Strings = (
            'mas'
            'fem')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object JvDBComboBoxEstadoCivil: TJvDBComboBox
          Left = 143
          Top = 173
          Width = 121
          Height = 21
          Color = 8454143
          DataField = 'cli_estadocivil'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Items.Strings = (
            'CASADO'
            'DIVORCIADO'
            'SOLTEIRO'
            'SEPARADO'
            'VIUVO')
          ParentFont = False
          TabOrder = 5
          Values.Strings = (
            'cas'
            'div'
            'sol'
            'sep'
            'viu')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object JvDBDateNascimento: TJvDBDateEdit
          Left = 283
          Top = 173
          Width = 121
          Height = 21
          DataField = 'cli_datanascimento'
          DataSource = ds
          CheckOnExit = True
          TabOrder = 6
        end
      end
      object GroupBox5: TGroupBox
        Left = 3
        Top = 223
        Width = 710
        Height = 114
        Caption = 'Observa'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label29: TLabel
          Left = 16
          Top = 16
          Width = 74
          Height = 13
          Caption = 'Observa'#231#245'es'
        end
        object DBMemoOBS: TDBMemo
          Left = 16
          Top = 35
          Width = 682
          Height = 70
          DataField = 'cli_observacao'
          DataSource = ds
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object JvDBDateCadastro: TJvDBDateEdit
        Left = 3
        Top = 361
        Width = 150
        Height = 21
        DataField = 'cli_datacadastro'
        DataSource = ds
        ReadOnly = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object JvDBDateAlterado: TJvDBDateEdit
        Left = 175
        Top = 361
        Width = 150
        Height = 21
        DataField = 'cli_dataalterado'
        DataSource = ds
        ReadOnly = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Hist'#243'ricos'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grid: TJvDBUltimGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 713
        Height = 393
        Align = alClient
        DataSource = dsHistorico
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
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
            FieldName = 'ocr_codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ocr_datalancamento'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ocr_horalancamento'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ocr_item_codigo'
            Width = 50
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
            FieldName = 'ocr_item_nroprocesso'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'alu_matricula'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'alu_nome'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tp_descricao'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ocr_item_observacao'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Situacao'
            Title.Caption = 'Situa'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ocr_item_dataconclusao'
            Title.Caption = 'Data Concluido'
            Visible = True
          end>
      end
    end
  end
  object PanelBotoes: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 439
    Width = 727
    Height = 40
    Align = alBottom
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
      Left = 622
      Top = 3
      Width = 98
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
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object btnNovo: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 95
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
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnSalvar: TBitBtn
      AlignWithMargins = True
      Left = 104
      Top = 3
      Width = 95
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
      TabOrder = 1
      OnClick = btnSalvarClick
    end
    object btnExcluir: TBitBtn
      AlignWithMargins = True
      Left = 205
      Top = 3
      Width = 95
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
      Left = 306
      Top = 3
      Width = 95
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
    object btnPesquisar: TBitBtn
      AlignWithMargins = True
      Left = 407
      Top = 3
      Width = 95
      Height = 30
      Align = alLeft
      Caption = '&Pesquisar'
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
      TabOrder = 4
      OnClick = btnPesquisarClick
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 508
      Top = 3
      Width = 95
      Height = 30
      Align = alLeft
      Caption = '&Ficha'
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
      TabOrder = 6
      OnClick = BitBtn1Click
    end
  end
  object status: TStatusBar
    Left = 0
    Top = 482
    Width = 733
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object qry: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cli_codigo'
        ParamType = ptInput
      end>
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
      '  cli_observacao,'
      '  cli_observacao_diario'
      'FROM '
      ' clientes'
      'WHERE'
      ' cli_codigo=:cli_codigo')
    SQLConnection = DM.conn
    Left = 504
    Top = 8
    object qrycli_codigo: TIntegerField
      FieldName = 'cli_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycli_razao: TStringField
      FieldName = 'cli_razao'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object qrycli_fantasia: TStringField
      FieldName = 'cli_fantasia'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object qrycli_cep: TStringField
      FieldName = 'cli_cep'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object qryest_codigo: TStringField
      FieldName = 'est_codigo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qrycid_codigo: TStringField
      FieldName = 'cid_codigo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object qrycli_bairro: TStringField
      FieldName = 'cli_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qrycli_logradouro: TStringField
      FieldName = 'cli_logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qrycli_enderecoreferencia: TStringField
      FieldName = 'cli_enderecoreferencia'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qrycli_numero: TStringField
      FieldName = 'cli_numero'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object qrycli_fisicajuridica: TStringField
      FieldName = 'cli_fisicajuridica'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qrycli_cpfcnpj: TStringField
      FieldName = 'cli_cpfcnpj'
      ProviderFlags = [pfInUpdate]
    end
    object qrycli_rgie: TStringField
      FieldName = 'cli_rgie'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qrycli_telfixo: TStringField
      FieldName = 'cli_telfixo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object qrycli_telfax: TStringField
      FieldName = 'cli_telfax'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object qrycli_telcelular: TStringField
      FieldName = 'cli_telcelular'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object qrycli_contato: TStringField
      FieldName = 'cli_contato'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qrycli_email: TStringField
      FieldName = 'cli_email'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qrycli_ativo: TStringField
      FieldName = 'cli_ativo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qrycli_datacadastro: TDateField
      FieldName = 'cli_datacadastro'
      ProviderFlags = [pfInUpdate]
    end
    object qrycli_dataalterado: TDateField
      FieldName = 'cli_dataalterado'
      ProviderFlags = [pfInUpdate]
    end
    object qrycli_nomepai: TStringField
      FieldName = 'cli_nomepai'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qrycli_nomemae: TStringField
      FieldName = 'cli_nomemae'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qrycli_naturalidade: TStringField
      FieldName = 'cli_naturalidade'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qrycli_sexo: TStringField
      FieldName = 'cli_sexo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qrycli_estadocivil: TStringField
      FieldName = 'cli_estadocivil'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qrycli_datanascimento: TDateField
      FieldName = 'cli_datanascimento'
      ProviderFlags = [pfInUpdate]
    end
    object qrycli_nomeconj: TStringField
      FieldName = 'cli_nomeconj'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qrycli_observacao: TMemoField
      FieldName = 'cli_observacao'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object qrycli_observacao_diario: TMemoField
      FieldName = 'cli_observacao_diario'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsp: TDataSetProvider
    DataSet = qry
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 16
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'cli_codigo'
        ParamType = ptInput
      end>
    ProviderName = 'dsp'
    AfterOpen = cdsAfterOpen
    BeforePost = cdsBeforePost
    OnNewRecord = cdsNewRecord
    AfterApplyUpdates = cdsAfterApplyUpdates
    Left = 608
    Top = 8
    object cdscli_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cli_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdscli_razao: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'cli_razao'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdscli_fantasia: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'cli_fantasia'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdscli_cep: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'cli_cep'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object cdsest_codigo: TStringField
      DisplayLabel = 'UF'
      FieldName = 'est_codigo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdscid_codigo: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cid_codigo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object cdscli_bairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'cli_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdscli_logradouro: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'cli_logradouro'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdscli_enderecoreferencia: TStringField
      DisplayLabel = 'Ponto de Refer'#234'ncia'
      FieldName = 'cli_enderecoreferencia'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdscli_numero: TStringField
      DisplayLabel = 'Nro'
      FieldName = 'cli_numero'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object cdscli_fisicajuridica: TStringField
      DisplayLabel = 'Tipo Pessoa'
      FieldName = 'cli_fisicajuridica'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdscli_cpfcnpj: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'cli_cpfcnpj'
      ProviderFlags = [pfInUpdate]
    end
    object cdscli_rgie: TStringField
      DisplayLabel = 'RG/IE'
      FieldName = 'cli_rgie'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdscli_telfixo: TStringField
      DisplayLabel = 'Fone Fixo'
      FieldName = 'cli_telfixo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object cdscli_telfax: TStringField
      DisplayLabel = 'Fone Fax'
      FieldName = 'cli_telfax'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object cdscli_telcelular: TStringField
      DisplayLabel = 'Fone Celular'
      FieldName = 'cli_telcelular'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object cdscli_contato: TStringField
      DisplayLabel = 'Nome do Contato'
      FieldName = 'cli_contato'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdscli_email: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'cli_email'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdscli_ativo: TStringField
      DisplayLabel = 'Staus'
      FieldName = 'cli_ativo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdscli_datacadastro: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'cli_datacadastro'
      ProviderFlags = [pfInUpdate]
    end
    object cdscli_dataalterado: TDateField
      DisplayLabel = 'Data Altera'#231#227'o'
      FieldName = 'cli_dataalterado'
      ProviderFlags = [pfInUpdate]
    end
    object cdscli_nomepai: TStringField
      DisplayLabel = 'Nome do Pai'
      FieldName = 'cli_nomepai'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdscli_nomemae: TStringField
      DisplayLabel = 'Nome da M'#227'e'
      FieldName = 'cli_nomemae'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdscli_naturalidade: TStringField
      DisplayLabel = 'Naturalidade'
      FieldName = 'cli_naturalidade'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdscli_sexo: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'cli_sexo'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdscli_estadocivil: TStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'cli_estadocivil'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdscli_datanascimento: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'cli_datanascimento'
      ProviderFlags = [pfInUpdate]
    end
    object cdscli_nomeconj: TStringField
      DisplayLabel = 'Nome Conjuge'
      FieldName = 'cli_nomeconj'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdscli_observacao: TMemoField
      FieldName = 'cli_observacao'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdscli_observacao_diario: TMemoField
      FieldName = 'cli_observacao_diario'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
  object ds: TDataSource
    DataSet = cds
    OnStateChange = dsStateChange
    Left = 672
    Top = 16
  end
  object QryHistorico: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftLargeint
        Name = 'oc.alu_matricula'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  oci.cliente_codigo,  '
      '  oc.ocr_datalancamento,'
      '  oc.ocr_horalancamento,'
      '  oci.ocr_codigo,'
      '  oci.ocr_item_codigo,'
      '  oci.ocr_item_datalancamento,'
      '  oc.alu_matricula,'
      '  a.alu_nome,'
      '  oci.tipo_codigo,'
      '  oci.ocr_item_nroprocesso,'
      '  oci.ocr_item_observacao,'
      '  oci.ocr_item_cargahoraria,'
      '  tp.tp_descricao,'
      '  oci.ocr_item_status,'
      '  oci.ocr_item_dataconclusao,'
      '  oci.ocr_item_horalancamento,'
      '  oci.ocr_item_horaconclusao,'
      
        '  CASE WHEN oci.ocr_item_status = '#39'con'#39' THEN '#39'CONCLUIDO'#39' ELSE '#39'A' +
        'NDAMENTO'#39' END AS '#39'Situacao'#39
      'FROM '
      '  ocorrencia_itens oci'
      ' INNER JOIN ocorrencia oc ON(oc.ocr_codigo=oci.ocr_codigo)'
      ' INNER JOIN alunos a ON(a.alu_matricula =oc.alu_matricula)'
      ' INNER JOIN tipo_processo tp ON(tp.tp_codigo=oci.tipo_codigo)'
      'WHERE'
      '  oci.cliente_codigo=:oci.cliente_codigo'
      'ORDER BY'
      '   oc.ocr_codigo DESC, oci.ocr_item_codigo ASC')
    SQLConnection = DM.conn
    Left = 256
    Top = 176
    object QryHistoricocliente_codigo: TIntegerField
      FieldName = 'cliente_codigo'
      ProviderFlags = []
    end
    object QryHistoricoocr_datalancamento: TDateField
      FieldName = 'ocr_datalancamento'
      ProviderFlags = []
    end
    object QryHistoricoocr_horalancamento: TStringField
      FieldName = 'ocr_horalancamento'
      ProviderFlags = []
      FixedChar = True
      Size = 5
    end
    object QryHistoricoocr_codigo: TIntegerField
      FieldName = 'ocr_codigo'
      ProviderFlags = []
    end
    object QryHistoricoocr_item_codigo: TIntegerField
      FieldName = 'ocr_item_codigo'
      ProviderFlags = []
    end
    object QryHistoricoocr_item_datalancamento: TDateField
      FieldName = 'ocr_item_datalancamento'
      ProviderFlags = []
    end
    object QryHistoricoalu_matricula: TLargeintField
      FieldName = 'alu_matricula'
      ProviderFlags = []
      Required = True
    end
    object QryHistoricoalu_nome: TStringField
      FieldName = 'alu_nome'
      ProviderFlags = []
      Size = 100
    end
    object QryHistoricotipo_codigo: TIntegerField
      FieldName = 'tipo_codigo'
      ProviderFlags = []
    end
    object QryHistoricoocr_item_nroprocesso: TStringField
      FieldName = 'ocr_item_nroprocesso'
      ProviderFlags = []
      Size = 30
    end
    object QryHistoricoocr_item_observacao: TMemoField
      FieldName = 'ocr_item_observacao'
      ProviderFlags = []
      BlobType = ftMemo
      Size = 1
    end
    object QryHistoricoocr_item_cargahoraria: TFloatField
      FieldName = 'ocr_item_cargahoraria'
      ProviderFlags = []
    end
    object QryHistoricotp_descricao: TStringField
      FieldName = 'tp_descricao'
      ProviderFlags = []
      Size = 50
    end
    object QryHistoricoocr_item_status: TStringField
      FieldName = 'ocr_item_status'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object QryHistoricoocr_item_dataconclusao: TDateField
      FieldName = 'ocr_item_dataconclusao'
      ProviderFlags = []
    end
    object QryHistoricoocr_item_horalancamento: TStringField
      FieldName = 'ocr_item_horalancamento'
      ProviderFlags = []
      FixedChar = True
      Size = 5
    end
    object QryHistoricoocr_item_horaconclusao: TStringField
      FieldName = 'ocr_item_horaconclusao'
      ProviderFlags = []
      FixedChar = True
      Size = 5
    end
    object QryHistoricoSituacao: TStringField
      FieldName = 'Situacao'
      ProviderFlags = []
      Size = 9
    end
  end
  object dspHistorico: TDataSetProvider
    DataSet = QryHistorico
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 176
  end
  object cdsHistorico: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <
      item
        DataType = ftLargeint
        Name = 'oc.alu_matricula'
        ParamType = ptInput
      end>
    ProviderName = 'dspHistorico'
    Left = 400
    Top = 176
    object cdsHistoricocliente_codigo: TIntegerField
      FieldName = 'cliente_codigo'
      ProviderFlags = []
    end
    object cdsHistoricoocr_datalancamento: TDateField
      DisplayLabel = 'Data L'#231'to'
      FieldName = 'ocr_datalancamento'
      ProviderFlags = []
    end
    object cdsHistoricoocr_horalancamento: TStringField
      DisplayLabel = 'Hora L'#231'to'
      FieldName = 'ocr_horalancamento'
      ProviderFlags = []
      FixedChar = True
      Size = 5
    end
    object cdsHistoricoocr_codigo: TIntegerField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'ocr_codigo'
      ProviderFlags = []
    end
    object cdsHistoricoocr_item_codigo: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ocr_item_codigo'
      ProviderFlags = []
    end
    object cdsHistoricoocr_item_datalancamento: TDateField
      DisplayLabel = 'Item Data L'#231'to'
      FieldName = 'ocr_item_datalancamento'
      ProviderFlags = []
    end
    object cdsHistoricoalu_matricula: TLargeintField
      FieldName = 'alu_matricula'
      ProviderFlags = []
      Required = True
    end
    object cdsHistoricoalu_nome: TStringField
      DisplayLabel = 'Nome Acad'#234'mico'
      FieldName = 'alu_nome'
      ProviderFlags = []
      Size = 100
    end
    object cdsHistoricotipo_codigo: TIntegerField
      FieldName = 'tipo_codigo'
      ProviderFlags = []
    end
    object cdsHistoricoocr_item_nroprocesso: TStringField
      DisplayLabel = 'Item Nro Processo'
      FieldName = 'ocr_item_nroprocesso'
      ProviderFlags = []
      Size = 30
    end
    object cdsHistoricoocr_item_observacao: TMemoField
      DisplayLabel = 'Item Observa'#231#227'o'
      FieldName = 'ocr_item_observacao'
      ProviderFlags = []
      BlobType = ftMemo
      Size = 1
    end
    object cdsHistoricoocr_item_cargahoraria: TFloatField
      DisplayLabel = 'Item C.Hor'#225'ria'
      FieldName = 'ocr_item_cargahoraria'
      ProviderFlags = []
    end
    object cdsHistoricotp_descricao: TStringField
      DisplayLabel = 'Tipo Processo'
      FieldName = 'tp_descricao'
      ProviderFlags = []
      Size = 50
    end
    object cdsHistoricoocr_item_status: TStringField
      FieldName = 'ocr_item_status'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object cdsHistoricoocr_item_dataconclusao: TDateField
      FieldName = 'ocr_item_dataconclusao'
      ProviderFlags = []
    end
    object cdsHistoricoocr_item_horalancamento: TStringField
      FieldName = 'ocr_item_horalancamento'
      ProviderFlags = []
      FixedChar = True
      Size = 5
    end
    object cdsHistoricoocr_item_horaconclusao: TStringField
      FieldName = 'ocr_item_horaconclusao'
      ProviderFlags = []
      FixedChar = True
      Size = 5
    end
    object cdsHistoricoSituacao: TStringField
      FieldName = 'Situacao'
      ProviderFlags = []
      Size = 9
    end
  end
  object dsHistorico: TDataSource
    DataSet = cdsHistorico
    Left = 472
    Top = 176
  end
  object frxDBDatasetClienteFicha: TfrxDBDataset
    UserName = 'frxDBDatasetClienteFicha'
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
      'cli_observacao=cli_observacao'
      'cli_observacao_diario=cli_observacao_diario')
    DataSet = qry
    BCDToCurrency = False
    Left = 352
    Top = 24
  end
end
