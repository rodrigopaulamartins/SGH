unit Form_InclusaoAlteracaoProcedimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFInclusaoAlteracaoProcedimento = class(TForm)
    ImageList1: TImageList;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    pnl_topo: TPanel;
    Label1: TLabel;
    btn_fechar: TSpeedButton;
    Panel4: TPanel;
    QProcedimento: TZQuery;
    DProcedimento: TDataSource;
    QProcedimentocodigo: TIntegerField;
    QProcedimentoprc_tiptab: TIntegerField;
    QProcedimentoprc_codigo: TWideStringField;
    QProcedimentoprc_datval: TDateField;
    QProcedimentoprc_datiam: TDateField;
    QProcedimentoprc_especi: TWideStringField;
    QProcedimentoprc_espsim: TWideStringField;
    QProcedimentoprc_durcir: TWideStringField;
    QProcedimentoprc_cliaih: TIntegerField;
    QProcedimentoprc_codsex: TIntegerField;
    QProcedimentoprc_idadei: TIntegerField;
    QProcedimentoprc_idadef: TIntegerField;
    QProcedimentoprc_atomed: TIntegerField;
    QProcedimentoprc_prctis: TIntegerField;
    QProcedimentoprc_prtqtd: TIntegerField;
    QProcedimentobtn_alterar: TWideStringField;
    QProcedimentobtn_excluir: TWideStringField;
    QProcedimentoinativo: TWideStringField;
    QProcedimentoprc_numreg: TWideStringField;
    DPesqTipTab: TDataSource;
    QPesqTipTab: TZQuery;
    QPesqTipTabcodigo: TIntegerField;
    QPesqTipTabdescricao: TWideStringField;
    QPesqTipTabinativo: TWideStringField;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    QPesqEspBas: TZQuery;
    DPesqEspBas: TDataSource;
    QPesqEspBascodigo: TIntegerField;
    QPesqEspBasdescricao: TWideStringField;
    QPesqEspBascod_tis: TWideStringField;
    QPesqEspBascod_sus: TWideStringField;
    QPesqSexo: TZQuery;
    DPesqSexo: TDataSource;
    QPesqSexocodigo: TIntegerField;
    QPesqSexodescricao: TWideStringField;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    QPesqAtoMedico: TZQuery;
    DPesqAtoMedico: TDataSource;
    QPesqAtoMedicocodigo: TIntegerField;
    QPesqAtoMedicodescricao: TWideStringField;
    QPesqAtoMedicoidpagto: TIntegerField;
    QPesqAtoMedicotb_percentual: TFloatField;
    QPesqAtoMedicoacres_30: TWideStringField;
    QPesqAtoMedicocod_tiss3: TWideStringField;
    QPesqAtoMedicobtn_alterar: TWideStringField;
    QPesqAtoMedicobtn_excluir: TWideStringField;
    Label13: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QTipoTabelaTISS: TZQuery;
    DTipoTabelaTISS: TDataSource;
    QTipoTabelaTISScodigo: TIntegerField;
    QTipoTabelaTISScod_tabela: TWideStringField;
    QTipoTabelaTISSdescricao: TWideStringField;
    QTipoTabelaTISScod_tis302: TWideStringField;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    Panel3: TPanel;
    Panel5: TPanel;
    procedure btn_fecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure pnl_btncancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnl_btnconfirmarClick(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
    procedure DBLookupComboBox5Enter(Sender: TObject);
    procedure DBLookupComboBox6Enter(Sender: TObject);
    procedure DBLookupComboBox6Exit(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInclusaoAlteracaoProcedimento: TFInclusaoAlteracaoProcedimento;

implementation

{$R *.dfm}

uses DataModulo, FromAvisoConfirmacao;

procedure TFInclusaoAlteracaoProcedimento.btn_fecharClick(Sender: TObject);
begin
   close;
end;

procedure TFInclusaoAlteracaoProcedimento.DBEdit2Enter(Sender: TObject);
begin
  DBEdit2.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoProcedimento.DBEdit2Exit(Sender: TObject);
begin
  DBEdit2.Color := clWindow;
end;

procedure TFInclusaoAlteracaoProcedimento.DBEdit3Enter(Sender: TObject);
begin
  DBEdit3.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoProcedimento.DBEdit3Exit(Sender: TObject);
begin
  DBEdit3.Color := clWindow;
end;

procedure TFInclusaoAlteracaoProcedimento.DBEdit4Enter(Sender: TObject);
begin
  DBEdit4.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoProcedimento.DBEdit4Exit(Sender: TObject);
begin
  DBEdit4.Color := clWindow;
end;

procedure TFInclusaoAlteracaoProcedimento.DBEdit5Enter(Sender: TObject);
begin
  DBEdit5.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoProcedimento.DBEdit5Exit(Sender: TObject);
begin
  DBEdit5.Color := clWindow;
end;

procedure TFInclusaoAlteracaoProcedimento.DBEdit6Enter(Sender: TObject);
begin
  DBEdit6.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoProcedimento.DBEdit6Exit(Sender: TObject);
begin
  DBEdit6.Color := clWindow;
end;

procedure TFInclusaoAlteracaoProcedimento.DBEdit7Enter(Sender: TObject);
begin
  DBEdit7.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoProcedimento.DBEdit7Exit(Sender: TObject);
begin
  DBEdit7.Color := clWindow;
end;

procedure TFInclusaoAlteracaoProcedimento.DBEdit8Enter(Sender: TObject);
begin
  DBEdit8.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoProcedimento.DBEdit8Exit(Sender: TObject);
begin
  DBEdit8.Color := clWindow;
end;

procedure TFInclusaoAlteracaoProcedimento.DBLookupComboBox1Enter(
  Sender: TObject);
begin
   DBLookupComboBox1.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoProcedimento.DBLookupComboBox1Exit(
  Sender: TObject);
begin
   DBLookupComboBox1.Color := clWindow;
end;

procedure TFInclusaoAlteracaoProcedimento.DBLookupComboBox2Enter(
  Sender: TObject);
begin
   DBLookupComboBox2.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoProcedimento.DBLookupComboBox2Exit(
  Sender: TObject);
begin
   DBLookupComboBox2.Color := clWindow;
end;

procedure TFInclusaoAlteracaoProcedimento.DBLookupComboBox4Enter(
  Sender: TObject);
begin
   DBLookupComboBox4.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoProcedimento.DBLookupComboBox4Exit(
  Sender: TObject);
begin
   DBLookupComboBox4.Color := clWindow;
end;

procedure TFInclusaoAlteracaoProcedimento.DBLookupComboBox5Enter(
  Sender: TObject);
begin
   DBLookupComboBox5.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoProcedimento.DBLookupComboBox5Exit(
  Sender: TObject);
begin
   DBLookupComboBox5.Color := clWindow;
end;

procedure TFInclusaoAlteracaoProcedimento.DBLookupComboBox6Enter(
  Sender: TObject);
begin
   DBLookupComboBox6.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoProcedimento.DBLookupComboBox6Exit(
  Sender: TObject);
begin
   DBLookupComboBox6.Color := clWindow;
end;

procedure TFInclusaoAlteracaoProcedimento.FormActivate(Sender: TObject);
begin
   //abre as tabela auxiliares
   QPesqTipTab.Open;
   QPesqEspBas.Open;
   QPesqSexo.Open;
   QPesqAtoMedico.Open;
   QTipoTabelaTISS.Open;
end;

procedure TFInclusaoAlteracaoProcedimento.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) then
   begin
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFInclusaoAlteracaoProcedimento.FormShow(Sender: TObject);
begin
   if Edit1.Text <> '' then
   begin
      QProcedimento.Close;
      QProcedimento.SQL.Clear;
      QProcedimento.SQL.Add('SELECT * FROM ARQ_PROCEDIMENTO');
      QProcedimento.SQL.Add('WHERE CODIGO ='+#39+Edit1.Text+#39);
      QProcedimento.Open;
      //
      QProcedimento.Edit;
   end;

   if Edit1.Text = '' then
   begin
      QProcedimento.Open;
      //
      QProcedimento.Append;
      QProcedimento.FieldByName('INATIVO').Text := 'N';
      DBLookupComboBox1.SetFocus;
   end;

end;

procedure TFInclusaoAlteracaoProcedimento.pnl_btncancelarClick(Sender: TObject);
begin
   QProcedimento.Cancel;
   close;
end;

procedure TFInclusaoAlteracaoProcedimento.pnl_btnconfirmarClick(
  Sender: TObject);
begin
   if DBLookupComboBox1.Text = '' then
   begin
      Application.MessageBox('Informe o tipo d tabela.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBLookupComboBox1.SetFocus;
      abort;
   end;

   if DBEdit4.Text = '' then
   begin
      Application.MessageBox('Informe a descri??o do procedimento.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBEdit4.SetFocus;
      abort;
   end;

   if DBEdit5.Text = '' then
   begin
      Application.MessageBox('Informe a descri??o simplificada.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBEdit5.SetFocus;
      abort;
   end;
   //
   QProcedimento.Post;
   //
   Application.CreateForm(TFAvisoConfirmacao, FAvisoConfirmacao);
   FAvisoConfirmacao.ShowModal;
   FAvisoConfirmacao.Free;
   //
   QProcedimento.Edit;

end;

end.
