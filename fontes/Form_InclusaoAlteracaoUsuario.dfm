object FInclusaoAlteracaoUsuario: TFInclusaoAlteracaoUsuario
  Left = 0
  Top = 0
  BorderIcons = []
  ClientHeight = 419
  ClientWidth = 798
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_topo: TPanel
    Left = 0
    Top = 0
    Width = 798
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 78
      Height = 19
      Caption = 'USU'#193'RIOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object btn_fechar: TSpeedButton
      Left = 770
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
      Left = 532
      Top = 0
      Width = 3
      Height = 46
      Align = alRight
      Style = bsRaised
      ExplicitLeft = 411
      ExplicitHeight = 33
    end
    object pnl_btnconfirmar: TPanel
      Left = 403
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
      OnMouseMove = pnl_btnconfirmarMouseMove
    end
    object pnl_btncancelar: TPanel
      Left = 535
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
      Left = 664
      Top = 0
      Width = 106
      Height = 46
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  object TPanel
    Left = 0
    Top = 46
    Width = 798
    Height = 373
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    object Label2: TLabel
      Left = 100
      Top = 64
      Width = 42
      Height = 13
      Caption = 'C'#243'digo *'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 315
      Top = 64
      Width = 84
      Height = 13
      Caption = 'Nome Completo *'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 196
      Top = 64
      Width = 94
      Height = 13
      Caption = 'Data do Cadastro *'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 100
      Top = 129
      Width = 86
      Height = 13
      Caption = 'Login de Acesso *'
      FocusControl = DBEdit4
    end
    object Label6: TLabel
      Left = 323
      Top = 129
      Width = 77
      Height = 13
      Caption = 'senha_acesso *'
      FocusControl = DBEdit5
    end
    object Label7: TLabel
      Left = 476
      Top = 129
      Width = 28
      Height = 13
      Caption = 'E-mail'
      FocusControl = DBEdit6
    end
    object Label8: TLabel
      Left = 100
      Top = 192
      Width = 83
      Height = 13
      Caption = 'Data de Exclus'#227'o'
      FocusControl = DBEdit7
    end
    object DBEdit1: TDBEdit
      Left = 100
      Top = 80
      Width = 81
      Height = 23
      DataField = 'codigo'
      DataSource = DUsuario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 315
      Top = 80
      Width = 413
      Height = 23
      DataField = 'nome_completo'
      DataSource = DUsuario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnEnter = DBEdit2Enter
      OnExit = DBEdit2Exit
    end
    object DBEdit3: TDBEdit
      Left = 197
      Top = 80
      Width = 112
      Height = 23
      DataField = 'data_inclusao'
      DataSource = DUsuario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnEnter = DBEdit3Enter
      OnExit = DBEdit3Exit
    end
    object DBEdit4: TDBEdit
      Left = 100
      Top = 145
      Width = 209
      Height = 23
      DataField = 'login_acesso'
      DataSource = DUsuario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnEnter = DBEdit4Enter
      OnExit = DBEdit4Exit
    end
    object DBEdit5: TDBEdit
      Left = 323
      Top = 145
      Width = 137
      Height = 23
      DataField = 'senha_acesso'
      DataSource = DUsuario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 4
      OnEnter = DBEdit5Enter
      OnExit = DBEdit5Exit
    end
    object DBEdit6: TDBEdit
      Left = 476
      Top = 145
      Width = 252
      Height = 23
      DataField = 'email'
      DataSource = DUsuario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnEnter = DBEdit6Enter
      OnExit = DBEdit6Exit
    end
    object DBEdit7: TDBEdit
      Left = 100
      Top = 208
      Width = 209
      Height = 23
      DataField = 'data_exclusao'
      DataSource = DUsuario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnEnter = DBEdit7Enter
      OnExit = DBEdit7Exit
    end
    object DBCheckBox1: TDBCheckBox
      Left = 323
      Top = 210
      Width = 76
      Height = 17
      Caption = 'Inativo'
      DataField = 'ativo'
      DataSource = DUsuario
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object Edit1: TEdit
      Left = 16
      Top = 320
      Width = 121
      Height = 21
      TabOrder = 8
      Visible = False
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
  object DUsuario: TDataSource
    DataSet = QUsuario
    Left = 288
    Top = 14
  end
  object QUsuario: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM CAD_USUARIO')
    Params = <>
    Left = 240
    Top = 14
    object QUsuariocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QUsuarionome_completo: TWideStringField
      FieldName = 'nome_completo'
      Size = 100
    end
    object QUsuariologin_acesso: TWideStringField
      FieldName = 'login_acesso'
      Size = 50
    end
    object QUsuariodata_inclusao: TDateField
      FieldName = 'data_inclusao'
      EditMask = '!99/99/9999;1;_'
    end
    object QUsuariodata_exclusao: TDateField
      FieldName = 'data_exclusao'
      EditMask = '!99/99/9999;1;_'
    end
    object QUsuarioativo: TWideStringField
      FieldName = 'ativo'
      Size = 1
    end
    object QUsuariosenha_acesso: TWideStringField
      FieldName = 'senha_acesso'
      Size = 15
    end
    object QUsuariobtn_alterar: TWideStringField
      FieldName = 'btn_alterar'
      Size = 1
    end
    object QUsuariobtn_excluir: TWideStringField
      FieldName = 'btn_excluir'
      Size = 1
    end
    object QUsuarioemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
  end
end