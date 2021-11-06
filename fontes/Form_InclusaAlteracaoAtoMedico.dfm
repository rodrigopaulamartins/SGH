object FInclusaoAlteracaoAtoMedico: TFInclusaoAlteracaoAtoMedico
  Left = 0
  Top = 0
  BorderIcons = []
  ClientHeight = 327
  ClientWidth = 727
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
    Top = 46
    Width = 727
    Height = 218
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
      Left = 88
      Top = 22
      Width = 39
      Height = 15
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 199
      Top = 22
      Width = 59
      Height = 15
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 88
      Top = 79
      Width = 109
      Height = 15
      Caption = 'Tipo de pagamento'
      FocusControl = DBEdit1
    end
    object Label5: TLabel
      Left = 446
      Top = 79
      Width = 55
      Height = 15
      Caption = 'TISS 3.02'
      FocusControl = DBEdit3
    end
    object Label6: TLabel
      Left = 514
      Top = 79
      Width = 86
      Height = 15
      Caption = '(%) Pagamento'
      FocusControl = DBEdit4
    end
    object Edit1: TEdit
      Left = 16
      Top = 205
      Width = 121
      Height = 23
      TabOrder = 0
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 40
      Width = 97
      Height = 23
      TabStop = False
      DataField = 'codigo'
      DataSource = DCadAtoMedico
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 199
      Top = 40
      Width = 449
      Height = 23
      DataField = 'descricao'
      DataSource = DCadAtoMedico
      TabOrder = 2
      OnEnter = DBEdit2Enter
      OnExit = DBEdit2Exit
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 88
      Top = 97
      Width = 352
      Height = 23
      DataField = 'idpagto'
      DataSource = DCadAtoMedico
      KeyField = 'tip_pagato'
      ListField = 'descricao'
      ListSource = DPesqTipoAto
      TabOrder = 3
      OnClick = DBLookupComboBox1Click
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
    end
    object DBEdit3: TDBEdit
      Left = 446
      Top = 98
      Width = 55
      Height = 23
      TabStop = False
      DataField = 'cod_tiss3'
      DataSource = DCadAtoMedico
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 514
      Top = 98
      Width = 134
      Height = 23
      DataField = 'tb_percentual'
      DataSource = DCadAtoMedico
      TabOrder = 5
      OnEnter = DBEdit4Enter
      OnExit = DBEdit4Exit
    end
    object DBCheckBox1: TDBCheckBox
      Left = 88
      Top = 134
      Width = 465
      Height = 17
      Caption = 
        'Acr'#233'scimo de 30% para Servi'#231'os Profissionais realizados em hor'#225'r' +
        'io especial'
      DataField = 'acres_30'
      DataSource = DCadAtoMedico
      TabOrder = 6
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 264
    Width = 727
    Height = 63
    Align = alBottom
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
  end
  object pnl_topo: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 94
      Height = 19
      Caption = 'ATO M'#201'DICO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object btn_fechar: TSpeedButton
      Left = 699
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
    object Panel4: TPanel
      Left = 654
      Top = 0
      Width = 45
      Height = 46
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 384
      Top = 0
      Width = 129
      Height = 46
      BevelInner = bvRaised
      BevelOuter = bvNone
      BevelWidth = 2
      BiDiMode = bdLeftToRight
      Caption = 'Confirmar'
      Color = 16744448
      ParentBiDiMode = False
      ParentBackground = False
      TabOrder = 1
      OnClick = Panel3Click
    end
    object Panel5: TPanel
      Left = 519
      Top = 0
      Width = 129
      Height = 46
      BevelInner = bvRaised
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Caption = 'Cancelar'
      Color = 16119285
      ParentBiDiMode = False
      ParentBackground = False
      TabOrder = 2
      OnClick = Panel5Click
    end
  end
  object ImageList1: TImageList
    BlendColor = clHighlightText
    BkColor = clWhite
    Left = 624
    Top = 264
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
  object ImageList2: TImageList
    Left = 592
    Top = 261
    Bitmap = {
      494C010102000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FF504D
      49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF292521FF5E5B
      58FF949290FF949290FF949290FF949290FF949290FF949290FF949290FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93918FFF292521FF292521FF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF93918FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF93918FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF93918FFFFFFFFFFFFFFF
      FFFF292521FF292521FF292521FF292521FFFFFFFFFFFFFFFFFF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF93918FFFFFFFFFFFFFFF
      FFFF292521FF5D5A57FFFFFFFFFF36322EFF292521FFFFFFFFFF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF93918FFFFFFFFFFFFFFF
      FFFF292521FF292521FFFFFFFFFFFFFFFFFF292521FF292521FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF93918FFFFFFFFFFFFFFF
      FFFF292521FF292521FFFFFFFFFFFFFFFFFFFFFFFFFF292521FFAEADABFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF93918FFFFFFFFFFFFFFF
      FFFFFFFFFFFF292521FF292521FFFFFFFFFFFFFFFFFFD6D6D5FF292521FFAEAD
      ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF93918FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF292521FF35312EFFFFFFFFFFFFFFFFFF36322EFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF93918FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FFD6D6D5FFFFFFFFFFFFFFFFFF3632
      2EFF292521FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF93918FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFAEADABFF292521FFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF292521FF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFF292521FF5D5A57FF93918FFF9391
      8FFF93918FFF93918FFF93918FFFBBBAB9FFAEADABFF292521FF292521FF2925
      21FFFFFFFFFF292521FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF868381FF292521FFFFFFFFFFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FF292521FF292521FF292521FF292521FFFFFFFFFF292521FF292521FFFFFF
      FFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF292521FF292521FF292521FF292521FF5E5B58FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF2925
      21FF292521FF36322EFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
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
  object QCadAtoMedico: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_ATOMEDICO')
    Params = <>
    Left = 392
    Top = 256
    object QCadAtoMedicocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QCadAtoMedicodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 70
    end
    object QCadAtoMedicoidpagto: TIntegerField
      FieldName = 'idpagto'
    end
    object QCadAtoMedicotb_percentual: TFloatField
      FieldName = 'tb_percentual'
      DisplayFormat = '#,###0.00'
      EditFormat = '#,###0.00'
    end
    object QCadAtoMedicoacres_30: TWideStringField
      FieldName = 'acres_30'
      Size = 1
    end
    object QCadAtoMedicocod_tiss3: TWideStringField
      FieldName = 'cod_tiss3'
      Size = 2
    end
    object QCadAtoMedicobtn_alterar: TWideStringField
      FieldName = 'btn_alterar'
      Size = 1
    end
    object QCadAtoMedicobtn_excluir: TWideStringField
      FieldName = 'btn_excluir'
      Size = 1
    end
  end
  object DCadAtoMedico: TDataSource
    DataSet = QCadAtoMedico
    Left = 432
    Top = 256
  end
  object DPesqTipoAto: TDataSource
    DataSet = QPesqTipoAto
    Left = 336
    Top = 256
  end
  object QPesqTipoAto: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_TIPO_PAGATO'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 304
    Top = 254
    object QPesqTipoAtocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqTipoAtodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 70
    end
    object QPesqTipoAtotip_pagato: TIntegerField
      FieldName = 'tip_pagato'
    end
    object QPesqTipoAtotab_perpag: TFloatField
      FieldName = 'tab_perpag'
    end
    object QPesqTipoAtotab_tis3: TWideStringField
      FieldName = 'tab_tis3'
      Size = 2
    end
  end
end
