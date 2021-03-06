object FInclusaoAlteracaoCliente: TFInclusaoAlteracaoCliente
  Left = 0
  Top = 0
  BorderIcons = []
  ClientHeight = 429
  ClientWidth = 916
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TPanel
    Left = 0
    Top = 46
    Width = 916
    Height = 383
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 80
      Top = 40
      Width = 39
      Height = 15
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 80
      Top = 95
      Width = 69
      Height = 15
      Caption = 'CPF/CNPJ *'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 244
      Top = 97
      Width = 83
      Height = 15
      Caption = 'Raz'#227'o Social *'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 564
      Top = 97
      Width = 95
      Height = 15
      Caption = 'Nome Fantasia *'
      FocusControl = DBEdit4
    end
    object Label27: TLabel
      Left = 212
      Top = 147
      Width = 94
      Height = 15
      Caption = 'Tipo Logradouro'
    end
    object Label6: TLabel
      Left = 376
      Top = 149
      Width = 54
      Height = 15
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit5
    end
    object Label7: TLabel
      Left = 784
      Top = 149
      Width = 46
      Height = 15
      Caption = 'N'#250'mero'
      FocusControl = DBEdit6
    end
    object Label8: TLabel
      Left = 80
      Top = 199
      Width = 79
      Height = 15
      Caption = 'Complemento'
      FocusControl = DBEdit7
    end
    object Label9: TLabel
      Left = 80
      Top = 147
      Width = 23
      Height = 15
      Caption = 'CEP'
      FocusControl = DBEdit8
    end
    object Label10: TLabel
      Left = 300
      Top = 201
      Width = 35
      Height = 15
      Caption = 'Bairro'
      FocusControl = DBEdit9
    end
    object Label26: TLabel
      Left = 564
      Top = 199
      Width = 39
      Height = 15
      Caption = 'Cidade'
      FocusControl = DBEdit8
    end
    object Label11: TLabel
      Left = 843
      Top = 201
      Width = 16
      Height = 15
      Caption = 'UF'
      FocusControl = DBEdit10
    end
    object Label12: TLabel
      Left = 80
      Top = 251
      Width = 27
      Height = 15
      Caption = 'DDD'
      FocusControl = DBEdit11
    end
    object Label13: TLabel
      Left = 121
      Top = 253
      Width = 60
      Height = 15
      Caption = 'Telefone 1'
      FocusControl = DBEdit12
    end
    object Label14: TLabel
      Left = 300
      Top = 251
      Width = 27
      Height = 15
      Caption = 'DDD'
      FocusControl = DBEdit13
    end
    object Label15: TLabel
      Left = 341
      Top = 251
      Width = 50
      Height = 15
      Caption = 'Telefone'
      FocusControl = DBEdit14
    end
    object Label16: TLabel
      Left = 520
      Top = 253
      Width = 44
      Height = 15
      Caption = 'Contato'
      FocusControl = DBEdit15
    end
    object Label17: TLabel
      Left = 80
      Top = 303
      Width = 37
      Height = 15
      Caption = 'E-mail'
      FocusControl = DBEdit16
    end
    object Label18: TLabel
      Left = 341
      Top = 305
      Width = 57
      Height = 15
      Caption = 'Site (URL)'
      FocusControl = DBEdit17
    end
    object Label19: TLabel
      Left = 614
      Top = 303
      Width = 97
      Height = 15
      Caption = 'Ramo atividade *'
      FocusControl = DBEdit8
    end
    object Edit1: TEdit
      Left = 64
      Top = 350
      Width = 121
      Height = 23
      TabOrder = 0
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 80
      Top = 56
      Width = 81
      Height = 23
      TabStop = False
      DataField = 'codigo'
      DataSource = DCadCliente
      ReadOnly = True
      TabOrder = 1
    end
    object DBCheckBox1: TDBCheckBox
      Left = 192
      Top = 40
      Width = 81
      Height = 17
      Caption = 'Cliente?'
      DataField = 'cliente'
      DataSource = DCadCliente
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 192
      Top = 63
      Width = 97
      Height = 17
      Caption = 'Fornecedor?'
      DataField = 'fornecedor'
      DataSource = DCadCliente
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox3: TDBCheckBox
      Left = 312
      Top = 40
      Width = 113
      Height = 17
      Caption = 'Pessoa f'#237'sica?'
      DataField = 'pessoa_fisica'
      DataSource = DCadCliente
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox4: TDBCheckBox
      Left = 312
      Top = 63
      Width = 153
      Height = 17
      Caption = 'Prestador de servi'#231'o?'
      DataField = 'prestador_servico'
      DataSource = DCadCliente
      TabOrder = 5
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox5: TDBCheckBox
      Left = 813
      Top = 40
      Width = 60
      Height = 17
      Caption = 'Inativo'
      DataField = 'inativo'
      DataSource = DCadCliente
      TabOrder = 6
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEdit2: TDBEdit
      Left = 80
      Top = 113
      Width = 153
      Height = 23
      DataField = 'cpf_cnpj'
      DataSource = DCadCliente
      TabOrder = 7
      OnEnter = DBEdit2Enter
      OnExit = DBEdit2Exit
    end
    object DBEdit3: TDBEdit
      Left = 244
      Top = 113
      Width = 309
      Height = 23
      DataField = 'razao_social'
      DataSource = DCadCliente
      TabOrder = 8
      OnEnter = DBEdit3Enter
      OnExit = DBEdit3Exit
    end
    object DBEdit4: TDBEdit
      Left = 564
      Top = 113
      Width = 309
      Height = 23
      DataField = 'nome_fantasia'
      DataSource = DCadCliente
      TabOrder = 9
      OnEnter = DBEdit4Enter
      OnExit = DBEdit4Exit
    end
    object DBLookupComboBox10: TDBLookupComboBox
      Left = 212
      Top = 165
      Width = 153
      Height = 23
      DataField = 'idtplogradouro'
      DataSource = DCadCliente
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = DPesqTpLogradouro
      TabOrder = 11
      OnEnter = DBLookupComboBox10Enter
      OnExit = DBLookupComboBox10Exit
    end
    object DBEdit5: TDBEdit
      Left = 371
      Top = 165
      Width = 402
      Height = 23
      DataField = 'endereco'
      DataSource = DCadCliente
      TabOrder = 12
      OnEnter = DBEdit5Enter
      OnExit = DBEdit5Exit
    end
    object DBEdit6: TDBEdit
      Left = 784
      Top = 165
      Width = 89
      Height = 23
      DataField = 'numero'
      DataSource = DCadCliente
      TabOrder = 13
      OnEnter = DBEdit6Enter
      OnExit = DBEdit6Exit
    end
    object DBEdit7: TDBEdit
      Left = 80
      Top = 217
      Width = 209
      Height = 23
      DataField = 'complemento'
      DataSource = DCadCliente
      TabOrder = 14
      OnEnter = DBEdit7Enter
      OnExit = DBEdit7Exit
    end
    object DBEdit8: TDBEdit
      Left = 80
      Top = 165
      Width = 121
      Height = 23
      DataField = 'cep'
      DataSource = DCadCliente
      TabOrder = 10
      OnEnter = DBEdit8Enter
      OnExit = DBEdit8Exit
    end
    object DBEdit9: TDBEdit
      Left = 300
      Top = 217
      Width = 253
      Height = 23
      DataField = 'bairro'
      DataSource = DCadCliente
      TabOrder = 15
      OnEnter = DBEdit9Enter
      OnExit = DBEdit9Exit
    end
    object DBLookupComboBox9: TDBLookupComboBox
      Left = 564
      Top = 217
      Width = 268
      Height = 23
      DataField = 'idcidade'
      DataSource = DCadCliente
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = DPesqCidade
      TabOrder = 16
      OnEnter = DBLookupComboBox9Enter
      OnExit = DBLookupComboBox9Exit
    end
    object DBEdit10: TDBEdit
      Left = 843
      Top = 217
      Width = 30
      Height = 23
      DataField = 'uf'
      DataSource = DCadCliente
      TabOrder = 17
      OnEnter = DBEdit10Enter
      OnExit = DBEdit10Exit
    end
    object DBEdit11: TDBEdit
      Left = 80
      Top = 269
      Width = 30
      Height = 23
      DataField = 'ddd'
      DataSource = DCadCliente
      TabOrder = 18
      OnEnter = DBEdit11Enter
      OnExit = DBEdit11Exit
    end
    object DBEdit12: TDBEdit
      Left = 121
      Top = 269
      Width = 168
      Height = 23
      DataField = 'telefone1'
      DataSource = DCadCliente
      TabOrder = 19
      OnEnter = DBEdit12Enter
      OnExit = DBEdit12Exit
    end
    object DBEdit13: TDBEdit
      Left = 300
      Top = 269
      Width = 30
      Height = 23
      DataField = 'ddd1'
      DataSource = DCadCliente
      TabOrder = 20
      OnEnter = DBEdit13Enter
      OnExit = DBEdit13Exit
    end
    object DBEdit14: TDBEdit
      Left = 341
      Top = 269
      Width = 168
      Height = 23
      DataField = 'telefone2'
      DataSource = DCadCliente
      TabOrder = 21
      OnEnter = DBEdit14Enter
      OnExit = DBEdit14Exit
    end
    object DBEdit15: TDBEdit
      Left = 520
      Top = 269
      Width = 353
      Height = 23
      DataField = 'contato'
      DataSource = DCadCliente
      TabOrder = 22
      OnEnter = DBEdit15Enter
      OnExit = DBEdit15Exit
    end
    object DBEdit16: TDBEdit
      Left = 80
      Top = 321
      Width = 250
      Height = 23
      DataField = 'email'
      DataSource = DCadCliente
      TabOrder = 23
      OnEnter = DBEdit16Enter
      OnExit = DBEdit16Exit
    end
    object DBEdit17: TDBEdit
      Left = 341
      Top = 321
      Width = 262
      Height = 23
      DataField = 'site'
      DataSource = DCadCliente
      TabOrder = 24
      OnEnter = DBEdit17Enter
      OnExit = DBEdit17Exit
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 614
      Top = 321
      Width = 259
      Height = 23
      DataField = 'idRamoatividade'
      DataSource = DCadCliente
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = DPesqRamo
      TabOrder = 25
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
    end
  end
  object pnl_topo: TPanel
    Left = 0
    Top = 0
    Width = 916
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 169
      Height = 19
      Caption = 'CLIENTE/FORNECEDOR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object btn_fechar: TSpeedButton
      Left = 888
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
      Left = 650
      Top = 0
      Width = 3
      Height = 46
      Align = alRight
      Style = bsRaised
      ExplicitLeft = 411
      ExplicitHeight = 33
    end
    object pnl_btnconfirmar: TPanel
      Left = 521
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
    end
    object pnl_btncancelar: TPanel
      Left = 653
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
    end
    object Panel4: TPanel
      Left = 782
      Top = 0
      Width = 106
      Height = 46
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  object ImageList1: TImageList
    BlendColor = clHighlightText
    BkColor = clWhite
    Left = 673
    Top = 8
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
  object QCadCliente: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES')
    Params = <>
    Left = 240
    Top = 8
    object QCadClientecodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QCadClientecpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
    end
    object QCadClienterazao_social: TWideStringField
      FieldName = 'razao_social'
      Size = 100
    end
    object QCadClientenome_fantasia: TWideStringField
      FieldName = 'nome_fantasia'
      Size = 100
    end
    object QCadClienteidtplogradouro: TIntegerField
      FieldName = 'idtplogradouro'
    end
    object QCadClienteendereco: TWideStringField
      FieldName = 'endereco'
      Size = 100
    end
    object QCadClientenumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object QCadClientecomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 30
    end
    object QCadClientecep: TWideStringField
      FieldName = 'cep'
      EditMask = '99999\-999;1;_'
      Size = 9
    end
    object QCadClientebairro: TWideStringField
      FieldName = 'bairro'
      Size = 30
    end
    object QCadClienteidcidade: TIntegerField
      FieldName = 'idcidade'
    end
    object QCadClienteuf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object QCadClienteidpais: TIntegerField
      FieldName = 'idpais'
    end
    object QCadClienteddd: TWideStringField
      FieldName = 'ddd'
      Size = 2
    end
    object QCadClientetelefone1: TWideStringField
      FieldName = 'telefone1'
    end
    object QCadClienteddd1: TWideStringField
      FieldName = 'ddd1'
      Size = 2
    end
    object QCadClientetelefone2: TWideStringField
      FieldName = 'telefone2'
    end
    object QCadClienteemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object QCadClientesite: TWideStringField
      FieldName = 'site'
      Size = 50
    end
    object QCadClientecontato: TWideStringField
      FieldName = 'contato'
      Size = 50
    end
    object QCadClienteidRamoatividade: TIntegerField
      FieldName = 'idRamoatividade'
    end
    object QCadClientedt_cadastro: TDateField
      FieldName = 'dt_cadastro'
    end
    object QCadClienteinativo: TWideStringField
      FieldName = 'inativo'
      Size = 1
    end
    object QCadClientecliente: TWideStringField
      FieldName = 'cliente'
      Size = 1
    end
    object QCadClientefornecedor: TWideStringField
      FieldName = 'fornecedor'
      Size = 1
    end
    object QCadClientepessoa_fisica: TWideStringField
      FieldName = 'pessoa_fisica'
      Size = 1
    end
    object QCadClienteprestador_servico: TWideStringField
      FieldName = 'prestador_servico'
      Size = 1
    end
    object QCadClientebtn_alterar: TWideStringField
      FieldName = 'btn_alterar'
      Size = 1
    end
    object QCadClientebtn_excluir: TWideStringField
      FieldName = 'btn_excluir'
      Size = 1
    end
  end
  object DCadCliente: TDataSource
    DataSet = QCadCliente
    Left = 280
    Top = 8
  end
  object QPesqTpLogradouro: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_LOGRADOURO'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 336
    Top = 8
    object QPesqTpLogradourocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqTpLogradourodescricao: TWideStringField
      FieldName = 'descricao'
    end
  end
  object DPesqTpLogradouro: TDataSource
    DataSet = QPesqTpLogradouro
    Left = 376
    Top = 8
  end
  object QPesqCidade: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_CIDADES'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 416
    Top = 8
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
    Left = 456
    Top = 8
  end
  object DPesqRamo: TDataSource
    DataSet = QPesqRamo
    Left = 520
    Top = 6
  end
  object QPesqRamo: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_RAMO'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 488
    Top = 6
    object QPesqRamocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqRamodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
  end
end
