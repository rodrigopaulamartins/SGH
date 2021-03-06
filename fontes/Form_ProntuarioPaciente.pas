unit Form_ProntuarioPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, Data.DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Vcl.Mask, Vcl.DBCtrls;

type
  TFProntuario_Paciente = class(TForm)
    ImageList1: TImageList;
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    PageControl1: TPageControl;
    QCadProntuario: TZQuery;
    DCadProntuario: TDataSource;
    QCadProntuariocodigo: TIntegerField;
    QCadProntuarionome_social: TWideStringField;
    QCadProntuarionome_completo: TWideStringField;
    QCadProntuariotp_sanguineo: TWideStringField;
    QCadProntuarionum_rg: TWideStringField;
    QCadProntuariouf_rg: TWideStringField;
    QCadProntuarionum_cns: TWideStringField;
    QCadProntuarioidnacionalidade: TIntegerField;
    QCadProntuarionaturalidade: TWideStringField;
    QCadProntuarioidsexo: TIntegerField;
    QCadProntuariodt_nascimento: TDateField;
    QCadProntuarioidestcivil: TIntegerField;
    QCadProntuarioidraca: TIntegerField;
    QCadProntuarioidetnia: TIntegerField;
    QCadProntuarioidgrauins: TIntegerField;
    QCadProntuarioidreligiao: TIntegerField;
    QCadProntuarioidtpdoc: TIntegerField;
    QCadProntuarionum_documentos: TWideStringField;
    QCadProntuariomat_cert_nascimento: TWideStringField;
    QCadProntuarionome_pai: TWideStringField;
    QCadProntuarionome_mae: TWideStringField;
    QCadProntuarion_pasta: TWideStringField;
    QCadProntuarioloc_prontuario: TWideStringField;
    QCadProntuariocep: TWideStringField;
    QCadProntuarioidcidade: TIntegerField;
    QCadProntuarioidtplogradouro: TIntegerField;
    QCadProntuarioendereco: TWideStringField;
    QCadProntuarionumero: TWideStringField;
    QCadProntuariocomplemento: TWideStringField;
    QCadProntuariobairro: TWideStringField;
    QCadProntuarioreferencia: TWideStringField;
    QCadProntuarioprofisscao: TWideStringField;
    QCadProntuariolocal_trabalho: TWideStringField;
    QCadProntuarioddd1: TWideStringField;
    QCadProntuarioddd2: TWideStringField;
    QCadProntuariotelefone1: TWideStringField;
    QCadProntuariotelefone2: TWideStringField;
    QCadProntuarioidformcont: TIntegerField;
    QCadProntuarioemail: TWideStringField;
    QCadProntuarionome_contato: TWideStringField;
    QCadProntuarioddd_contato: TWideStringField;
    QCadProntuariotelefone_contato: TWideStringField;
    QCadProntuarioidconvenio: TIntegerField;
    QCadProntuariocod_carterinha: TWideStringField;
    QCadProntuarioconjuge: TWideStringField;
    QCadProntuarioresponsavel_paciente: TWideStringField;
    QCadProntuariodt_cadastro: TDateField;
    QCadProntuariobtn_editar: TWideStringField;
    QCadProntuariobtn_excluir: TWideStringField;
    Panel4: TPanel;
    pnl_btncancelar: TPanel;
    pnl_btnconfirmar: TPanel;
    Bevel1: TBevel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    QPesqNacio: TZQuery;
    DPesqNacio: TDataSource;
    QPesqNaciocodigo: TIntegerField;
    QPesqNaciodescricao: TWideStringField;
    QPesqNaciocod_nacion: TWideStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label12: TLabel;
    QPesqSexo: TZQuery;
    DPesqSexo: TDataSource;
    QPesqSexocodigo: TIntegerField;
    QPesqSexodescricao: TWideStringField;
    QPesqEstCivil: TZQuery;
    DPesqEstCivil: TDataSource;
    QPesqEstCivilcodigo: TIntegerField;
    QPesqEstCivildescricao: TWideStringField;
    QPesqEstCivilcod_estciv: TWideStringField;
    QPesqEstCivilcod_tabcros: TWideStringField;
    Label13: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label14: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    QPesqGrauInst: TZQuery;
    DPesqGrauInst: TDataSource;
    QPesqGrauInstcodigo: TIntegerField;
    QPesqGrauInstdescricao: TWideStringField;
    Label15: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    QPesqRacCor: TZQuery;
    DPesqRacCor: TDataSource;
    QPesqRacCorcodigo: TIntegerField;
    QPesqRacCordescricao: TWideStringField;
    QPesqRacCorcod_cross: TWideStringField;
    Label16: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    QPesqEtinia: TZQuery;
    DPesqEtinia: TDataSource;
    QPesqEtiniacodigo: TIntegerField;
    QPesqEtiniadescricao: TWideStringField;
    QPesqEtiniacod_etnia: TWideStringField;
    Label17: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    QPesqReligiao: TZQuery;
    DPesqReligiao: TDataSource;
    QPesqReligiaocodigo: TIntegerField;
    QPesqReligiaodescricao: TWideStringField;
    QPesqTpDoc: TZQuery;
    DPesqTpDoc: TDataSource;
    QPesqTpDoccodigo: TIntegerField;
    QPesqTpDocdescricao: TWideStringField;
    QPesqTpDoccod_tpdoc: TWideStringField;
    QPesqTpDoccod_cros: TWideStringField;
    Label18: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    Label21: TLabel;
    DBEdit12: TDBEdit;
    Label22: TLabel;
    DBEdit13: TDBEdit;
    Label23: TLabel;
    DBEdit14: TDBEdit;
    Label24: TLabel;
    DBEdit15: TDBEdit;
    Label25: TLabel;
    DBEdit16: TDBEdit;
    Label26: TLabel;
    DBLookupComboBox9: TDBLookupComboBox;
    QPesqCidade: TZQuery;
    DPesqCidade: TDataSource;
    QPesqCidadecodigo: TIntegerField;
    QPesqCidadedescricao: TWideStringField;
    QPesqCidadecod_ibge: TWideStringField;
    QPesqCidadeestado: TWideStringField;
    Label27: TLabel;
    DBLookupComboBox10: TDBLookupComboBox;
    QPesqTpLogradouro: TZQuery;
    DPesqTpLogradouro: TDataSource;
    QPesqTpLogradourocodigo: TIntegerField;
    QPesqTpLogradourodescricao: TWideStringField;
    Label28: TLabel;
    DBEdit17: TDBEdit;
    Label29: TLabel;
    DBEdit18: TDBEdit;
    Label30: TLabel;
    DBEdit19: TDBEdit;
    Label31: TLabel;
    DBEdit20: TDBEdit;
    Label32: TLabel;
    DBEdit21: TDBEdit;
    Label33: TLabel;
    DBEdit22: TDBEdit;
    Label34: TLabel;
    DBEdit23: TDBEdit;
    Label35: TLabel;
    DBEdit24: TDBEdit;
    Label36: TLabel;
    DBEdit25: TDBEdit;
    Label37: TLabel;
    DBEdit26: TDBEdit;
    Label38: TLabel;
    DBEdit27: TDBEdit;
    Label39: TLabel;
    DBEdit28: TDBEdit;
    Label40: TLabel;
    DBEdit29: TDBEdit;
    Label41: TLabel;
    DBEdit30: TDBEdit;
    DBLookupComboBox11: TDBLookupComboBox;
    Label42: TLabel;
    Label43: TLabel;
    DBEdit31: TDBEdit;
    Label44: TLabel;
    DBEdit32: TDBEdit;
    QCadProntuarionome_responsavel: TWideStringField;
    QCadProntuariocpf_cnpj: TWideStringField;
    QCadProntuariorg_responsavel: TWideStringField;
    QCadProntuarioddd_responsavel: TWideStringField;
    QCadProntuariotelefone_responsavel: TWideStringField;
    QCadProntuariocep_responsavel: TWideStringField;
    QCadProntuarioendereco_responsavel: TWideStringField;
    QCadProntuarionumero_responsavel: TWideStringField;
    QCadProntuariocidade_responsavel: TWideStringField;
    QCadProntuarioestado_responsavel: TWideStringField;
    QCadProntuariobairro_responsavel: TWideStringField;
    QCadProntuarioemail_responsavel: TWideStringField;
    Label45: TLabel;
    DBEdit33: TDBEdit;
    Label46: TLabel;
    DBEdit34: TDBEdit;
    Label47: TLabel;
    DBEdit35: TDBEdit;
    Label48: TLabel;
    DBEdit36: TDBEdit;
    Label49: TLabel;
    DBEdit37: TDBEdit;
    Label50: TLabel;
    DBEdit38: TDBEdit;
    Label51: TLabel;
    DBEdit39: TDBEdit;
    Label52: TLabel;
    DBEdit40: TDBEdit;
    Label53: TLabel;
    DBEdit41: TDBEdit;
    Label54: TLabel;
    DBEdit42: TDBEdit;
    Label55: TLabel;
    DBEdit43: TDBEdit;
    Label56: TLabel;
    DBEdit44: TDBEdit;
    Hist?ricos: TTabSheet;
    Edit1: TEdit;
    QCadProntuarioinativo: TWideStringField;
    QPesqConvenio: TZQuery;
    DPesqConvenio: TDataSource;
    QPesqConveniocodigo: TIntegerField;
    QPesqConvenioidprestador: TIntegerField;
    QPesqConvenionum_cns: TWideStringField;
    QPesqConvenionum_cnes_sih_sus: TWideStringField;
    QPesqConvenionum_susep: TWideStringField;
    QPesqConvenionum_reg_ans: TWideStringField;
    QPesqConveniocod_sus_regional: TWideStringField;
    QPesqConveniovlr_autorizacao_matmed: TFloatField;
    QPesqConvenioidentfica_prest_proprio: TWideStringField;
    QPesqConvenioprof_autonomo_cessao_uso: TWideStringField;
    QPesqConvenioconvenio_contratualizado: TWideStringField;
    QPesqConveniocod_contrato: TWideStringField;
    QPesqConvenionum_caracter_cart: TWideStringField;
    QPesqConvenioobrigatorio_carterinha: TWideStringField;
    QPesqConveniosenha_autorizacao_obrigatorio: TWideStringField;
    QPesqConvenioobrigatorio_med_solicitante: TWideStringField;
    QPesqConveniotiss_idutilizaguiAOperadora: TIntegerField;
    QPesqConveniotiis_disc_matmed: TIntegerField;
    QPesqConveniotiss_versaoimp: TWideStringField;
    QPesqConveniotiss_tabelamed: TIntegerField;
    QPesqConveniotiss_tabelamat: TIntegerField;
    QPesqConveniotiss_resumo_mat: TWideStringField;
    QPesqConveniotiss_resumo_med: TWideStringField;
    QPesqConveniotiss_sentis: TIntegerField;
    QPesqConveniotiss_procedimento_data: TIntegerField;
    QPesqConveniotiss_versao: TWideStringField;
    QPesqConveniotiss_maxguia: TWideStringField;
    QPesqConveniotiss_pastagravacao: TWideStringField;
    QPesqConveniotiss_margem_comer: TFloatField;
    QPesqConveniotiss_hospprofexec: TWideStringField;
    QPesqConveniotiss_filmematmed: TWideStringField;
    QPesqConveniotiss_mesmotpatendimento: TWideStringField;
    QPesqConveniotiss_geraguiaprincipal: TWideStringField;
    QPesqConveniotiss_hashnomearquivo: TWideStringField;
    QPesqConveniodsc_emitesomentespdireto: TWideStringField;
    QPesqConveniodsc_imprimivalorchcolvlruni: TWideStringField;
    QPesqConveniodsc_spseparado: TWideStringField;
    QPesqConveniodsc_imprimiservcredenciado: TWideStringField;
    QPesqConvenioinativo: TWideStringField;
    QPesqConvenioRAZAO_SOCIAL: TWideStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure DBLookupComboBox5Enter(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
    procedure DBLookupComboBox6Enter(Sender: TObject);
    procedure DBLookupComboBox6Exit(Sender: TObject);
    procedure DBLookupComboBox7Enter(Sender: TObject);
    procedure DBLookupComboBox7Exit(Sender: TObject);
    procedure DBLookupComboBox8Enter(Sender: TObject);
    procedure DBLookupComboBox8Exit(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBLookupComboBox9Enter(Sender: TObject);
    procedure DBLookupComboBox9Exit(Sender: TObject);
    procedure DBLookupComboBox10Enter(Sender: TObject);
    procedure DBLookupComboBox10Exit(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit18Enter(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit19Enter(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit20Enter(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBEdit21Enter(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit22Enter(Sender: TObject);
    procedure DBEdit23Enter(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure DBEdit24Enter(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBEdit25Enter(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit26Enter(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBEdit29Enter(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit30Enter(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit31Enter(Sender: TObject);
    procedure DBEdit27Enter(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure DBEdit28Enter(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure DBEdit32Exit(Sender: TObject);
    procedure DBEdit32Enter(Sender: TObject);
    procedure DBEdit33Enter(Sender: TObject);
    procedure DBEdit33Exit(Sender: TObject);
    procedure DBEdit34Exit(Sender: TObject);
    procedure DBEdit34Enter(Sender: TObject);
    procedure DBEdit35Enter(Sender: TObject);
    procedure DBEdit35Exit(Sender: TObject);
    procedure DBEdit36Exit(Sender: TObject);
    procedure DBEdit36Enter(Sender: TObject);
    procedure DBEdit37Enter(Sender: TObject);
    procedure DBEdit37Exit(Sender: TObject);
    procedure DBEdit38Exit(Sender: TObject);
    procedure DBEdit38Enter(Sender: TObject);
    procedure DBEdit39Enter(Sender: TObject);
    procedure DBEdit39Exit(Sender: TObject);
    procedure DBEdit40Exit(Sender: TObject);
    procedure DBEdit40Enter(Sender: TObject);
    procedure DBEdit41Enter(Sender: TObject);
    procedure DBEdit41Exit(Sender: TObject);
    procedure DBEdit42Exit(Sender: TObject);
    procedure DBEdit42Enter(Sender: TObject);
    procedure DBEdit43Enter(Sender: TObject);
    procedure DBEdit43Exit(Sender: TObject);
    procedure DBEdit44Exit(Sender: TObject);
    procedure DBEdit44Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure pnl_btncancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnl_btnconfirmarClick(Sender: TObject);
    procedure pnl_btnconfirmarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PageControl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProntuario_Paciente: TFProntuario_Paciente;

implementation

{$R *.dfm}

uses Form_Principal, DataModulo, FromAvisoConfirmacao;

procedure TFProntuario_Paciente.DBEdit10Enter(Sender: TObject);
begin
   DBEdit10.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit10Exit(Sender: TObject);
begin
   DBEdit10.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit11Enter(Sender: TObject);
begin
   DBEdit11.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit11Exit(Sender: TObject);
begin
   DBEdit11.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit12Enter(Sender: TObject);
begin
   DBEdit12.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit12Exit(Sender: TObject);
begin
   DBEdit12.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit13Enter(Sender: TObject);
begin
   DBEdit13.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit13Exit(Sender: TObject);
begin
   DBEdit13.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit14Enter(Sender: TObject);
begin
   DBEdit14.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit14Exit(Sender: TObject);
begin
   DBEdit14.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit15Enter(Sender: TObject);
begin
   DBEdit15.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit15Exit(Sender: TObject);
begin
   DBEdit15.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit16Enter(Sender: TObject);
begin
   DBEdit16.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit16Exit(Sender: TObject);
begin
   DBEdit16.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit17Enter(Sender: TObject);
begin
   DBEdit17.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit17Exit(Sender: TObject);
begin
   DBEdit17.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit18Enter(Sender: TObject);
begin
   DBEdit18.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit18Exit(Sender: TObject);
begin
   DBEdit18.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit19Enter(Sender: TObject);
begin
   DBEdit19.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit19Exit(Sender: TObject);
begin
   DBEdit19.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit20Enter(Sender: TObject);
begin
   DBEdit20.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit20Exit(Sender: TObject);
begin
   DBEdit20.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit21Enter(Sender: TObject);
begin
   DBEdit21.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit21Exit(Sender: TObject);
begin
   DBEdit21.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit22Enter(Sender: TObject);
begin
   DBEdit22.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit22Exit(Sender: TObject);
begin
   DBEdit22.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit23Enter(Sender: TObject);
begin
   DBEdit23.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit23Exit(Sender: TObject);
begin
   DBEdit23.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit24Enter(Sender: TObject);
begin
   DBEdit24.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit24Exit(Sender: TObject);
begin
   DBEdit24.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit25Enter(Sender: TObject);
begin
   DBEdit25.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit25Exit(Sender: TObject);
begin
   DBEdit25.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit26Enter(Sender: TObject);
begin
   DBEdit26.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit26Exit(Sender: TObject);
begin
   DBEdit26.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit27Enter(Sender: TObject);
begin
   DBEdit27.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit27Exit(Sender: TObject);
begin
   DBEdit27.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit28Enter(Sender: TObject);
begin
   DBEdit28.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit28Exit(Sender: TObject);
begin
   DBEdit28.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit29Enter(Sender: TObject);
begin
   DBEdit29.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit29Exit(Sender: TObject);
begin
   DBEdit29.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit2Enter(Sender: TObject);
begin
   DBEdit2.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit2Exit(Sender: TObject);
begin
   DBEdit2.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit30Enter(Sender: TObject);
begin
   DBEdit30.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit30Exit(Sender: TObject);
begin
   DBEdit30.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit31Enter(Sender: TObject);
begin
   DBEdit31.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit31Exit(Sender: TObject);
begin
   DBEdit31.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit32Enter(Sender: TObject);
begin
   DBEdit32.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit32Exit(Sender: TObject);
begin
   DBEdit32.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit33Enter(Sender: TObject);
begin
   DBEdit33.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit33Exit(Sender: TObject);
begin
   DBEdit33.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit34Enter(Sender: TObject);
begin
   DBEdit34.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit34Exit(Sender: TObject);
begin
   DBEdit34.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit35Enter(Sender: TObject);
begin
   DBEdit35.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit35Exit(Sender: TObject);
begin
   DBEdit35.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit36Enter(Sender: TObject);
begin
   DBEdit36.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit36Exit(Sender: TObject);
begin
   DBEdit36.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit37Enter(Sender: TObject);
begin
   DBEdit37.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit37Exit(Sender: TObject);
begin
   DBEdit37.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit38Enter(Sender: TObject);
begin
   DBEdit38.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit38Exit(Sender: TObject);
begin
   DBEdit38.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit39Enter(Sender: TObject);
begin
   DBEdit39.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit39Exit(Sender: TObject);
begin
   DBEdit39.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit3Enter(Sender: TObject);
begin
   DBEdit3.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit3Exit(Sender: TObject);
begin
    DBEdit3.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit40Enter(Sender: TObject);
begin
   DBEdit40.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit40Exit(Sender: TObject);
begin
   DBEdit40.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit41Enter(Sender: TObject);
begin
   DBEdit41.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit41Exit(Sender: TObject);
begin
   DBEdit41.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit42Enter(Sender: TObject);
begin
   DBEdit42.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit42Exit(Sender: TObject);
begin
   DBEdit42.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit43Enter(Sender: TObject);
begin
   DBEdit43.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit43Exit(Sender: TObject);
begin
   DBEdit43.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit44Enter(Sender: TObject);
begin
   DBEdit44.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit44Exit(Sender: TObject);
begin
   DBEdit44.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit4Enter(Sender: TObject);
begin
   DBEdit4.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit4Exit(Sender: TObject);
begin
   DBEdit4.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit5Enter(Sender: TObject);
begin
   DBEdit5.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit5Exit(Sender: TObject);
begin
   DBEdit5.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit6Enter(Sender: TObject);
begin
   DBEdit6.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit6Exit(Sender: TObject);
begin
   DBEdit6.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit7Enter(Sender: TObject);
begin
   DBEdit7.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit7Exit(Sender: TObject);
begin
   DBEdit7.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit8Enter(Sender: TObject);
begin
   DBEdit8.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit8Exit(Sender: TObject);
begin
   DBEdit8.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBEdit9Enter(Sender: TObject);
begin
   DBEdit9.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBEdit9Exit(Sender: TObject);
begin
   DBEdit9.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBLookupComboBox10Enter(Sender: TObject);
begin
   DBLookupComboBox10.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBLookupComboBox10Exit(Sender: TObject);
begin
   DBLookupComboBox10.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBLookupComboBox1Enter(Sender: TObject);
begin
   DBLookupComboBox1.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBLookupComboBox1Exit(Sender: TObject);
begin
   DBLookupComboBox1.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBLookupComboBox2Enter(Sender: TObject);
begin
   DBLookupComboBox2.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBLookupComboBox2Exit(Sender: TObject);
begin
   DBLookupComboBox2.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBLookupComboBox3Enter(Sender: TObject);
begin
   DBLookupComboBox3.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBLookupComboBox3Exit(Sender: TObject);
begin
   DBLookupComboBox3.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBLookupComboBox4Enter(Sender: TObject);
begin
   DBLookupComboBox4.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBLookupComboBox4Exit(Sender: TObject);
begin
   DBLookupComboBox4.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBLookupComboBox5Enter(Sender: TObject);
begin
   DBLookupComboBox5.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBLookupComboBox5Exit(Sender: TObject);
begin
   DBLookupComboBox5.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBLookupComboBox6Enter(Sender: TObject);
begin
   DBLookupComboBox6.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBLookupComboBox6Exit(Sender: TObject);
begin
   DBLookupComboBox5.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBLookupComboBox7Enter(Sender: TObject);
begin
   DBLookupComboBox7.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBLookupComboBox7Exit(Sender: TObject);
begin
   DBLookupComboBox7.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBLookupComboBox8Enter(Sender: TObject);
begin
   DBLookupComboBox8.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBLookupComboBox8Exit(Sender: TObject);
begin
   DBLookupComboBox8.Color := clWindow;
end;

procedure TFProntuario_Paciente.DBLookupComboBox9Enter(Sender: TObject);
begin
   DBLookupComboBox9.Color := clInfoBk;
end;

procedure TFProntuario_Paciente.DBLookupComboBox9Exit(Sender: TObject);
begin
   DBLookupComboBox9.Color := clWindow;
end;

procedure TFProntuario_Paciente.FormActivate(Sender: TObject);
begin
   //abre as tabelas
   QPesqNacio.Open;
   QPesqSexo.Open;
   QPesqGrauInst.Open;
   QPesqEstCivil.Open;
   QPesqRacCor.Open;
   QPesqEtinia.Open;
   QPesqReligiao.Open;
   QPesqTpDoc.Open;
   QPesqCidade.Open;
   QPesqTpLogradouro.Open;
   QPesqConvenio.Open;
end;

procedure TFProntuario_Paciente.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) then
   begin
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFProntuario_Paciente.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := $00FFBE7D;
end;

procedure TFProntuario_Paciente.FormShow(Sender: TObject);
begin
   if Edit1.Text <> '' then
   begin
      QCadProntuario.Close;
      QCadProntuario.SQL.Clear;
      QCadProntuario.SQL.Add('SELECT * FROM CAD_PRONTUARIO');
      QCadProntuario.SQL.Add('WHERE CODIGO ='+#39+Edit1.Text+#39);
      QCadProntuario.Open;
      //
      QCadProntuario.Edit;
   end;

   if Edit1.Text = '' then
   begin
      QCadProntuario.Open;
      //
      QCadProntuario.Append;
      QCadProntuario.FieldByName('DT_CADASTRO').AsDateTime := Date;
      QCadProntuario.FieldByName('INATIVO'    ).AsString   := 'N';
      DBEdit2.SetFocus;
   end;
end;

procedure TFProntuario_Paciente.PageControl1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := $00FFBE7D;
end;

procedure TFProntuario_Paciente.Panel1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := $00FFBE7D;
end;

procedure TFProntuario_Paciente.pnl_btncancelarClick(Sender: TObject);
begin
   //
   QCadProntuario.Cancel;
   close;
end;

procedure TFProntuario_Paciente.pnl_btnconfirmarClick(Sender: TObject);
var
   anoN, mes, dia: word;
   anoA, mesA, diaA: word;
   achaanoatual: Integer;
begin
   //faz as valida??es se o campo esta preenchido
   if DBEdit2.Text = '' then
   begin
      Application.MessageBox('Informe o nome do paciente.','Campo obrigat?rio', MB_ICONWARNING+MB_OK);
      DBEdit2.SetFocus;
      abort;
   end;
   //
   if Length(DBEdit2.Text) <= 3 then
   begin
      Application.MessageBox('N?mero de caracteres informado n?o atende ao nome.','Campo obrigat?rio', MB_ICONWARNING+MB_OK);
      DBEdit2.SetFocus;
      abort;
   end;
   //
   if DBEdit7.Text = '  /  /    ' then
   begin
      Application.MessageBox('Informe a data de nascimento.','Campo obrigat?rio', MB_ICONWARNING+MB_OK);
      DBEdit7.SetFocus;
      abort;
   end;
   //
   if DBLookupComboBox1.Text = '' then
   begin
      Application.MessageBox('Informe a nacionalidade do paciente.','Campo obrigat?rio', MB_ICONWARNING+MB_OK);
      DBLookupComboBox1.SetFocus;
      abort;
   end;
   //
   if DBLookupComboBox2.Text = '' then
   begin
      Application.MessageBox('Informe o sexo do paciente.','Campo obrigat?rio', MB_ICONWARNING+MB_OK);
      DBLookupComboBox2.SetFocus;
      abort;
   end;
   //
   if DBLookupComboBox3.Text = '' then
   begin
      Application.MessageBox('Informe estado civil do paciente.','Campo obrigat?rio', MB_ICONWARNING+MB_OK);
      DBLookupComboBox3.SetFocus;
      abort;
   end;
   //
   if DBLookupComboBox5.Text = '' then
   begin
      Application.MessageBox('Informe a ra?a/cor do paciente.','Campo obrigat?rio', MB_ICONWARNING+MB_OK);
      DBLookupComboBox5.SetFocus;
      abort;
   end;

   //
   if DBEdit14.Text = '' then
   begin
      Application.MessageBox('Informe o nome da m?e do paciente.','Campo obrigat?rio', MB_ICONWARNING+MB_OK);
      DBEdit14.SetFocus;
      abort;
   end;
   //
   decodedate(StrToDate(DBEdit7.Text),anoN, mes, dia);
   DecodeDate(date, anoA, mesA, diaA);
   achaanoatual := (anoA - anoN);
   //
   if (achaanoatual < 18) or (achaanoatual >= 60) then
   begin
      if DBEDIT33.Text = '' then
      begin
         Application.MessageBox('Paciente maior que 60 anos ou menor de 18 anos ? obrigat?rio um respons?vel.','Campo obrigat?rio', MB_ICONWARNING+MB_OK);
         DBEdit33.SetFocus;
         PageControl1.ActivePage:= TabSheet2;
         abort;
      end;
   end;
   QCadProntuario.Post;
   Application.CreateForm(TFAvisoConfirmacao, FAvisoConfirmacao);
   FAvisoConfirmacao.ShowModal;
   FAvisoConfirmacao.Free;
   //
   QCadProntuario.Edit;



end;

procedure TFProntuario_Paciente.pnl_btnconfirmarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pnl_btnconfirmar.Color := clMenuHighlight;
end;

procedure TFProntuario_Paciente.SpeedButton1Click(Sender: TObject);
begin
   close;
end;

end.
