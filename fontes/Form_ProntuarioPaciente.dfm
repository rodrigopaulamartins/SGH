object FProntuario_Paciente: TFProntuario_Paciente
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Prontu'#225'rio do Paciente'
  ClientHeight = 654
  ClientWidth = 1231
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  OnMouseMove = FormMouseMove
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1231
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    OnMouseMove = Panel1MouseMove
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 201
      Height = 19
      Caption = 'PRONTU'#193'RIO DO PACIENTE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 1198
      Top = 0
      Width = 33
      Height = 49
      Align = alRight
      ImageIndex = 1
      Images = ImageList1
      Flat = True
      OnClick = SpeedButton1Click
      ExplicitLeft = 766
      ExplicitTop = -6
    end
    object Bevel1: TBevel
      Left = 866
      Top = 0
      Width = 3
      Height = 49
      Align = alRight
      Style = bsRaised
      ExplicitLeft = 411
      ExplicitHeight = 33
    end
    object Panel4: TPanel
      Left = 998
      Top = 0
      Width = 200
      Height = 49
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
    end
    object pnl_btncancelar: TPanel
      Left = 869
      Top = 0
      Width = 129
      Height = 49
      Align = alRight
      BevelInner = bvRaised
      BevelOuter = bvNone
      Caption = 'Cancelar'
      Color = 16119285
      ParentBackground = False
      TabOrder = 1
      OnClick = pnl_btncancelarClick
    end
    object pnl_btnconfirmar: TPanel
      Left = 737
      Top = 0
      Width = 129
      Height = 49
      Align = alRight
      BevelInner = bvRaised
      BevelOuter = bvNone
      BevelWidth = 2
      Caption = 'Confirmar +'
      Color = 16744448
      ParentBackground = False
      TabOrder = 2
      OnClick = pnl_btnconfirmarClick
      OnMouseDown = pnl_btnconfirmarMouseDown
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 49
    Width = 1231
    Height = 605
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnMouseMove = PageControl1MouseMove
    object TabSheet1: TTabSheet
      Caption = 'Pessoais'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      object Label2: TLabel
        Left = 205
        Top = 61
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 302
        Top = 61
        Width = 108
        Height = 15
        Caption = 'Nome do registro *'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 688
        Top = 61
        Width = 71
        Height = 15
        Caption = 'Nome social'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 1074
        Top = 63
        Width = 53
        Height = 15
        Caption = 'Tp. Sang.'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 329
        Top = 112
        Width = 66
        Height = 15
        Caption = 'N'#250'mero RG'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 469
        Top = 112
        Width = 34
        Height = 15
        Caption = 'UF Rg'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 205
        Top = 112
        Width = 108
        Height = 15
        Caption = 'Data Nascimento *'
        FocusControl = DBEdit7
      end
      object Label9: TLabel
        Left = 518
        Top = 112
        Width = 43
        Height = 15
        Caption = 'N'#186' CNS'
        FocusControl = DBEdit8
      end
      object Label10: TLabel
        Left = 688
        Top = 112
        Width = 90
        Height = 15
        Caption = 'Nacionalidade *'
        FocusControl = DBEdit8
      end
      object Label11: TLabel
        Left = 864
        Top = 112
        Width = 73
        Height = 15
        Caption = 'Naturalidade'
        FocusControl = DBEdit9
      end
      object Label12: TLabel
        Left = 1014
        Top = 112
        Width = 38
        Height = 15
        Caption = 'Sexo *'
        FocusControl = DBEdit8
      end
      object Label13: TLabel
        Left = 205
        Top = 164
        Width = 75
        Height = 15
        Caption = 'Estado Civil *'
        FocusControl = DBEdit8
      end
      object Label14: TLabel
        Left = 382
        Top = 164
        Width = 102
        Height = 15
        Caption = 'Grau de instru'#231#227'o'
        FocusControl = DBEdit8
      end
      object Label15: TLabel
        Left = 617
        Top = 164
        Width = 69
        Height = 15
        Caption = 'Ra'#231'a / Cor *'
        FocusControl = DBEdit8
      end
      object Label16: TLabel
        Left = 809
        Top = 164
        Width = 79
        Height = 15
        Caption = 'Etnia ind'#237'gena'
        FocusControl = DBEdit8
      end
      object Label17: TLabel
        Left = 1014
        Top = 164
        Width = 45
        Height = 15
        Caption = 'Religi'#227'o'
        FocusControl = DBEdit8
      end
      object Label18: TLabel
        Left = 205
        Top = 216
        Width = 94
        Height = 15
        Caption = 'Tipo Documento'
        FocusControl = DBEdit8
      end
      object Label19: TLabel
        Left = 382
        Top = 216
        Width = 66
        Height = 15
        Caption = 'Documento'
        FocusControl = DBEdit10
      end
      object Label20: TLabel
        Left = 617
        Top = 216
        Width = 98
        Height = 15
        Caption = 'N'#250'mero de pasta'
        FocusControl = DBEdit11
      end
      object Label21: TLabel
        Left = 809
        Top = 218
        Width = 150
        Height = 15
        Caption = 'Matr. certid'#227'o nascimento'
        FocusControl = DBEdit12
      end
      object Label22: TLabel
        Left = 205
        Top = 268
        Width = 71
        Height = 15
        Caption = 'Nome do pai'
        FocusControl = DBEdit13
      end
      object Label23: TLabel
        Left = 617
        Top = 268
        Width = 88
        Height = 15
        Caption = 'Nome da m'#227'e *'
        FocusControl = DBEdit14
      end
      object Label24: TLabel
        Left = 1025
        Top = 268
        Width = 106
        Height = 15
        Caption = 'Localiza'#231#227'o Pront.'
        FocusControl = DBEdit15
      end
      object Label25: TLabel
        Left = 205
        Top = 320
        Width = 23
        Height = 15
        Caption = 'CEP'
        FocusControl = DBEdit16
      end
      object Label26: TLabel
        Left = 342
        Top = 320
        Width = 39
        Height = 15
        Caption = 'Cidade'
        FocusControl = DBEdit8
      end
      object Label27: TLabel
        Left = 569
        Top = 320
        Width = 94
        Height = 15
        Caption = 'Tipo Logradouro'
        FocusControl = DBEdit8
      end
      object Label28: TLabel
        Left = 711
        Top = 322
        Width = 54
        Height = 15
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit17
      end
      object Label29: TLabel
        Left = 1025
        Top = 322
        Width = 46
        Height = 15
        Caption = 'N'#250'mero'
        FocusControl = DBEdit18
      end
      object Label30: TLabel
        Left = 205
        Top = 372
        Width = 79
        Height = 15
        Caption = 'Complemento'
        FocusControl = DBEdit19
      end
      object Label31: TLabel
        Left = 411
        Top = 374
        Width = 62
        Height = 15
        Caption = 'Refer'#234'ncia'
        FocusControl = DBEdit20
      end
      object Label32: TLabel
        Left = 617
        Top = 374
        Width = 55
        Height = 15
        Caption = 'Profiss'#227'o'
        FocusControl = DBEdit21
      end
      object Label33: TLabel
        Left = 913
        Top = 374
        Width = 98
        Height = 15
        Caption = 'Local de trabalho'
        FocusControl = DBEdit22
      end
      object Label34: TLabel
        Left = 205
        Top = 424
        Width = 27
        Height = 15
        Caption = 'DDD'
        FocusControl = DBEdit23
      end
      object Label35: TLabel
        Left = 251
        Top = 426
        Width = 60
        Height = 15
        Caption = 'Telefone 1'
        FocusControl = DBEdit24
      end
      object Label36: TLabel
        Left = 411
        Top = 424
        Width = 27
        Height = 15
        Caption = 'DDD'
        FocusControl = DBEdit25
      end
      object Label37: TLabel
        Left = 457
        Top = 426
        Width = 56
        Height = 15
        Caption = 'telefone 2'
        FocusControl = DBEdit26
      end
      object Label38: TLabel
        Left = 617
        Top = 426
        Width = 37
        Height = 15
        Caption = 'E-mail'
        FocusControl = DBEdit27
      end
      object Label39: TLabel
        Left = 913
        Top = 426
        Width = 97
        Height = 15
        Caption = 'Nome do contato'
        FocusControl = DBEdit28
      end
      object Label40: TLabel
        Left = 205
        Top = 476
        Width = 27
        Height = 15
        Caption = 'DDD'
        FocusControl = DBEdit29
      end
      object Label41: TLabel
        Left = 251
        Top = 478
        Width = 113
        Height = 15
        Caption = 'Telefone do contato'
        FocusControl = DBEdit30
      end
      object Label42: TLabel
        Left = 411
        Top = 476
        Width = 53
        Height = 15
        Caption = 'Conv'#234'nio'
        FocusControl = DBEdit8
      end
      object Label43: TLabel
        Left = 658
        Top = 478
        Width = 63
        Height = 15
        Caption = 'Carteirinha'
        FocusControl = DBEdit31
      end
      object Label44: TLabel
        Left = 865
        Top = 478
        Width = 46
        Height = 15
        Caption = 'Conjug'#234
        FocusControl = DBEdit32
      end
      object DBEdit1: TDBEdit
        Left = 205
        Top = 79
        Width = 81
        Height = 23
        TabStop = False
        DataField = 'codigo'
        DataSource = DCadProntuario
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 302
        Top = 79
        Width = 370
        Height = 23
        DataField = 'nome_completo'
        DataSource = DCadProntuario
        TabOrder = 1
        OnEnter = DBEdit2Enter
        OnExit = DBEdit2Exit
      end
      object DBEdit3: TDBEdit
        Left = 688
        Top = 79
        Width = 370
        Height = 23
        DataField = 'nome_social'
        DataSource = DCadProntuario
        TabOrder = 2
        OnEnter = DBEdit3Enter
        OnExit = DBEdit3Exit
      end
      object DBEdit4: TDBEdit
        Left = 1074
        Top = 79
        Width = 71
        Height = 23
        DataField = 'tp_sanguineo'
        DataSource = DCadProntuario
        TabOrder = 3
        OnEnter = DBEdit4Enter
        OnExit = DBEdit4Exit
      end
      object DBEdit5: TDBEdit
        Left = 329
        Top = 130
        Width = 124
        Height = 23
        DataField = 'num_rg'
        DataSource = DCadProntuario
        TabOrder = 5
        OnEnter = DBEdit5Enter
        OnExit = DBEdit5Exit
      end
      object DBEdit6: TDBEdit
        Left = 469
        Top = 130
        Width = 34
        Height = 23
        DataField = 'uf_rg'
        DataSource = DCadProntuario
        TabOrder = 6
        OnEnter = DBEdit6Enter
        OnExit = DBEdit6Exit
      end
      object DBEdit7: TDBEdit
        Left = 205
        Top = 130
        Width = 108
        Height = 23
        DataField = 'dt_nascimento'
        DataSource = DCadProntuario
        TabOrder = 4
        OnEnter = DBEdit7Enter
        OnExit = DBEdit7Exit
      end
      object DBEdit8: TDBEdit
        Left = 518
        Top = 130
        Width = 154
        Height = 23
        DataField = 'num_cns'
        DataSource = DCadProntuario
        TabOrder = 7
        OnEnter = DBEdit8Enter
        OnExit = DBEdit8Exit
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 688
        Top = 130
        Width = 161
        Height = 23
        DataField = 'idnacionalidade'
        DataSource = DCadProntuario
        KeyField = 'cod_nacion'
        ListField = 'descricao'
        ListSource = DPesqNacio
        TabOrder = 8
        OnEnter = DBLookupComboBox1Enter
        OnExit = DBLookupComboBox1Exit
      end
      object DBEdit9: TDBEdit
        Left = 864
        Top = 130
        Width = 136
        Height = 23
        DataField = 'naturalidade'
        DataSource = DCadProntuario
        TabOrder = 9
        OnEnter = DBEdit9Enter
        OnExit = DBEdit9Exit
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 1014
        Top = 130
        Width = 131
        Height = 23
        DataField = 'idsexo'
        DataSource = DCadProntuario
        KeyField = 'codigo'
        ListField = 'descricao'
        ListSource = DPesqSexo
        TabOrder = 10
        OnEnter = DBLookupComboBox2Enter
        OnExit = DBLookupComboBox2Exit
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 205
        Top = 182
        Width = 161
        Height = 23
        DataField = 'idestcivil'
        DataSource = DCadProntuario
        KeyField = 'cod_estciv'
        ListField = 'descricao'
        ListSource = DPesqEstCivil
        TabOrder = 11
        OnEnter = DBLookupComboBox3Enter
        OnExit = DBLookupComboBox3Exit
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 382
        Top = 182
        Width = 219
        Height = 23
        DataField = 'idgrauins'
        DataSource = DCadProntuario
        KeyField = 'codigo'
        ListField = 'descricao'
        ListSource = DPesqGrauInst
        TabOrder = 12
        OnEnter = DBLookupComboBox4Enter
        OnExit = DBLookupComboBox4Exit
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 617
        Top = 182
        Width = 176
        Height = 23
        DataField = 'idraca'
        DataSource = DCadProntuario
        KeyField = 'codigo'
        ListField = 'descricao'
        ListSource = DPesqRacCor
        TabOrder = 13
        OnEnter = DBLookupComboBox5Enter
        OnExit = DBLookupComboBox5Exit
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 809
        Top = 182
        Width = 191
        Height = 23
        DataField = 'idetnia'
        DataSource = DCadProntuario
        KeyField = 'cod_etnia'
        ListField = 'descricao'
        ListSource = DPesqEtinia
        TabOrder = 14
        OnEnter = DBLookupComboBox6Enter
        OnExit = DBLookupComboBox6Exit
      end
      object DBLookupComboBox7: TDBLookupComboBox
        Left = 1014
        Top = 182
        Width = 131
        Height = 23
        DataField = 'idreligiao'
        DataSource = DCadProntuario
        KeyField = 'codigo'
        ListField = 'descricao'
        ListSource = DPesqReligiao
        TabOrder = 15
        OnEnter = DBLookupComboBox7Enter
        OnExit = DBLookupComboBox7Exit
      end
      object DBLookupComboBox8: TDBLookupComboBox
        Left = 205
        Top = 234
        Width = 161
        Height = 23
        DataField = 'idtpdoc'
        DataSource = DCadProntuario
        KeyField = 'codigo'
        ListField = 'descricao'
        ListSource = DPesqTpDoc
        TabOrder = 16
        OnEnter = DBLookupComboBox8Enter
        OnExit = DBLookupComboBox8Exit
      end
      object DBEdit10: TDBEdit
        Left = 382
        Top = 234
        Width = 219
        Height = 23
        DataField = 'num_documentos'
        DataSource = DCadProntuario
        TabOrder = 17
        OnEnter = DBEdit10Enter
        OnExit = DBEdit10Exit
      end
      object DBEdit11: TDBEdit
        Left = 617
        Top = 234
        Width = 176
        Height = 23
        DataField = 'n_pasta'
        DataSource = DCadProntuario
        TabOrder = 18
        OnEnter = DBEdit11Enter
        OnExit = DBEdit11Exit
      end
      object DBEdit12: TDBEdit
        Left = 809
        Top = 234
        Width = 336
        Height = 23
        DataField = 'mat_cert_nascimento'
        DataSource = DCadProntuario
        TabOrder = 19
        OnEnter = DBEdit12Enter
        OnExit = DBEdit12Exit
      end
      object DBEdit13: TDBEdit
        Left = 205
        Top = 286
        Width = 396
        Height = 23
        DataField = 'nome_pai'
        DataSource = DCadProntuario
        TabOrder = 20
        OnEnter = DBEdit13Enter
        OnExit = DBEdit13Exit
      end
      object DBEdit14: TDBEdit
        Left = 617
        Top = 286
        Width = 393
        Height = 23
        DataField = 'nome_mae'
        DataSource = DCadProntuario
        TabOrder = 21
        OnEnter = DBEdit14Enter
        OnExit = DBEdit14Exit
      end
      object DBEdit15: TDBEdit
        Left = 1025
        Top = 286
        Width = 120
        Height = 23
        DataField = 'loc_prontuario'
        DataSource = DCadProntuario
        TabOrder = 22
        OnEnter = DBEdit15Enter
        OnExit = DBEdit15Exit
      end
      object DBEdit16: TDBEdit
        Left = 205
        Top = 338
        Width = 121
        Height = 23
        DataField = 'cep'
        DataSource = DCadProntuario
        TabOrder = 23
        OnEnter = DBEdit16Enter
        OnExit = DBEdit16Exit
      end
      object DBLookupComboBox9: TDBLookupComboBox
        Left = 342
        Top = 338
        Width = 211
        Height = 23
        DataField = 'idcidade'
        DataSource = DCadProntuario
        KeyField = 'codigo'
        ListField = 'descricao'
        ListSource = DPesqCidade
        TabOrder = 24
        OnEnter = DBLookupComboBox9Enter
        OnExit = DBLookupComboBox9Exit
      end
      object DBLookupComboBox10: TDBLookupComboBox
        Left = 569
        Top = 338
        Width = 127
        Height = 23
        DataField = 'idtplogradouro'
        DataSource = DCadProntuario
        KeyField = 'codigo'
        ListField = 'descricao'
        ListSource = DPesqTpLogradouro
        TabOrder = 25
        OnEnter = DBLookupComboBox10Enter
        OnExit = DBLookupComboBox10Exit
      end
      object DBEdit17: TDBEdit
        Left = 711
        Top = 338
        Width = 299
        Height = 23
        DataField = 'endereco'
        DataSource = DCadProntuario
        TabOrder = 26
        OnEnter = DBEdit17Enter
        OnExit = DBEdit17Exit
      end
      object DBEdit18: TDBEdit
        Left = 1025
        Top = 338
        Width = 120
        Height = 23
        DataField = 'numero'
        DataSource = DCadProntuario
        TabOrder = 27
        OnEnter = DBEdit18Enter
        OnExit = DBEdit18Exit
      end
      object DBEdit19: TDBEdit
        Left = 205
        Top = 390
        Width = 190
        Height = 23
        DataField = 'complemento'
        DataSource = DCadProntuario
        TabOrder = 28
        OnEnter = DBEdit19Enter
        OnExit = DBEdit19Exit
      end
      object DBEdit20: TDBEdit
        Left = 411
        Top = 390
        Width = 190
        Height = 23
        DataField = 'referencia'
        DataSource = DCadProntuario
        TabOrder = 29
        OnEnter = DBEdit20Enter
        OnExit = DBEdit20Exit
      end
      object DBEdit21: TDBEdit
        Left = 617
        Top = 390
        Width = 280
        Height = 23
        DataField = 'profisscao'
        DataSource = DCadProntuario
        TabOrder = 30
        OnEnter = DBEdit21Enter
        OnExit = DBEdit21Exit
      end
      object DBEdit22: TDBEdit
        Left = 913
        Top = 390
        Width = 232
        Height = 23
        DataField = 'local_trabalho'
        DataSource = DCadProntuario
        TabOrder = 31
        OnEnter = DBEdit22Enter
        OnExit = DBEdit22Exit
      end
      object DBEdit23: TDBEdit
        Left = 205
        Top = 442
        Width = 30
        Height = 23
        DataField = 'ddd1'
        DataSource = DCadProntuario
        TabOrder = 32
        OnEnter = DBEdit23Enter
        OnExit = DBEdit23Exit
      end
      object DBEdit24: TDBEdit
        Left = 251
        Top = 442
        Width = 144
        Height = 23
        DataField = 'telefone1'
        DataSource = DCadProntuario
        TabOrder = 33
        OnEnter = DBEdit24Enter
        OnExit = DBEdit24Exit
      end
      object DBEdit25: TDBEdit
        Left = 411
        Top = 442
        Width = 30
        Height = 23
        DataField = 'ddd2'
        DataSource = DCadProntuario
        TabOrder = 34
        OnEnter = DBEdit25Enter
        OnExit = DBEdit25Exit
      end
      object DBEdit26: TDBEdit
        Left = 457
        Top = 442
        Width = 144
        Height = 23
        DataField = 'telefone2'
        DataSource = DCadProntuario
        TabOrder = 35
        OnEnter = DBEdit26Enter
        OnExit = DBEdit26Exit
      end
      object DBEdit27: TDBEdit
        Left = 617
        Top = 442
        Width = 280
        Height = 23
        DataField = 'email'
        DataSource = DCadProntuario
        TabOrder = 36
        OnEnter = DBEdit27Enter
        OnExit = DBEdit27Exit
      end
      object DBEdit28: TDBEdit
        Left = 913
        Top = 442
        Width = 232
        Height = 23
        DataField = 'nome_contato'
        DataSource = DCadProntuario
        TabOrder = 37
        OnEnter = DBEdit28Enter
        OnExit = DBEdit28Exit
      end
      object DBEdit29: TDBEdit
        Left = 205
        Top = 494
        Width = 30
        Height = 23
        DataField = 'ddd_contato'
        DataSource = DCadProntuario
        TabOrder = 38
        OnEnter = DBEdit29Enter
        OnExit = DBEdit29Exit
      end
      object DBEdit30: TDBEdit
        Left = 251
        Top = 494
        Width = 144
        Height = 23
        DataField = 'telefone_contato'
        DataSource = DCadProntuario
        TabOrder = 39
        OnEnter = DBEdit30Enter
        OnExit = DBEdit30Exit
      end
      object DBLookupComboBox11: TDBLookupComboBox
        Left = 411
        Top = 494
        Width = 232
        Height = 23
        DataField = 'idconvenio'
        DataSource = DCadProntuario
        KeyField = 'codigo'
        ListField = 'RAZAO_SOCIAL'
        ListSource = DPesqConvenio
        TabOrder = 40
      end
      object DBEdit31: TDBEdit
        Left = 658
        Top = 494
        Width = 192
        Height = 23
        DataField = 'cod_carterinha'
        DataSource = DCadProntuario
        TabOrder = 41
        OnEnter = DBEdit31Enter
        OnExit = DBEdit31Exit
      end
      object DBEdit32: TDBEdit
        Left = 865
        Top = 494
        Width = 280
        Height = 23
        DataField = 'conjuge'
        DataSource = DCadProntuario
        TabOrder = 42
        OnEnter = DBEdit32Enter
        OnExit = DBEdit32Exit
      end
      object Edit1: TEdit
        Left = 32
        Top = 496
        Width = 121
        Height = 23
        TabOrder = 43
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Respons'#225'vel'
      ImageIndex = 1
      object Label45: TLabel
        Left = 205
        Top = 61
        Width = 121
        Height = 15
        Caption = 'Nome do Repons'#225'vel'
        FocusControl = DBEdit33
      end
      object Label46: TLabel
        Left = 706
        Top = 61
        Width = 60
        Height = 15
        Caption = 'CPF/CNPJ'
        FocusControl = DBEdit34
      end
      object Label47: TLabel
        Left = 947
        Top = 61
        Width = 17
        Height = 15
        Caption = 'RG'
        FocusControl = DBEdit35
      end
      object Label48: TLabel
        Left = 205
        Top = 113
        Width = 23
        Height = 15
        Caption = 'CEP'
        FocusControl = DBEdit36
      end
      object Label49: TLabel
        Left = 341
        Top = 115
        Width = 54
        Height = 15
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit37
      end
      object Label50: TLabel
        Left = 706
        Top = 115
        Width = 46
        Height = 15
        Caption = 'N'#250'mero'
        FocusControl = DBEdit38
      end
      object Label51: TLabel
        Left = 856
        Top = 115
        Width = 35
        Height = 15
        Caption = 'Bairro'
        FocusControl = DBEdit39
      end
      object Label52: TLabel
        Left = 205
        Top = 165
        Width = 39
        Height = 15
        Caption = 'Cidade'
        FocusControl = DBEdit40
      end
      object Label53: TLabel
        Left = 476
        Top = 167
        Width = 16
        Height = 15
        Caption = 'UF'
        FocusControl = DBEdit41
      end
      object Label54: TLabel
        Left = 517
        Top = 167
        Width = 128
        Height = 15
        Caption = 'E-mail do respons'#225'vel'
        FocusControl = DBEdit42
      end
      object Label55: TLabel
        Left = 856
        Top = 167
        Width = 27
        Height = 15
        Caption = 'DDD'
        FocusControl = DBEdit43
      end
      object Label56: TLabel
        Left = 905
        Top = 167
        Width = 123
        Height = 15
        Caption = 'telefone_responsavel'
        FocusControl = DBEdit44
      end
      object DBEdit33: TDBEdit
        Left = 205
        Top = 79
        Width = 485
        Height = 23
        DataField = 'nome_responsavel'
        DataSource = DCadProntuario
        TabOrder = 0
        OnEnter = DBEdit33Enter
        OnExit = DBEdit33Exit
      end
      object DBEdit34: TDBEdit
        Left = 706
        Top = 79
        Width = 226
        Height = 23
        DataField = 'cpf_cnpj'
        DataSource = DCadProntuario
        TabOrder = 1
        OnEnter = DBEdit34Enter
        OnExit = DBEdit34Exit
      end
      object DBEdit35: TDBEdit
        Left = 947
        Top = 79
        Width = 201
        Height = 23
        DataField = 'rg_responsavel'
        DataSource = DCadProntuario
        TabOrder = 2
        OnEnter = DBEdit35Enter
        OnExit = DBEdit35Exit
      end
      object DBEdit36: TDBEdit
        Left = 205
        Top = 131
        Width = 121
        Height = 23
        DataField = 'cep_responsavel'
        DataSource = DCadProntuario
        TabOrder = 3
        OnEnter = DBEdit36Enter
        OnExit = DBEdit36Exit
      end
      object DBEdit37: TDBEdit
        Left = 341
        Top = 131
        Width = 349
        Height = 23
        DataField = 'endereco_responsavel'
        DataSource = DCadProntuario
        TabOrder = 4
        OnEnter = DBEdit37Enter
        OnExit = DBEdit37Exit
      end
      object DBEdit38: TDBEdit
        Left = 706
        Top = 131
        Width = 134
        Height = 23
        DataField = 'numero_responsavel'
        DataSource = DCadProntuario
        TabOrder = 5
        OnEnter = DBEdit38Enter
        OnExit = DBEdit38Exit
      end
      object DBEdit39: TDBEdit
        Left = 856
        Top = 131
        Width = 292
        Height = 23
        DataField = 'bairro_responsavel'
        DataSource = DCadProntuario
        TabOrder = 6
        OnEnter = DBEdit39Enter
        OnExit = DBEdit39Exit
      end
      object DBEdit40: TDBEdit
        Left = 205
        Top = 183
        Width = 260
        Height = 23
        DataField = 'cidade_responsavel'
        DataSource = DCadProntuario
        TabOrder = 7
        OnEnter = DBEdit40Enter
        OnExit = DBEdit40Exit
      end
      object DBEdit41: TDBEdit
        Left = 476
        Top = 183
        Width = 30
        Height = 23
        DataField = 'estado_responsavel'
        DataSource = DCadProntuario
        TabOrder = 8
        OnEnter = DBEdit41Enter
        OnExit = DBEdit41Exit
      end
      object DBEdit42: TDBEdit
        Left = 517
        Top = 183
        Width = 323
        Height = 23
        DataField = 'email_responsavel'
        DataSource = DCadProntuario
        TabOrder = 9
        OnEnter = DBEdit42Enter
        OnExit = DBEdit42Exit
      end
      object DBEdit43: TDBEdit
        Left = 856
        Top = 183
        Width = 38
        Height = 23
        DataField = 'ddd_responsavel'
        DataSource = DCadProntuario
        TabOrder = 10
        OnEnter = DBEdit43Enter
        OnExit = DBEdit43Exit
      end
      object DBEdit44: TDBEdit
        Left = 905
        Top = 183
        Width = 243
        Height = 23
        DataField = 'telefone_responsavel'
        DataSource = DCadProntuario
        TabOrder = 11
        OnEnter = DBEdit44Enter
        OnExit = DBEdit44Exit
      end
    end
    object Históricos: TTabSheet
      Caption = 'Hist'#243'ricos'
      ImageIndex = 5
    end
  end
  object ImageList1: TImageList
    BlendColor = clHighlightText
    BkColor = clWhite
    Left = 409
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
  object QCadProntuario: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM CAD_PRONTUARIO'
      'LIMIT 1')
    Params = <>
    Left = 880
    Top = 80
    object QCadProntuariocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QCadProntuarionome_social: TWideStringField
      FieldName = 'nome_social'
      Size = 100
    end
    object QCadProntuarionome_completo: TWideStringField
      FieldName = 'nome_completo'
      Size = 100
    end
    object QCadProntuariotp_sanguineo: TWideStringField
      FieldName = 'tp_sanguineo'
      Size = 5
    end
    object QCadProntuariodt_nascimento: TDateField
      FieldName = 'dt_nascimento'
      EditMask = '!99/99/9999;1;_'
    end
    object QCadProntuarionum_rg: TWideStringField
      FieldName = 'num_rg'
    end
    object QCadProntuariouf_rg: TWideStringField
      FieldName = 'uf_rg'
      Size = 2
    end
    object QCadProntuarionum_cns: TWideStringField
      FieldName = 'num_cns'
    end
    object QCadProntuarioidnacionalidade: TIntegerField
      FieldName = 'idnacionalidade'
    end
    object QCadProntuarionaturalidade: TWideStringField
      FieldName = 'naturalidade'
      Size = 30
    end
    object QCadProntuarioidsexo: TIntegerField
      FieldName = 'idsexo'
    end
    object QCadProntuarioidestcivil: TIntegerField
      FieldName = 'idestcivil'
    end
    object QCadProntuarioidraca: TIntegerField
      FieldName = 'idraca'
    end
    object QCadProntuarioidetnia: TIntegerField
      FieldName = 'idetnia'
    end
    object QCadProntuarioidgrauins: TIntegerField
      FieldName = 'idgrauins'
    end
    object QCadProntuarioidreligiao: TIntegerField
      FieldName = 'idreligiao'
    end
    object QCadProntuarioidtpdoc: TIntegerField
      FieldName = 'idtpdoc'
    end
    object QCadProntuarionum_documentos: TWideStringField
      FieldName = 'num_documentos'
    end
    object QCadProntuariomat_cert_nascimento: TWideStringField
      FieldName = 'mat_cert_nascimento'
    end
    object QCadProntuarionome_pai: TWideStringField
      FieldName = 'nome_pai'
      Size = 100
    end
    object QCadProntuarionome_mae: TWideStringField
      FieldName = 'nome_mae'
      Size = 100
    end
    object QCadProntuarion_pasta: TWideStringField
      FieldName = 'n_pasta'
    end
    object QCadProntuarioloc_prontuario: TWideStringField
      FieldName = 'loc_prontuario'
    end
    object QCadProntuariocep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
    object QCadProntuarioidcidade: TIntegerField
      FieldName = 'idcidade'
    end
    object QCadProntuarioidtplogradouro: TIntegerField
      FieldName = 'idtplogradouro'
    end
    object QCadProntuarioendereco: TWideStringField
      FieldName = 'endereco'
      Size = 100
    end
    object QCadProntuarionumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object QCadProntuariocomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 30
    end
    object QCadProntuariobairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object QCadProntuarioreferencia: TWideStringField
      FieldName = 'referencia'
      Size = 30
    end
    object QCadProntuarioprofisscao: TWideStringField
      FieldName = 'profisscao'
      Size = 30
    end
    object QCadProntuariolocal_trabalho: TWideStringField
      FieldName = 'local_trabalho'
      Size = 50
    end
    object QCadProntuarioddd1: TWideStringField
      FieldName = 'ddd1'
      Size = 2
    end
    object QCadProntuarioddd2: TWideStringField
      FieldName = 'ddd2'
      Size = 2
    end
    object QCadProntuariotelefone1: TWideStringField
      FieldName = 'telefone1'
    end
    object QCadProntuariotelefone2: TWideStringField
      FieldName = 'telefone2'
    end
    object QCadProntuarioidformcont: TIntegerField
      FieldName = 'idformcont'
    end
    object QCadProntuarioemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object QCadProntuarionome_contato: TWideStringField
      FieldName = 'nome_contato'
      Size = 100
    end
    object QCadProntuarioddd_contato: TWideStringField
      FieldName = 'ddd_contato'
      Size = 2
    end
    object QCadProntuariotelefone_contato: TWideStringField
      FieldName = 'telefone_contato'
    end
    object QCadProntuarioidconvenio: TIntegerField
      FieldName = 'idconvenio'
    end
    object QCadProntuariocod_carterinha: TWideStringField
      FieldName = 'cod_carterinha'
    end
    object QCadProntuarioconjuge: TWideStringField
      FieldName = 'conjuge'
      Size = 100
    end
    object QCadProntuarioresponsavel_paciente: TWideStringField
      FieldName = 'responsavel_paciente'
      Size = 100
    end
    object QCadProntuariodt_cadastro: TDateField
      FieldName = 'dt_cadastro'
    end
    object QCadProntuariobtn_editar: TWideStringField
      FieldName = 'btn_editar'
      Size = 1
    end
    object QCadProntuariobtn_excluir: TWideStringField
      FieldName = 'btn_excluir'
      Size = 1
    end
    object QCadProntuarionome_responsavel: TWideStringField
      FieldName = 'nome_responsavel'
      ReadOnly = True
      Size = 100
    end
    object QCadProntuariocpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      ReadOnly = True
    end
    object QCadProntuariorg_responsavel: TWideStringField
      FieldName = 'rg_responsavel'
      ReadOnly = True
    end
    object QCadProntuarioddd_responsavel: TWideStringField
      FieldName = 'ddd_responsavel'
      ReadOnly = True
      Size = 5
    end
    object QCadProntuariotelefone_responsavel: TWideStringField
      FieldName = 'telefone_responsavel'
      ReadOnly = True
    end
    object QCadProntuariocep_responsavel: TWideStringField
      FieldName = 'cep_responsavel'
      ReadOnly = True
      EditMask = '99999\-999;1;_'
      Size = 9
    end
    object QCadProntuarioendereco_responsavel: TWideStringField
      FieldName = 'endereco_responsavel'
      ReadOnly = True
      Size = 100
    end
    object QCadProntuarionumero_responsavel: TWideStringField
      FieldName = 'numero_responsavel'
      ReadOnly = True
      Size = 10
    end
    object QCadProntuariocidade_responsavel: TWideStringField
      FieldName = 'cidade_responsavel'
      ReadOnly = True
      Size = 50
    end
    object QCadProntuarioestado_responsavel: TWideStringField
      FieldName = 'estado_responsavel'
      ReadOnly = True
      Size = 2
    end
    object QCadProntuariobairro_responsavel: TWideStringField
      FieldName = 'bairro_responsavel'
      ReadOnly = True
      Size = 30
    end
    object QCadProntuarioemail_responsavel: TWideStringField
      FieldName = 'email_responsavel'
      ReadOnly = True
      Size = 100
    end
    object QCadProntuarioinativo: TWideStringField
      FieldName = 'inativo'
      Size = 1
    end
  end
  object DCadProntuario: TDataSource
    DataSet = QCadProntuario
    Left = 920
    Top = 80
  end
  object QPesqNacio: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_CADNACION'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 32
    Top = 88
    object QPesqNaciocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqNaciodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object QPesqNaciocod_nacion: TWideStringField
      FieldName = 'cod_nacion'
      Size = 5
    end
  end
  object DPesqNacio: TDataSource
    DataSet = QPesqNacio
    Left = 72
    Top = 88
  end
  object QPesqSexo: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_SEXO'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 112
    Top = 88
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
    Left = 152
    Top = 88
  end
  object QPesqEstCivil: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_ESTCIVI'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 32
    Top = 136
    object QPesqEstCivilcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqEstCivildescricao: TWideStringField
      FieldName = 'descricao'
    end
    object QPesqEstCivilcod_estciv: TWideStringField
      FieldName = 'cod_estciv'
      Size = 5
    end
    object QPesqEstCivilcod_tabcros: TWideStringField
      FieldName = 'cod_tabcros'
      Size = 5
    end
  end
  object DPesqEstCivil: TDataSource
    DataSet = QPesqEstCivil
    Left = 72
    Top = 136
  end
  object QPesqGrauInst: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_GRAINS'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 112
    Top = 136
    object QPesqGrauInstcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqGrauInstdescricao: TWideStringField
      FieldName = 'descricao'
    end
  end
  object DPesqGrauInst: TDataSource
    DataSet = QPesqGrauInst
    Left = 152
    Top = 136
  end
  object QPesqRacCor: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_RACCOR'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 32
    Top = 184
    object QPesqRacCorcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqRacCordescricao: TWideStringField
      FieldName = 'descricao'
    end
    object QPesqRacCorcod_cross: TWideStringField
      FieldName = 'cod_cross'
      Size = 5
    end
  end
  object DPesqRacCor: TDataSource
    DataSet = QPesqRacCor
    Left = 72
    Top = 184
  end
  object QPesqEtinia: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_ETNIND'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 120
    Top = 184
    object QPesqEtiniacodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqEtiniadescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object QPesqEtiniacod_etnia: TWideStringField
      FieldName = 'cod_etnia'
      Size = 5
    end
  end
  object DPesqEtinia: TDataSource
    DataSet = QPesqEtinia
    Left = 160
    Top = 184
  end
  object QPesqReligiao: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_RELIGI'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 32
    Top = 224
    object QPesqReligiaocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqReligiaodescricao: TWideStringField
      FieldName = 'descricao'
    end
  end
  object DPesqReligiao: TDataSource
    DataSet = QPesqReligiao
    Left = 72
    Top = 224
  end
  object QPesqTpDoc: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_TPDOCUMENTO'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 120
    Top = 224
    object QPesqTpDoccodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqTpDocdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object QPesqTpDoccod_tpdoc: TWideStringField
      FieldName = 'cod_tpdoc'
      Size = 5
    end
    object QPesqTpDoccod_cros: TWideStringField
      FieldName = 'cod_cros'
      Size = 5
    end
  end
  object DPesqTpDoc: TDataSource
    DataSet = QPesqTpDoc
    Left = 160
    Top = 224
  end
  object QPesqCidade: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_CIDADES'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 32
    Top = 264
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
    Left = 72
    Top = 264
  end
  object QPesqTpLogradouro: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_LOGRADOURO'
      'ORDER BY DESCRICAO')
    Params = <>
    Left = 120
    Top = 264
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
    Left = 160
    Top = 264
  end
  object QPesqConvenio: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT A.*, B.RAZAO_SOCIAL'
      '   FROM CAD_CONVENIO A'
      '   INNER JOIN CAD_CLIENTES B ON (A.IDPRESTADOR = B.CODIGO)'
      'WHERE A.INATIVO = '#39'N'#39
      '')
    Params = <>
    Left = 32
    Top = 312
    object QPesqConveniocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqConvenioidprestador: TIntegerField
      FieldName = 'idprestador'
    end
    object QPesqConvenionum_cns: TWideStringField
      FieldName = 'num_cns'
    end
    object QPesqConvenionum_cnes_sih_sus: TWideStringField
      FieldName = 'num_cnes_sih_sus'
    end
    object QPesqConvenionum_susep: TWideStringField
      FieldName = 'num_susep'
    end
    object QPesqConvenionum_reg_ans: TWideStringField
      FieldName = 'num_reg_ans'
    end
    object QPesqConveniocod_sus_regional: TWideStringField
      FieldName = 'cod_sus_regional'
    end
    object QPesqConveniovlr_autorizacao_matmed: TFloatField
      FieldName = 'vlr_autorizacao_matmed'
    end
    object QPesqConvenioidentfica_prest_proprio: TWideStringField
      FieldName = 'identfica_prest_proprio'
      Size = 1
    end
    object QPesqConvenioprof_autonomo_cessao_uso: TWideStringField
      FieldName = 'prof_autonomo_cessao_uso'
      Size = 1
    end
    object QPesqConvenioconvenio_contratualizado: TWideStringField
      FieldName = 'convenio_contratualizado'
      Size = 1
    end
    object QPesqConveniocod_contrato: TWideStringField
      FieldName = 'cod_contrato'
    end
    object QPesqConvenionum_caracter_cart: TWideStringField
      FieldName = 'num_caracter_cart'
      Size = 5
    end
    object QPesqConvenioobrigatorio_carterinha: TWideStringField
      FieldName = 'obrigatorio_carterinha'
      Size = 1
    end
    object QPesqConveniosenha_autorizacao_obrigatorio: TWideStringField
      FieldName = 'senha_autorizacao_obrigatorio'
      Size = 1
    end
    object QPesqConvenioobrigatorio_med_solicitante: TWideStringField
      FieldName = 'obrigatorio_med_solicitante'
      Size = 1
    end
    object QPesqConveniotiss_idutilizaguiAOperadora: TIntegerField
      FieldName = 'tiss_idutilizaguiAOperadora'
    end
    object QPesqConveniotiis_disc_matmed: TIntegerField
      FieldName = 'tiis_disc_matmed'
    end
    object QPesqConveniotiss_versaoimp: TWideStringField
      FieldName = 'tiss_versaoimp'
      Size = 15
    end
    object QPesqConveniotiss_tabelamed: TIntegerField
      FieldName = 'tiss_tabelamed'
    end
    object QPesqConveniotiss_tabelamat: TIntegerField
      FieldName = 'tiss_tabelamat'
    end
    object QPesqConveniotiss_resumo_mat: TWideStringField
      FieldName = 'tiss_resumo_mat'
      Size = 15
    end
    object QPesqConveniotiss_resumo_med: TWideStringField
      FieldName = 'tiss_resumo_med'
      Size = 15
    end
    object QPesqConveniotiss_sentis: TIntegerField
      FieldName = 'tiss_sentis'
    end
    object QPesqConveniotiss_procedimento_data: TIntegerField
      FieldName = 'tiss_procedimento_data'
    end
    object QPesqConveniotiss_versao: TWideStringField
      FieldName = 'tiss_versao'
      Size = 15
    end
    object QPesqConveniotiss_maxguia: TWideStringField
      FieldName = 'tiss_maxguia'
    end
    object QPesqConveniotiss_pastagravacao: TWideStringField
      FieldName = 'tiss_pastagravacao'
      Size = 100
    end
    object QPesqConveniotiss_margem_comer: TFloatField
      FieldName = 'tiss_margem_comer'
    end
    object QPesqConveniotiss_hospprofexec: TWideStringField
      FieldName = 'tiss_hospprofexec'
      Size = 1
    end
    object QPesqConveniotiss_filmematmed: TWideStringField
      FieldName = 'tiss_filmematmed'
      Size = 1
    end
    object QPesqConveniotiss_mesmotpatendimento: TWideStringField
      FieldName = 'tiss_mesmotpatendimento'
      Size = 1
    end
    object QPesqConveniotiss_geraguiaprincipal: TWideStringField
      FieldName = 'tiss_geraguiaprincipal'
      Size = 1
    end
    object QPesqConveniotiss_hashnomearquivo: TWideStringField
      FieldName = 'tiss_hashnomearquivo'
      Size = 1
    end
    object QPesqConveniodsc_emitesomentespdireto: TWideStringField
      FieldName = 'dsc_emitesomentespdireto'
      Size = 1
    end
    object QPesqConveniodsc_imprimivalorchcolvlruni: TWideStringField
      FieldName = 'dsc_imprimivalorchcolvlruni'
      Size = 1
    end
    object QPesqConveniodsc_spseparado: TWideStringField
      FieldName = 'dsc_spseparado'
      Size = 1
    end
    object QPesqConveniodsc_imprimiservcredenciado: TWideStringField
      FieldName = 'dsc_imprimiservcredenciado'
      Size = 1
    end
    object QPesqConvenioinativo: TWideStringField
      FieldName = 'inativo'
      Size = 1
    end
    object QPesqConvenioRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
  end
  object DPesqConvenio: TDataSource
    DataSet = QPesqConvenio
    Left = 72
    Top = 312
  end
end
