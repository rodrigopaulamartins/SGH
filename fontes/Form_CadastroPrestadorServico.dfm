object FPesquisaPrestadorServico: TFPesquisaPrestadorServico
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Cadastro de Prestadores'
  ClientHeight = 507
  ClientWidth = 1137
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1137
    Height = 47
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 136
      Height = 19
      Caption = 'Prestador Servi'#231'os'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 1104
      Top = 0
      Width = 33
      Height = 47
      Align = alRight
      ImageIndex = 2
      Images = ImageList1
      Flat = True
      OnClick = SpeedButton1Click
      ExplicitLeft = 608
      ExplicitHeight = 33
    end
    object SpeedButton2: TSpeedButton
      Left = 879
      Top = 2
      Width = 30
      Height = 30
      ImageIndex = 1
      Images = ImageList1
      Flat = True
      OnClick = SpeedButton2Click
    end
    object Edit1: TEdit
      Left = 160
      Top = 3
      Width = 713
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object pnl_btnconfirmar: TPanel
      Left = 975
      Top = 0
      Width = 129
      Height = 47
      Align = alRight
      BevelInner = bvRaised
      BevelOuter = bvNone
      BevelWidth = 2
      Caption = 'Novo  +'
      Color = 16744448
      ParentBackground = False
      TabOrder = 1
      OnClick = pnl_btnconfirmarClick
      ExplicitLeft = 969
      ExplicitTop = -3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 47
    Width = 1137
    Height = 460
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 5
      Width = 1131
      Height = 452
      Margins.Top = 5
      Align = alClient
      BorderStyle = bsNone
      DataSource = DPesqPrestador
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Roboto'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'idprestador'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAO_SOCIAL'
          Title.Caption = 'Nome do prestador'
          Width = 374
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'num_conselho'
          Title.Caption = 'Conselho'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'num_cns'
          Title.Caption = 'N'#250'mero do CNS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'num_cnes'
          Title.Caption = 'N'#250'mero CNES'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'uf_conselho'
          Title.Caption = 'UF'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'btn_alterar'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'Roboto'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'btn_excluir'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'Roboto'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idtpconselho'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idtpprestador'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'codigo'
          Title.Caption = 'C'#243'digo'
          Visible = False
        end>
    end
  end
  object ImageList1: TImageList
    BlendColor = clHighlightText
    BkColor = clWhite
    Left = 329
    Top = 240
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
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2D2925FF292521FF878482FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E3E3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF292521FF292521FF292521FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFD6D6
      D5FF292521FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF908E8CFF292521FF484441FFB5B3B2FFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C8
      C7FF292521FF292521FF292521FFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
      21FF292521FFC1C0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFAEADABFF292521FF292521FF292521FF292521FF292521FF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFF1F1F1FFFFFFFFFF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
      21FF292521FFFFFFFFFFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFF292521FF2925
      21FF292521FFC7C6C5FFFFFFFFFFFFFFFFFF706D6BFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF292521FF292521FF292521FF292521FF292521FFAEADABFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF292521FF292521FFFFFF
      FFFF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
      21FFFFFFFFFF292521FF292521FFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF2925
      21FF706D6BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF292521FF292521FF292521FF292521FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF36322EFF292521FF3531
      2EFFFFFFFFFF292521FF292521FF292521FF292521FF292521FF292521FFFFFF
      FFFF35312EFF292521FF36322EFFFFFFFFFFFFFFFFFF292521FF292521FFD6D6
      D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0CFCEFF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAEADABFF292521FF292521FF292521FF292521FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF292521FF2925
      21FF292521FFFFFFFFFF292521FF292521FF292521FF292521FFFFFFFFFF2925
      21FF292521FF292521FFFFFFFFFFFFFFFFFFFFFFFFFF292521FF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF292521FF292521FF292521FF292521FF292521FF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FFFFFFFFFF292521FF292521FFFFFFFFFF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF292521FFDBDB
      DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C4C3FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF292521FF292521FF292521FFFFFFFFFFAEADABFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF292521FF292521FF35312EFFFFFFFFFFFFFFFFFF35312EFF292521FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF2925
      21FFE3E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FFAEADABFFFFFFFFFFFFFFFFFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF949290FF292521FF292521FF292521FF292521FF949290FF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF292521FF2925
      21FF292521FFC4C3C2FFFFFFFFFFFFFFFFFF716E6BFF292521FF292521FF2925
      21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF36322EFFAEADABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF36322EFFD6D6
      D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF514E4AFF292521FF292521FF514E4AFFFFFFFFFF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2925
      21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6966FF6C6966FFFFFFFFFFFFFFFFFF2925
      21FF292521FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF989694FF292521FF292521FFD1D0D0FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
    Left = 360
    Top = 241
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
  object DPesqPrestador: TDataSource
    DataSet = QPesqPrestador
    Left = 256
    Top = 239
  end
  object QPesqPrestador: TZQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT A.*,  B.RAZAO_SOCIAL'
      'FROM CAD_PRESTADORSERVICO A'
      'INNER JOIN CAD_CLIENTES B ON (A.IDPRESTADOR = B.CODIGO)')
    Params = <>
    Left = 224
    Top = 239
    object QPesqPrestadorcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object QPesqPrestadoridprestador: TIntegerField
      FieldName = 'idprestador'
    end
    object QPesqPrestadoridtpprestador: TIntegerField
      FieldName = 'idtpprestador'
    end
    object QPesqPrestadornum_cns: TWideStringField
      FieldName = 'num_cns'
    end
    object QPesqPrestadornum_cnes: TWideStringField
      FieldName = 'num_cnes'
      Size = 10
    end
    object QPesqPrestadoridtpconselho: TIntegerField
      FieldName = 'idtpconselho'
    end
    object QPesqPrestadoruf_conselho: TWideStringField
      FieldName = 'uf_conselho'
      Size = 2
    end
    object QPesqPrestadornum_conselho: TWideStringField
      FieldName = 'num_conselho'
      Size = 10
    end
    object QPesqPrestadorRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object QPesqPrestadorbtn_alterar: TWideStringField
      FieldName = 'btn_alterar'
      Size = 1
    end
    object QPesqPrestadorbtn_excluir: TWideStringField
      FieldName = 'btn_excluir'
      Size = 1
    end
  end
end