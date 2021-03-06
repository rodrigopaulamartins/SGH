object FCadastroEmpresa: TFCadastroEmpresa
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Empresa'
  ClientHeight = 470
  ClientWidth = 905
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_topo: TPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 10
      Width = 182
      Height = 19
      Caption = 'CADASTRO DA EMPRESA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object btn_fechar: TSpeedButton
      Left = 877
      Top = 0
      Width = 28
      Height = 46
      Align = alRight
      ImageIndex = 1
      Images = ImageList1
      Flat = True
      OnClick = btn_fecharClick
      ExplicitLeft = 744
      ExplicitHeight = 33
    end
    object Bevel1: TBevel
      Left = 545
      Top = 0
      Width = 3
      Height = 46
      Align = alRight
      Style = bsRaised
      ExplicitLeft = 411
      ExplicitHeight = 33
    end
    object pnl_btnconfirmar: TPanel
      Left = 416
      Top = 0
      Width = 129
      Height = 46
      Align = alRight
      BevelInner = bvRaised
      BevelOuter = bvNone
      BevelWidth = 2
      Caption = 'Confirmar'
      Color = 16744448
      ParentBackground = False
      TabOrder = 0
      OnClick = pnl_btnconfirmarClick
      OnMouseDown = pnl_btnconfirmarMouseDown
      OnMouseMove = pnl_btnconfirmarMouseMove
    end
    object pnl_btncancelar: TPanel
      Left = 548
      Top = 0
      Width = 129
      Height = 46
      Align = alRight
      BevelInner = bvRaised
      BevelOuter = bvNone
      Caption = 'Cancelar'
      Color = 16119285
      ParentBackground = False
      TabOrder = 1
      OnClick = pnl_btncancelarClick
      OnMouseMove = pnl_btnconfirmarMouseMove
    end
    object Panel4: TPanel
      Left = 677
      Top = 0
      Width = 200
      Height = 46
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  object pnl_cadastro: TPanel
    Left = 0
    Top = 46
    Width = 905
    Height = 424
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    OnMouseMove = pnl_cadastroMouseMove
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 905
      Height = 424
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados Gerais'
        object Label2: TLabel
          Left = 205
          Top = 63
          Width = 48
          Height = 15
          Caption = 'C'#243'digo *'
          FocusControl = DBEdit1
        end
        object Label3: TLabel
          Left = 302
          Top = 63
          Width = 108
          Height = 15
          Caption = 'Data do Cadastro *'
          FocusControl = DBEdit1
        end
        object Label4: TLabel
          Left = 486
          Top = 63
          Width = 34
          Height = 15
          Caption = 'Tipo *'
          FocusControl = DBEdit1
        end
        object Label5: TLabel
          Left = 205
          Top = 129
          Width = 95
          Height = 15
          Caption = 'Nome Fantasia *'
          FocusControl = DBEdit3
        end
        object Label6: TLabel
          Left = 486
          Top = 129
          Width = 83
          Height = 15
          Caption = 'Raz'#227'o Social *'
          FocusControl = DBEdit4
        end
        object Label7: TLabel
          Left = 205
          Top = 197
          Width = 41
          Height = 15
          Caption = 'CNPJ *'
          FocusControl = DBEdit5
        end
        object Label8: TLabel
          Left = 486
          Top = 197
          Width = 106
          Height = 15
          Caption = 'Inscri'#231#227'o Estadual'
          FocusControl = DBEdit6
        end
        object Label9: TLabel
          Left = 689
          Top = 197
          Width = 112
          Height = 15
          Caption = 'Inscri'#231#227'o Municipal'
          FocusControl = DBEdit7
        end
        object Label10: TLabel
          Left = 205
          Top = 261
          Width = 106
          Height = 15
          Caption = 'Inscri'#231#227'o Suframa'
          FocusControl = DBEdit8
        end
        object Label11: TLabel
          Left = 486
          Top = 261
          Width = 87
          Height = 15
          Caption = 'Registro Secex'
          FocusControl = DBEdit9
        end
        object Label12: TLabel
          Left = 205
          Top = 325
          Width = 117
          Height = 15
          Caption = 'Situa'#231#227'o Cadastral *'
          FocusControl = DBEdit1
        end
        object Label13: TLabel
          Left = 486
          Top = 325
          Width = 176
          Height = 15
          Caption = 'Motivo da Situa'#231#227'o Cadastral *'
          FocusControl = DBEdit1
        end
        object Label14: TLabel
          Left = 764
          Top = 325
          Width = 90
          Height = 15
          Caption = 'Data Inativa'#231#227'o'
          FocusControl = DBEdit10
        end
        object DBEdit1: TDBEdit
          Left = 205
          Top = 79
          Width = 81
          Height = 23
          TabStop = False
          DataField = 'codigo'
          DataSource = DEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 486
          Top = 79
          Width = 393
          Height = 23
          DataField = 'idtipo_empresa'
          DataSource = DEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = DPesqTipo
          ParentFont = False
          TabOrder = 2
          OnEnter = DBLookupComboBox1Enter
          OnExit = DBLookupComboBox1Exit
        end
        object DBEdit2: TDBEdit
          Left = 302
          Top = 79
          Width = 168
          Height = 23
          DataField = 'dt_inclusao'
          DataSource = DEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnEnter = DBEdit2Enter
          OnExit = DBEdit2Exit
        end
        object DBEdit3: TDBEdit
          Left = 205
          Top = 145
          Width = 265
          Height = 23
          DataField = 'nome_fantasia'
          DataSource = DEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnEnter = DBEdit3Enter
          OnExit = DBEdit3Exit
        end
        object DBEdit4: TDBEdit
          Left = 486
          Top = 145
          Width = 393
          Height = 23
          DataField = 'razao_social'
          DataSource = DEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnEnter = DBEdit4Enter
          OnExit = DBEdit4Exit
        end
        object DBEdit5: TDBEdit
          Left = 205
          Top = 213
          Width = 265
          Height = 23
          DataField = 'cnpj_cei'
          DataSource = DEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnEnter = DBEdit5Enter
          OnExit = DBEdit5Exit
        end
        object DBEdit6: TDBEdit
          Left = 486
          Top = 213
          Width = 187
          Height = 23
          DataField = 'insc_estadual'
          DataSource = DEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnEnter = DBEdit6Enter
          OnExit = DBEdit6Exit
        end
        object DBEdit7: TDBEdit
          Left = 689
          Top = 213
          Width = 190
          Height = 23
          DataField = 'insc_municipal'
          DataSource = DEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnEnter = DBEdit7Enter
          OnExit = DBEdit7Exit
        end
        object DBEdit8: TDBEdit
          Left = 205
          Top = 277
          Width = 265
          Height = 23
          DataField = 'insc_suframa'
          DataSource = DEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnEnter = DBEdit8Enter
          OnExit = DBEdit8Exit
        end
        object DBEdit9: TDBEdit
          Left = 486
          Top = 277
          Width = 393
          Height = 23
          DataField = 'reg_secex'
          DataSource = DEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnEnter = DBEdit9Enter
          OnExit = DBEdit9Exit
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 205
          Top = 341
          Width = 265
          Height = 23
          DataField = 'situacao_cadastral'
          DataSource = DEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = DSitCadastral
          ParentFont = False
          TabOrder = 10
          OnEnter = DBLookupComboBox2Enter
          OnExit = DBLookupComboBox2Exit
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 486
          Top = 341
          Width = 262
          Height = 23
          DataField = 'idmotivo_situacao_cadastral'
          DataSource = DEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = DPesqMotivo
          ParentFont = False
          TabOrder = 11
          OnEnter = DBLookupComboBox3Enter
          OnExit = DBLookupComboBox3Exit
        end
        object DBEdit10: TDBEdit
          Left = 764
          Top = 341
          Width = 115
          Height = 23
          DataField = 'dt_inativacao'
          DataSource = DEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnEnter = DBEdit10Enter
          OnExit = DBEdit10Exit
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Endere'#231'o'
        ImageIndex = 1
        object Label15: TLabel
          Left = 205
          Top = 79
          Width = 23
          Height = 15
          Caption = 'CEP'
          FocusControl = DBEdit11
        end
        object Label16: TLabel
          Left = 205
          Top = 146
          Width = 54
          Height = 15
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit12
        end
        object Label17: TLabel
          Left = 560
          Top = 146
          Width = 79
          Height = 15
          Caption = 'Complemento'
          FocusControl = DBEdit13
        end
        object Label18: TLabel
          Left = 769
          Top = 146
          Width = 46
          Height = 15
          Caption = 'N'#250'mero'
          FocusControl = DBEdit14
        end
        object Label19: TLabel
          Left = 205
          Top = 213
          Width = 35
          Height = 15
          Caption = 'Bairro'
          FocusControl = DBEdit15
        end
        object Label20: TLabel
          Left = 560
          Top = 215
          Width = 39
          Height = 15
          Caption = 'Cidade'
          FocusControl = DBEdit1
        end
        object Label21: TLabel
          Left = 846
          Top = 215
          Width = 39
          Height = 15
          Caption = 'Estado'
          FocusControl = DBEdit16
        end
        object Label22: TLabel
          Left = 205
          Top = 280
          Width = 60
          Height = 15
          Caption = 'Telefone 1'
          FocusControl = DBEdit17
        end
        object Label23: TLabel
          Left = 560
          Top = 280
          Width = 60
          Height = 15
          Caption = 'Telefone 2'
          FocusControl = DBEdit18
        end
        object DBEdit11: TDBEdit
          Left = 205
          Top = 97
          Width = 121
          Height = 23
          DataField = 'cep'
          DataSource = DEmpresa
          TabOrder = 0
          OnEnter = DBEdit11Enter
          OnExit = DBEdit11Exit
        end
        object DBEdit12: TDBEdit
          Left = 205
          Top = 164
          Width = 339
          Height = 23
          DataField = 'endereco'
          DataSource = DEmpresa
          TabOrder = 1
          OnEnter = DBEdit12Enter
          OnExit = DBEdit12Exit
        end
        object DBEdit13: TDBEdit
          Left = 560
          Top = 164
          Width = 193
          Height = 23
          DataField = 'complemento'
          DataSource = DEmpresa
          TabOrder = 2
          OnEnter = DBEdit13Enter
          OnExit = DBEdit13Exit
        end
        object DBEdit14: TDBEdit
          Left = 769
          Top = 164
          Width = 116
          Height = 23
          DataField = 'numero'
          DataSource = DEmpresa
          TabOrder = 3
          OnEnter = DBEdit14Enter
          OnExit = DBEdit14Exit
        end
        object DBEdit15: TDBEdit
          Left = 205
          Top = 231
          Width = 339
          Height = 23
          DataField = 'bairro'
          DataSource = DEmpresa
          TabOrder = 4
          OnEnter = DBEdit15Enter
          OnExit = DBEdit15Exit
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 560
          Top = 231
          Width = 270
          Height = 23
          DataField = 'idcidade'
          DataSource = DEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = DPesqCidade
          ParentFont = False
          TabOrder = 5
          OnEnter = DBLookupComboBox4Enter
          OnExit = DBLookupComboBox4Exit
        end
        object DBEdit16: TDBEdit
          Left = 846
          Top = 231
          Width = 39
          Height = 23
          DataField = 'estado'
          DataSource = DEmpresa
          TabOrder = 6
          OnEnter = DBEdit16Enter
          OnExit = DBEdit16Exit
        end
        object DBEdit17: TDBEdit
          Left = 205
          Top = 298
          Width = 339
          Height = 23
          DataField = 'telefone1'
          DataSource = DEmpresa
          TabOrder = 7
          OnEnter = DBEdit17Enter
          OnExit = DBEdit17Exit
        end
        object DBEdit18: TDBEdit
          Left = 560
          Top = 298
          Width = 325
          Height = 23
          DataField = 'telefone2'
          DataSource = DEmpresa
          TabOrder = 8
          OnEnter = DBEdit18Enter
          OnExit = DBEdit18Exit
        end
      end
    end
  end
  object ImageList1: TImageList
    BlendColor = clHighlightText
    BkColor = clWhite
    Left = 577
    Bitmap = {
      494C010102000800040010001000FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF433F3CFFFFFFFFFFFFFFFFFF433F3CFF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E3E3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6
      D5FF292521FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C8
      C7FF292521FF292521FF292521FFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFAEADABFF292521FF292521FF292521FF292521FF292521FF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFF1F1F1FFFFFFFFFF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
      21FF292521FFFFFFFFFFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF292521FF292521FF292521FF292521FF292521FFAEADABFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF292521FF292521FFFFFF
      FFFF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
      21FFFFFFFFFF292521FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF292521FF292521FF292521FF292521FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF36322EFF292521FF3531
      2EFFFFFFFFFF292521FF292521FF292521FF292521FF292521FF292521FFFFFF
      FFFF35312EFF292521FF36322EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAEADABFF292521FF292521FF292521FF292521FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF292521FF2925
      21FF292521FFFFFFFFFF292521FF292521FF292521FF292521FFFFFFFFFF2925
      21FF292521FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF292521FF292521FF292521FF292521FF292521FF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FFFFFFFFFF292521FF292521FFFFFFFFFF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF292521FF292521FF292521FFFFFFFFFFAEADABFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF292521FF292521FF35312EFFFFFFFFFFFFFFFFFF35312EFF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FFAEADABFFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF949290FF292521FF292521FF292521FF292521FF949290FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF36322EFFAEADABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF36322EFFD6D6
      D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF514E4AFF292521FF292521FF514E4AFFFFFFFFFF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6966FF6C6966FFFFFFFFFFFFFFFFFF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object QEmpresa: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM CAD_EMPRESA'
      'LIMIT 1')
    Params = <>
    Left = 208
    object QEmpresacodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QEmpresanome_fantasia: TWideStringField
      FieldName = 'nome_fantasia'
      Size = 100
    end
    object QEmpresarazao_social: TWideStringField
      FieldName = 'razao_social'
      Size = 100
    end
    object QEmpresaidtp_logradouro: TIntegerField
      FieldName = 'idtp_logradouro'
    end
    object QEmpresaendereco: TWideStringField
      FieldName = 'endereco'
      Size = 70
    end
    object QEmpresanumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object QEmpresacomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 30
    end
    object QEmpresacep: TWideStringField
      FieldName = 'cep'
      EditMask = '99999\-999;1;_'
      Size = 9
    end
    object QEmpresaestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object QEmpresaidcidade: TIntegerField
      FieldName = 'idcidade'
    end
    object QEmpresaidtp_inscricao: TIntegerField
      FieldName = 'idtp_inscricao'
    end
    object QEmpresacnpj_cei: TWideStringField
      FieldName = 'cnpj_cei'
      Size = 18
    end
    object QEmpresainsc_municipal: TWideStringField
      FieldName = 'insc_municipal'
    end
    object QEmpresainsc_suframa: TWideStringField
      FieldName = 'insc_suframa'
    end
    object QEmpresareg_secex: TWideStringField
      FieldName = 'reg_secex'
    end
    object QEmpresaidtipo_empresa: TIntegerField
      FieldName = 'idtipo_empresa'
    end
    object QEmpresaidmotivo_situacao_cadastral: TIntegerField
      FieldName = 'idmotivo_situacao_cadastral'
    end
    object QEmpresadt_inativacao: TDateField
      FieldName = 'dt_inativacao'
      EditMask = '!99/99/9999;1;_'
    end
    object QEmpresasit_inicioperiodo: TIntegerField
      FieldName = 'sit_inicioperiodo'
    end
    object QEmpresadt_inclusao: TDateField
      FieldName = 'dt_inclusao'
      EditMask = '!99/99/9999;1;_'
    end
    object QEmpresainsc_estadual: TWideStringField
      FieldName = 'insc_estadual'
    end
    object QEmpresasituacao_cadastral: TIntegerField
      FieldName = 'situacao_cadastral'
    end
    object QEmpresatelefone1: TWideStringField
      FieldName = 'telefone1'
    end
    object QEmpresatelefone2: TWideStringField
      FieldName = 'telefone2'
      Size = 10
    end
    object QEmpresabairro: TWideStringField
      FieldName = 'bairro'
      Size = 30
    end
  end
  object DEmpresa: TDataSource
    DataSet = QEmpresa
    Left = 240
  end
  object DPesqTipo: TDataSource
    DataSet = QPesqTipo
    Left = 236
    Top = 48
  end
  object QPesqTipo: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_TIPOEMP')
    Params = <>
    Left = 204
    Top = 48
    object QPesqTipocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqTipodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
  object QPesqSitCadastral: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_EMPSITUACAO')
    Params = <>
    Left = 276
    Top = 48
    object QPesqSitCadastralcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqSitCadastraldescricao: TWideStringField
      FieldName = 'descricao'
    end
  end
  object DSitCadastral: TDataSource
    DataSet = QPesqSitCadastral
    Left = 316
    Top = 48
  end
  object QPesqMotivo: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_EMPMOTIVO')
    Params = <>
    Left = 348
    object QPesqMotivocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqMotivodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object QPesqMotivoobservacao: TWideStringField
      FieldName = 'observacao'
      Size = 100
    end
    object QPesqMotivodt_inativo: TDateField
      FieldName = 'dt_inativo'
    end
    object QPesqMotivoinativo: TWideStringField
      FieldName = 'inativo'
      Size = 1
    end
  end
  object DPesqMotivo: TDataSource
    DataSet = QPesqMotivo
    Left = 388
  end
  object QPesqCidade: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_CIDADES'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 276
    object QPesqCidadecodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqCidadedescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object QPesqCidadecod_ibge: TWideStringField
      FieldName = 'cod_ibge'
      Size = 10
    end
    object QPesqCidadeestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
  end
  object DPesqCidade: TDataSource
    DataSet = QPesqCidade
    Left = 316
  end
end
