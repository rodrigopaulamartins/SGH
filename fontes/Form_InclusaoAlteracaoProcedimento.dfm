object FInclusaoAlteracaoProcedimento: TFInclusaoAlteracaoProcedimento
  Left = 0
  Top = 0
  BorderIcons = []
  ClientHeight = 415
  ClientWidth = 764
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
  object Panel1: TPanel
    Left = 0
    Top = 55
    Width = 764
    Height = 360
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
    ExplicitTop = 40
    ExplicitWidth = 772
    ExplicitHeight = 328
    object Label2: TLabel
      Left = 56
      Top = 25
      Width = 39
      Height = 15
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 162
      Top = 25
      Width = 84
      Height = 15
      Caption = 'Tipo de Tabela'
      FocusControl = DBEdit1
    end
    object Label6: TLabel
      Left = 56
      Top = 139
      Width = 153
      Height = 15
      Caption = 'Especialidade B'#225'sica (AIH)'
      FocusControl = DBEdit1
    end
    object Label7: TLabel
      Left = 273
      Top = 139
      Width = 29
      Height = 15
      Caption = 'Sexo'
      FocusControl = DBEdit1
    end
    object Label8: TLabel
      Left = 56
      Top = 195
      Width = 64
      Height = 15
      Caption = 'Ato m'#233'dico'
      FocusControl = DBEdit1
    end
    object Label9: TLabel
      Left = 401
      Top = 25
      Width = 108
      Height = 15
      Caption = 'C'#243'd. Procedimento'
      FocusControl = DBEdit2
    end
    object Label10: TLabel
      Left = 551
      Top = 27
      Width = 49
      Height = 15
      Caption = 'Validade'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 56
      Top = 82
      Width = 59
      Height = 15
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 457
      Top = 82
      Width = 70
      Height = 15
      Caption = 'Simplificado'
      FocusControl = DBEdit5
    end
    object Label11: TLabel
      Left = 457
      Top = 139
      Width = 69
      Height = 15
      Caption = 'Idade Inicial'
      FocusControl = DBEdit6
    end
    object Label12: TLabel
      Left = 579
      Top = 139
      Width = 59
      Height = 15
      Caption = 'Idade final'
      FocusControl = DBEdit7
    end
    object Label13: TLabel
      Left = 273
      Top = 195
      Width = 157
      Height = 15
      Caption = 'Tipo tabela proced. no TISS'
      FocusControl = DBEdit1
    end
    object Label14: TLabel
      Left = 551
      Top = 195
      Width = 65
      Height = 15
      Caption = 'Quantidade'
      FocusControl = DBEdit8
    end
    object Edit1: TEdit
      Left = 16
      Top = 301
      Width = 121
      Height = 23
      TabOrder = 0
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 56
      Top = 43
      Width = 90
      Height = 23
      TabStop = False
      DataField = 'codigo'
      DataSource = DProcedimento
      ReadOnly = True
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 162
      Top = 43
      Width = 223
      Height = 23
      DataField = 'prc_tiptab'
      DataSource = DProcedimento
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = DPesqTipTab
      TabOrder = 2
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 56
      Top = 157
      Width = 201
      Height = 23
      DataField = 'prc_cliaih'
      DataSource = DProcedimento
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = DPesqEspBas
      TabOrder = 3
      OnEnter = DBLookupComboBox4Enter
      OnExit = DBLookupComboBox4Exit
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 273
      Top = 157
      Width = 168
      Height = 23
      DataField = 'prc_codsex'
      DataSource = DProcedimento
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = DPesqSexo
      TabOrder = 4
      OnEnter = DBLookupComboBox5Enter
      OnExit = DBLookupComboBox5Exit
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 56
      Top = 213
      Width = 201
      Height = 23
      DataField = 'prc_atomed'
      DataSource = DProcedimento
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = DPesqAtoMedico
      TabOrder = 5
      OnEnter = DBLookupComboBox6Enter
      OnExit = DBLookupComboBox6Exit
    end
    object DBCheckBox1: TDBCheckBox
      Left = 55
      Top = 259
      Width = 60
      Height = 17
      Caption = 'Inativo'
      DataField = 'inativo'
      DataSource = DProcedimento
      TabOrder = 6
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEdit2: TDBEdit
      Left = 401
      Top = 43
      Width = 134
      Height = 23
      DataField = 'prc_codigo'
      DataSource = DProcedimento
      TabOrder = 7
      OnEnter = DBEdit2Enter
      OnExit = DBEdit2Exit
    end
    object DBEdit3: TDBEdit
      Left = 551
      Top = 43
      Width = 134
      Height = 23
      DataField = 'prc_datval'
      DataSource = DProcedimento
      TabOrder = 8
      OnEnter = DBEdit3Enter
      OnExit = DBEdit3Exit
    end
    object DBEdit4: TDBEdit
      Left = 56
      Top = 100
      Width = 385
      Height = 23
      DataField = 'prc_especi'
      DataSource = DProcedimento
      TabOrder = 9
      OnEnter = DBEdit4Enter
      OnExit = DBEdit4Exit
    end
    object DBEdit5: TDBEdit
      Left = 457
      Top = 100
      Width = 228
      Height = 23
      DataField = 'prc_espsim'
      DataSource = DProcedimento
      TabOrder = 10
      OnEnter = DBEdit5Enter
      OnExit = DBEdit5Exit
    end
    object DBEdit6: TDBEdit
      Left = 457
      Top = 157
      Width = 105
      Height = 23
      DataField = 'prc_idadei'
      DataSource = DProcedimento
      TabOrder = 11
      OnEnter = DBEdit6Enter
      OnExit = DBEdit6Exit
    end
    object DBEdit7: TDBEdit
      Left = 579
      Top = 157
      Width = 106
      Height = 23
      DataField = 'prc_idadef'
      DataSource = DProcedimento
      TabOrder = 12
      OnEnter = DBEdit7Enter
      OnExit = DBEdit7Exit
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 273
      Top = 213
      Width = 262
      Height = 23
      DataField = 'prc_prctis'
      DataSource = DProcedimento
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = DTipoTabelaTISS
      TabOrder = 13
      OnEnter = DBLookupComboBox2Enter
      OnExit = DBLookupComboBox2Exit
    end
    object DBEdit8: TDBEdit
      Left = 551
      Top = 213
      Width = 134
      Height = 23
      DataField = 'prc_prtqtd'
      DataSource = DProcedimento
      TabOrder = 14
      OnEnter = DBEdit8Enter
      OnExit = DBEdit8Exit
    end
  end
  object pnl_topo: TPanel
    Left = 0
    Top = 0
    Width = 764
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 130
      Height = 19
      Caption = 'PROCEDIMENTOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object btn_fechar: TSpeedButton
      Left = 736
      Top = 0
      Width = 28
      Height = 55
      Align = alRight
      ImageIndex = 1
      Images = ImageList1
      Flat = True
      OnClick = btn_fecharClick
      ExplicitLeft = 744
      ExplicitHeight = 33
    end
    object Panel4: TPanel
      Left = 691
      Top = 0
      Width = 45
      Height = 55
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 739
      ExplicitHeight = 46
    end
    object Panel3: TPanel
      Left = 457
      Top = 2
      Width = 129
      Height = 46
      BevelInner = bvRaised
      BevelOuter = bvNone
      BevelWidth = 2
      Caption = 'Confirmar'
      Color = 16744448
      ParentBackground = False
      TabOrder = 1
      OnClick = pnl_btnconfirmarClick
    end
    object Panel5: TPanel
      Left = 592
      Top = 2
      Width = 129
      Height = 46
      BevelInner = bvRaised
      BevelOuter = bvNone
      Caption = 'Cancelar'
      Color = 16119285
      ParentBackground = False
      TabOrder = 2
      OnClick = pnl_btncancelarClick
    end
  end
  object ImageList1: TImageList
    BlendColor = clHighlightText
    BkColor = clWhite
    Left = 336
    Top = 392
    Bitmap = {
      494C010103000800040010001000FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF433F3CFFFFFFFFFFFFFFFFFF433F3CFF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E3E3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2D2925FF292521FF878482FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6
      D5FF292521FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF292521FF292521FF292521FF292521FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C8
      C7FF292521FF292521FF292521FFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF908E8CFF292521FF484441FFB5B3B2FFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFAEADABFF292521FF292521FF292521FF292521FF292521FF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
      21FF292521FFC1C0BFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFF1F1F1FFFFFFFFFF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
      21FF292521FFFFFFFFFFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF292521FF292521FF292521FF292521FF292521FFAEADABFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF2925
      21FF292521FFC7C6C5FFFFFFFFFFFFFFFFFF706D6BFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF292521FF292521FFFFFF
      FFFF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
      21FFFFFFFFFF292521FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF292521FF292521FF292521FF292521FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF2925
      21FF706D6BFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF36322EFF292521FF3531
      2EFFFFFFFFFF292521FF292521FF292521FF292521FF292521FF292521FFFFFF
      FFFF35312EFF292521FF36322EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAEADABFF292521FF292521FF292521FF292521FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF292521FFD6D6
      D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0CFCEFF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF292521FF2925
      21FF292521FFFFFFFFFF292521FF292521FF292521FF292521FFFFFFFFFF2925
      21FF292521FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF292521FF292521FF292521FF292521FF292521FF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FFFFFFFFFF292521FF292521FFFFFFFFFF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF292521FF292521FF292521FFFFFFFFFFAEADABFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF292521FFDBDB
      DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C4C3FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF292521FF292521FF35312EFFFFFFFFFFFFFFFFFF35312EFF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FFAEADABFFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF2925
      21FFE3E2E2FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF949290FF292521FF292521FF292521FF292521FF949290FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF36322EFFAEADABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF36322EFFD6D6
      D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF2925
      21FF292521FFC4C3C2FFFFFFFFFFFFFFFFFF716E6BFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF514E4AFF292521FF292521FF514E4AFFFFFFFFFF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6966FF6C6966FFFFFFFFFFFFFFFFFF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF989694FF292521FF292521FFD1D0D0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
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
  object QProcedimento: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_PROCEDIMENTO')
    Params = <>
    Left = 400
    Top = 342
    object QProcedimentocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QProcedimentoprc_tiptab: TIntegerField
      FieldName = 'prc_tiptab'
    end
    object QProcedimentoprc_codigo: TWideStringField
      FieldName = 'prc_codigo'
      Size = 10
    end
    object QProcedimentoprc_datval: TDateField
      FieldName = 'prc_datval'
      EditMask = '!99/99/9999;1;_'
    end
    object QProcedimentoprc_datiam: TDateField
      FieldName = 'prc_datiam'
      EditMask = '!99/99/9999;1;_'
    end
    object QProcedimentoprc_especi: TWideStringField
      FieldName = 'prc_especi'
      Size = 130
    end
    object QProcedimentoprc_espsim: TWideStringField
      FieldName = 'prc_espsim'
      Size = 50
    end
    object QProcedimentoprc_durcir: TWideStringField
      FieldName = 'prc_durcir'
      Size = 5
    end
    object QProcedimentoprc_cliaih: TIntegerField
      FieldName = 'prc_cliaih'
    end
    object QProcedimentoprc_codsex: TIntegerField
      FieldName = 'prc_codsex'
    end
    object QProcedimentoprc_idadei: TIntegerField
      FieldName = 'prc_idadei'
    end
    object QProcedimentoprc_idadef: TIntegerField
      FieldName = 'prc_idadef'
    end
    object QProcedimentoprc_atomed: TIntegerField
      FieldName = 'prc_atomed'
    end
    object QProcedimentoprc_prctis: TIntegerField
      FieldName = 'prc_prctis'
    end
    object QProcedimentoprc_prtqtd: TIntegerField
      FieldName = 'prc_prtqtd'
    end
    object QProcedimentobtn_alterar: TWideStringField
      FieldName = 'btn_alterar'
      Size = 1
    end
    object QProcedimentobtn_excluir: TWideStringField
      FieldName = 'btn_excluir'
      Size = 1
    end
    object QProcedimentoinativo: TWideStringField
      FieldName = 'inativo'
      Size = 1
    end
    object QProcedimentoprc_numreg: TWideStringField
      FieldName = 'prc_numreg'
      Size = 8
    end
  end
  object DProcedimento: TDataSource
    DataSet = QProcedimento
    Left = 432
    Top = 342
  end
  object DPesqTipTab: TDataSource
    DataSet = QPesqTipTab
    Left = 208
    Top = 278
  end
  object QPesqTipTab: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_TIPOTABELA '
      'ORDER BY CODIGO')
    Params = <>
    Left = 176
    Top = 278
    object QPesqTipTabcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqTipTabdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 70
    end
    object QPesqTipTabinativo: TWideStringField
      FieldName = 'inativo'
      Size = 1
    end
  end
  object QPesqEspBas: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_ESPBASICA'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 240
    Top = 278
    object QPesqEspBascodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqEspBasdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 70
    end
    object QPesqEspBascod_tis: TWideStringField
      FieldName = 'cod_tis'
      Size = 1
    end
    object QPesqEspBascod_sus: TWideStringField
      FieldName = 'cod_sus'
      Size = 1
    end
  end
  object DPesqEspBas: TDataSource
    DataSet = QPesqEspBas
    Left = 272
    Top = 278
  end
  object QPesqSexo: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_SEXO'
      'ORDER BY CODIGO')
    Params = <>
    Left = 312
    Top = 278
    object QPesqSexocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqSexodescricao: TWideStringField
      FieldName = 'descricao'
    end
  end
  object DPesqSexo: TDataSource
    DataSet = QPesqSexo
    Left = 344
    Top = 278
  end
  object QPesqAtoMedico: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_ATOMEDICO'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 376
    Top = 278
    object QPesqAtoMedicocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqAtoMedicodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 70
    end
    object QPesqAtoMedicoidpagto: TIntegerField
      FieldName = 'idpagto'
    end
    object QPesqAtoMedicotb_percentual: TFloatField
      FieldName = 'tb_percentual'
    end
    object QPesqAtoMedicoacres_30: TWideStringField
      FieldName = 'acres_30'
      Size = 1
    end
    object QPesqAtoMedicocod_tiss3: TWideStringField
      FieldName = 'cod_tiss3'
      Size = 2
    end
    object QPesqAtoMedicobtn_alterar: TWideStringField
      FieldName = 'btn_alterar'
      Size = 1
    end
    object QPesqAtoMedicobtn_excluir: TWideStringField
      FieldName = 'btn_excluir'
      Size = 1
    end
  end
  object DPesqAtoMedico: TDataSource
    DataSet = QPesqAtoMedico
    Left = 408
    Top = 278
  end
  object QTipoTabelaTISS: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_TISS_PRCTIS'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 176
    Top = 318
    object QTipoTabelaTISScodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QTipoTabelaTISScod_tabela: TWideStringField
      FieldName = 'cod_tabela'
      Size = 3
    end
    object QTipoTabelaTISSdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 70
    end
    object QTipoTabelaTISScod_tis302: TWideStringField
      FieldName = 'cod_tis302'
      Size = 3
    end
  end
  object DTipoTabelaTISS: TDataSource
    DataSet = QTipoTabelaTISS
    Left = 208
    Top = 318
  end
end
