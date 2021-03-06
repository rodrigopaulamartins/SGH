object FInclusaoAlteracaoPrestador: TFInclusaoAlteracaoPrestador
  Left = 0
  Top = 0
  BorderIcons = []
  ClientHeight = 437
  ClientWidth = 883
  Color = clWindow
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
  object pnl_topo: TPanel
    Left = 0
    Top = 0
    Width = 883
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 193
      Height = 19
      Caption = 'PRESTADOR DE SERVI'#199'OS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object btn_fechar: TSpeedButton
      Left = 855
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
      Left = 617
      Top = 0
      Width = 3
      Height = 46
      Align = alRight
      Style = bsRaised
      ExplicitLeft = 411
      ExplicitHeight = 33
    end
    object pnl_btnconfirmar: TPanel
      Left = 488
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
    end
    object pnl_btncancelar: TPanel
      Left = 620
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
      Left = 749
      Top = 0
      Width = 106
      Height = 46
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 46
    Width = 883
    Height = 391
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Cadastrais'
      object Label2: TLabel
        Left = 80
        Top = 38
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
      end
      object Label3: TLabel
        Left = 176
        Top = 40
        Width = 178
        Height = 15
        Caption = 'Nome do Prestador de Serivi'#231'o'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 617
        Top = 40
        Width = 60
        Height = 15
        Caption = 'CPF/CNPJ'
        FocusControl = DBEdit3
      end
      object SpeedButton2: TSpeedButton
        Left = 798
        Top = 49
        Width = 30
        Height = 30
        ImageIndex = 2
        Images = ImageList1
        Flat = True
        OnClick = SpeedButton2Click
      end
      object Label5: TLabel
        Left = 80
        Top = 95
        Width = 102
        Height = 15
        Caption = 'Tipo de Prestador'
      end
      object Label6: TLabel
        Left = 320
        Top = 97
        Width = 91
        Height = 15
        Caption = 'N'#250'mero do CNS'
        FocusControl = DBEdit4
      end
      object Label7: TLabel
        Left = 511
        Top = 97
        Width = 98
        Height = 15
        Caption = 'N'#250'mero do CNES'
        FocusControl = DBEdit5
      end
      object Label8: TLabel
        Left = 660
        Top = 97
        Width = 130
        Height = 15
        Caption = 'Inscri'#231#227'o da prefeitura'
        FocusControl = DBEdit6
      end
      object Label9: TLabel
        Left = 80
        Top = 152
        Width = 103
        Height = 15
        Caption = 'Registro conselho'
      end
      object Label10: TLabel
        Left = 349
        Top = 154
        Width = 16
        Height = 15
        Caption = 'UF'
        FocusControl = DBEdit7
      end
      object Label11: TLabel
        Left = 394
        Top = 152
        Width = 119
        Height = 15
        Caption = 'N'#250'mero do Conselho'
        FocusControl = DBEdit8
      end
      object Label12: TLabel
        Left = 543
        Top = 152
        Width = 87
        Height = 15
        Caption = 'Data Admiss'#227'o'
        FocusControl = DBEdit9
      end
      object Label13: TLabel
        Left = 695
        Top = 152
        Width = 57
        Height = 15
        Caption = 'Data Final'
        FocusControl = DBEdit10
      end
      object DBEdit2: TDBEdit
        Left = 176
        Top = 56
        Width = 425
        Height = 23
        TabStop = False
        DataField = 'NomePrestador'
        DataSource = DCadPrestador
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 617
        Top = 56
        Width = 168
        Height = 23
        TabStop = False
        DataField = 'cpfCliente'
        DataSource = DCadPrestador
        ReadOnly = True
        TabOrder = 1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 80
        Top = 113
        Width = 225
        Height = 23
        DataField = 'idtpprestador'
        DataSource = DCadPrestador
        KeyField = 'codigo'
        ListField = 'descricao'
        ListSource = DPesqTpPrestador
        TabOrder = 2
        OnEnter = DBLookupComboBox1Enter
        OnExit = DBLookupComboBox1Exit
      end
      object DBEdit4: TDBEdit
        Left = 320
        Top = 113
        Width = 177
        Height = 23
        DataField = 'num_cns'
        DataSource = DCadPrestador
        TabOrder = 3
        OnEnter = DBEdit4Enter
        OnExit = DBEdit4Exit
      end
      object DBEdit5: TDBEdit
        Left = 511
        Top = 113
        Width = 134
        Height = 23
        DataField = 'num_cnes'
        DataSource = DCadPrestador
        TabOrder = 4
        OnEnter = DBEdit5Enter
        OnExit = DBEdit5Exit
      end
      object DBEdit6: TDBEdit
        Left = 660
        Top = 113
        Width = 166
        Height = 23
        DataField = 'insc_prefeitura'
        DataSource = DCadPrestador
        TabOrder = 5
        OnEnter = DBEdit6Enter
        OnExit = DBEdit6Exit
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 80
        Top = 170
        Width = 255
        Height = 23
        DataField = 'idtpconselho'
        DataSource = DCadPrestador
        KeyField = 'codigo'
        ListField = 'descricao'
        ListSource = DPesqTpPrestador
        TabOrder = 6
        OnEnter = DBLookupComboBox2Enter
        OnExit = DBLookupComboBox2Exit
      end
      object DBEdit7: TDBEdit
        Left = 349
        Top = 170
        Width = 30
        Height = 23
        DataField = 'uf_conselho'
        DataSource = DCadPrestador
        TabOrder = 7
        OnEnter = DBEdit7Enter
        OnExit = DBEdit7Exit
      end
      object DBEdit8: TDBEdit
        Left = 394
        Top = 170
        Width = 134
        Height = 23
        DataField = 'num_conselho'
        DataSource = DCadPrestador
        TabOrder = 8
        OnEnter = DBEdit8Enter
        OnExit = DBEdit8Exit
      end
      object DBEdit9: TDBEdit
        Left = 543
        Top = 170
        Width = 134
        Height = 23
        DataField = 'dt_admissao'
        DataSource = DCadPrestador
        TabOrder = 9
        OnEnter = DBEdit9Enter
        OnExit = DBEdit9Exit
      end
      object DBEdit10: TDBEdit
        Left = 692
        Top = 170
        Width = 134
        Height = 23
        DataField = 'dt_desligamento'
        DataSource = DCadPrestador
        TabOrder = 10
        OnEnter = DBEdit10Enter
        OnExit = DBEdit10Exit
      end
      object Edit1: TEdit
        Left = 80
        Top = 56
        Width = 80
        Height = 23
        TabStop = False
        ReadOnly = True
        TabOrder = 11
      end
      object DBEdit1: TDBEdit
        Left = 80
        Top = 56
        Width = 81
        Height = 23
        TabStop = False
        DataField = 'idprestador'
        DataSource = DCadPrestador
        TabOrder = 12
      end
      object DBEdit11: TDBEdit
        Left = 80
        Top = 280
        Width = 134
        Height = 23
        DataField = 'codigo'
        DataSource = DCadPrestador
        TabOrder = 13
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Especialidade'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 54
        Width = 869
        Height = 304
        Align = alClient
        BorderStyle = bsNone
        DataSource = DCadEspec
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Roboto'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num_cerificacao'
            Title.Caption = 'N'#186' Registro'
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'btn_alterar'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindow
            Title.Font.Height = -13
            Title.Font.Name = 'Roboto'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'btn_excluir'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindow
            Title.Font.Height = -13
            Title.Font.Name = 'Roboto'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idespecialidade'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'espec_principal'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'idprestador'
            Visible = False
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 875
        Height = 51
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Panel2: TPanel
          Left = 12
          Top = 4
          Width = 101
          Height = 33
          Caption = 'Novo +'
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          OnClick = Panel2Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Credenciamento'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 875
        Height = 51
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Panel5: TPanel
          Left = 12
          Top = 4
          Width = 101
          Height = 33
          Caption = 'Novo +'
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          OnClick = Panel5Click
        end
      end
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 54
        Width = 869
        Height = 304
        Align = alClient
        BorderStyle = bsNone
        DataSource = DCadCredenciado
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Roboto'
        TitleFont.Style = []
        OnCellClick = DBGrid2CellClick
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idsetor'
            Title.Caption = 'Setor'
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idconvenio'
            Title.Caption = 'Conv'#234'nio'
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num_contrato'
            Title.Caption = 'C'#243'd. Contrato'
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'btn_excluir'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindow
            Title.Font.Height = -13
            Title.Font.Name = 'Roboto'
            Title.Font.Style = []
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'btn_alterar'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindow
            Title.Font.Height = -13
            Title.Font.Name = 'Roboto'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idprestador'
            Visible = False
          end>
      end
    end
  end
  object ImageList1: TImageList
    BlendColor = clHighlightText
    BkColor = clWhite
    Left = 673
    Top = 8
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
  object QCadPrestador: TZQuery
    Connection = DM.Conexao
    AfterScroll = QCadPrestadorAfterScroll
    SQL.Strings = (
      'SELECT * FROM CAD_PRESTADORSERVICO')
    Params = <>
    Left = 256
    Top = 16
    object QCadPrestadorcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QCadPrestadoridprestador: TIntegerField
      FieldName = 'idprestador'
    end
    object QCadPrestadoridtpprestador: TIntegerField
      FieldName = 'idtpprestador'
    end
    object QCadPrestadornum_cns: TWideStringField
      FieldName = 'num_cns'
    end
    object QCadPrestadornum_cnes: TWideStringField
      FieldName = 'num_cnes'
      Size = 10
    end
    object QCadPrestadoridtpconselho: TIntegerField
      FieldName = 'idtpconselho'
    end
    object QCadPrestadoruf_conselho: TWideStringField
      FieldName = 'uf_conselho'
      Size = 2
    end
    object QCadPrestadornum_conselho: TWideStringField
      FieldName = 'num_conselho'
      Size = 10
    end
    object QCadPrestadorbtn_alterar: TWideStringField
      FieldName = 'btn_alterar'
      ReadOnly = True
      Size = 1
    end
    object QCadPrestadorbtn_excluir: TWideStringField
      FieldName = 'btn_excluir'
      ReadOnly = True
      Size = 1
    end
    object QCadPrestadorinativo: TWideStringField
      FieldName = 'inativo'
      Size = 1
    end
    object QCadPrestadorcpfCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cpfCliente'
      LookupDataSet = QDadosCliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'cpf_cnpj'
      KeyFields = 'idprestador'
      Lookup = True
    end
    object QCadPrestadorNomePrestador: TStringField
      FieldKind = fkLookup
      FieldName = 'NomePrestador'
      LookupDataSet = QDadosCliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'razao_social'
      KeyFields = 'idprestador'
      Size = 100
      Lookup = True
    end
    object QCadPrestadorinsc_prefeitura: TWideStringField
      FieldName = 'insc_prefeitura'
    end
    object QCadPrestadormotivo_finalizacao: TWideStringField
      FieldName = 'motivo_finalizacao'
      Size = 100
    end
    object QCadPrestadordt_admissao: TDateField
      FieldName = 'dt_admissao'
      EditMask = '!99/99/9999;1;_'
    end
    object QCadPrestadordt_desligamento: TDateField
      FieldName = 'dt_desligamento'
      EditMask = '!99/99/9999;1;_'
    end
  end
  object DCadPrestador: TDataSource
    DataSet = QCadPrestador
    Left = 296
    Top = 16
  end
  object QDadosCliente: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTES')
    Params = <>
    Left = 332
    Top = 14
    object QDadosClientecodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QDadosClientecpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
    end
    object QDadosClienterazao_social: TWideStringField
      FieldName = 'razao_social'
      Size = 100
    end
    object QDadosClientenome_fantasia: TWideStringField
      FieldName = 'nome_fantasia'
      Size = 100
    end
    object QDadosClienteidtplogradouro: TIntegerField
      FieldName = 'idtplogradouro'
    end
    object QDadosClienteendereco: TWideStringField
      FieldName = 'endereco'
      Size = 100
    end
    object QDadosClientenumero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
    object QDadosClientecomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 30
    end
    object QDadosClientecep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
    object QDadosClientebairro: TWideStringField
      FieldName = 'bairro'
      Size = 30
    end
    object QDadosClienteidcidade: TIntegerField
      FieldName = 'idcidade'
    end
    object QDadosClienteuf: TWideStringField
      FieldName = 'uf'
      Size = 2
    end
    object QDadosClienteidpais: TIntegerField
      FieldName = 'idpais'
    end
    object QDadosClienteddd: TWideStringField
      FieldName = 'ddd'
      Size = 2
    end
    object QDadosClientetelefone1: TWideStringField
      FieldName = 'telefone1'
    end
    object QDadosClienteddd1: TWideStringField
      FieldName = 'ddd1'
      Size = 2
    end
    object QDadosClientetelefone2: TWideStringField
      FieldName = 'telefone2'
    end
    object QDadosClienteemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object QDadosClientesite: TWideStringField
      FieldName = 'site'
      Size = 50
    end
    object QDadosClientecontato: TWideStringField
      FieldName = 'contato'
      Size = 50
    end
    object QDadosClienteidRamoatividade: TIntegerField
      FieldName = 'idRamoatividade'
    end
    object QDadosClientedt_cadastro: TDateField
      FieldName = 'dt_cadastro'
    end
    object QDadosClienteinativo: TWideStringField
      FieldName = 'inativo'
      Size = 1
    end
    object QDadosClientecliente: TWideStringField
      FieldName = 'cliente'
      Size = 1
    end
    object QDadosClientefornecedor: TWideStringField
      FieldName = 'fornecedor'
      Size = 1
    end
    object QDadosClientepessoa_fisica: TWideStringField
      FieldName = 'pessoa_fisica'
      Size = 1
    end
    object QDadosClienteprestador_servico: TWideStringField
      FieldName = 'prestador_servico'
      Size = 1
    end
    object QDadosClientebtn_alterar: TWideStringField
      FieldName = 'btn_alterar'
      Size = 1
    end
    object QDadosClientebtn_excluir: TWideStringField
      FieldName = 'btn_excluir'
      Size = 1
    end
  end
  object DPesqTpPrestador: TDataSource
    DataSet = QPesqTpPrestador
    Left = 564
    Top = 336
  end
  object QPesqTpPrestador: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_TIPOPRESTADOR')
    Params = <>
    Left = 532
    Top = 336
    object QPesqTpPrestadorcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqTpPrestadordescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
  end
  object QPesqRegConselho: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_TIPOCONSELHO')
    Params = <>
    Left = 532
    Top = 384
    object QPesqRegConselhocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqRegConselhodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object QPesqRegConselhosigla_conselho: TWideStringField
      FieldName = 'sigla_conselho'
      Size = 10
    end
    object QPesqRegConselhocond_tiss: TWideStringField
      FieldName = 'cond_tiss'
      Size = 5
    end
    object QPesqRegConselhoinativo: TWideStringField
      FieldName = 'inativo'
      Size = 1
    end
  end
  object DPesqRegConselho: TDataSource
    DataSet = QPesqRegConselho
    Left = 564
    Top = 384
  end
  object QCadEspec: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM CAD_ESPEC_MED'
      'WHERE'
      'IDPRESTADOR =:CODIGO')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    DataSource = DCadPrestador
    Left = 376
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object QCadEspeccodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QCadEspecidespecialidade: TIntegerField
      FieldName = 'idespecialidade'
    end
    object QCadEspecnum_cerificacao: TWideStringField
      FieldName = 'num_cerificacao'
      Size = 30
    end
    object QCadEspecespec_principal: TWideStringField
      FieldName = 'espec_principal'
      Size = 1
    end
    object QCadEspecidprestador: TIntegerField
      FieldName = 'idprestador'
    end
    object QCadEspecbtn_alterar: TWideStringField
      FieldName = 'btn_alterar'
      Size = 1
    end
    object QCadEspecbtn_excluir: TWideStringField
      FieldName = 'btn_excluir'
      Size = 1
    end
    object QCadEspecDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = QDescCBO
      LookupKeyFields = 'codigo'
      LookupResultField = 'descricao'
      KeyFields = 'idespecialidade'
      Size = 50
      Lookup = True
    end
  end
  object DCadEspec: TDataSource
    DataSet = QCadEspec
    Left = 408
    Top = 16
  end
  object QDescCBO: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM ARQ_ESPECIALIDADE')
    Params = <>
    Left = 440
    Top = 16
    object QDescCBOcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QDescCBOdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object QDescCBOcod_cbo: TWideStringField
      FieldName = 'cod_cbo'
      Size = 6
    end
    object QDescCBOcod_cbosus: TWideStringField
      FieldName = 'cod_cbosus'
      Size = 6
    end
  end
  object ImageList2: TImageList
    Left = 616
    Top = 337
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
  object QCadCredenciado: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM CAD_CRED_MED'
      'WHERE '
      'IDPRESTADOR =:CODIGO')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    DataSource = DCadPrestador
    Left = 412
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object QCadCredenciadocodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QCadCredenciadoidprestador: TIntegerField
      FieldName = 'idprestador'
    end
    object QCadCredenciadoidsetor: TIntegerField
      FieldName = 'idsetor'
    end
    object QCadCredenciadoidconvenio: TIntegerField
      FieldName = 'idconvenio'
    end
    object QCadCredenciadonum_contrato: TIntegerField
      FieldName = 'num_contrato'
    end
    object QCadCredenciadobtn_alterar: TWideStringField
      FieldName = 'btn_alterar'
      Size = 1
    end
    object QCadCredenciadobtn_excluir: TWideStringField
      FieldName = 'btn_excluir'
      Size = 1
    end
  end
  object DCadCredenciado: TDataSource
    DataSet = QCadCredenciado
    Left = 444
    Top = 56
  end
  object ImageList3: TImageList
    Left = 624
    Top = 385
    Bitmap = {
      494C010102000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FF504D
      49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093918FFF292521FF292521FF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF5E5B
      58FF949290FF949290FF949290FF949290FF949290FF949290FF949290FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292521FF93918FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292521FF93918FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292521FF93918FFFFFFFFFFFFFFF
      FFFF292521FF292521FF292521FF292521FFFFFFFFFFFFFFFFFF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292521FF93918FFFFFFFFFFFFFFF
      FFFF292521FF5D5A57FFFFFFFFFF36322EFF292521FFFFFFFFFF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292521FF93918FFFFFFFFFFFFFFF
      FFFF292521FF292521FFFFFFFFFFFFFFFFFF292521FF292521FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292521FF93918FFFFFFFFFFFFFFF
      FFFF292521FF292521FFFFFFFFFFFFFFFFFFFFFFFFFF292521FFAEADABFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292521FF93918FFFFFFFFFFFFFFF
      FFFFFFFFFFFF292521FF292521FFFFFFFFFFFFFFFFFFD6D6D5FF292521FFAEAD
      ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292521FF93918FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF292521FF35312EFFFFFFFFFFFFFFFFFF36322EFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292521FF93918FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FFD6D6D5FFFFFFFFFFFFFFFFFF3632
      2EFF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292521FF93918FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFAEADABFF292521FFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF9391
      8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292521FF5D5A57FF93918FFF9391
      8FFF93918FFF93918FFF93918FFFBBBAB9FFAEADABFF292521FF292521FF2925
      21FFFFFFFFFF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF292521FF292521FF2925
      21FF292521FF292521FF292521FF292521FFFFFFFFFF292521FF292521FFFFFF
      FFFFFFFFFFFF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF868381FF292521FFFFFFFFFFFFFFFFFFFFFFFFFF292521FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF2925
      21FF292521FF36322EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF292521FF292521FF292521FF292521FF5E5B58FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
end
