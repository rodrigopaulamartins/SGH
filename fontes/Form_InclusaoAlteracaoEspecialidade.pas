unit Form_InclusaoAlteracaoEspecialidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Mask, Vcl.DBCtrls;

type
  TFInclusaoAlteracaoEspecialidade = class(TForm)
    ImageList1: TImageList;
    Panel1: TPanel;
    Edit1: TEdit;
    Panel2: TPanel;
    pnl_btnconfirmar: TPanel;
    pnl_btncancelar: TPanel;
    pnl_topo: TPanel;
    Label1: TLabel;
    btn_fechar: TSpeedButton;
    Panel4: TPanel;
    QCadEspecialidade: TZQuery;
    DCadEspecialidade: TDataSource;
    DPesqCBOSUS: TDataSource;
    DPesqCBOTIS: TDataSource;
    QPesqCBOSUS: TZQuery;
    QPesqCBOTIS: TZQuery;
    QPesqCBOSUScodigo: TIntegerField;
    QPesqCBOSUScbo_sus: TWideStringField;
    QPesqCBOSUSdescricao: TWideStringField;
    QPesqCBOTIScodigo: TIntegerField;
    QPesqCBOTISdescricao: TWideStringField;
    QPesqCBOTIStab_tis303: TWideStringField;
    QCadEspecialidadecodigo: TIntegerField;
    QCadEspecialidadedescricao: TWideStringField;
    QCadEspecialidadecod_cbo: TWideStringField;
    QCadEspecialidadecod_cbosus: TWideStringField;
    QCadEspecialidadebtn_alterar: TWideStringField;
    QCadEspecialidadebtn_excluir: TWideStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure pnl_btncancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure pnl_btnconfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInclusaoAlteracaoEspecialidade: TFInclusaoAlteracaoEspecialidade;

implementation

{$R *.dfm}

uses DataModulo, Form_PesquisaEspecialidade, FromAvisoConfirmacao;

procedure TFInclusaoAlteracaoEspecialidade.btn_fecharClick(Sender: TObject);
begin
  close;
end;

procedure TFInclusaoAlteracaoEspecialidade.DBEdit2Enter(Sender: TObject);
begin
   DBEdit2.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoEspecialidade.DBEdit2Exit(Sender: TObject);
begin
   DBEdit2.Color := clWindow;
end;

procedure TFInclusaoAlteracaoEspecialidade.DBLookupComboBox1Enter(
  Sender: TObject);
begin
   DBLookupComboBox1.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoEspecialidade.DBLookupComboBox1Exit(
  Sender: TObject);
begin
   DBLookupComboBox1.Color := clWindow;
end;

procedure TFInclusaoAlteracaoEspecialidade.DBLookupComboBox2Enter(
  Sender: TObject);
begin
   DBLookupComboBox1.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoEspecialidade.DBLookupComboBox2Exit(
  Sender: TObject);
begin
   DBLookupComboBox2.Color := clWindow;
end;

procedure TFInclusaoAlteracaoEspecialidade.FormActivate(Sender: TObject);
begin
   QPesqCBOSUS.Open;
   QPesqCBOTIS.Open;
end;

procedure TFInclusaoAlteracaoEspecialidade.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) then
   begin
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFInclusaoAlteracaoEspecialidade.FormShow(Sender: TObject);
begin
   if Edit1.Text <> '' then
   begin
      QCadEspecialidade.Close;
      QCadEspecialidade.SQL.Clear;
      QCadEspecialidade.SQL.Add('SELECT * FROM ARQ_ESPECIALIDADE');
      QCadEspecialidade.SQL.Add('WHERE CODIGO ='+#39+Edit1.Text+#39);
      QCadEspecialidade.Open;
      //
      QCadEspecialidade.Edit;
   end;

   if Edit1.Text = '' then
   begin
      QCadEspecialidade.Open;
      QCadEspecialidade.Append;
      DBEdit2.SetFocus;
   end;

end;

procedure TFInclusaoAlteracaoEspecialidade.pnl_btncancelarClick(
  Sender: TObject);
begin
   QCadEspecialidade.Cancel;
   close;
end;

procedure TFInclusaoAlteracaoEspecialidade.pnl_btnconfirmarClick(
  Sender: TObject);
begin
   if DBEdit2.Text = '' then
   begin
      Application.MessageBox('Informe a descri??o da especialidade.','Campo Obrigat?rio', MB_ICONWARNING+MB_OK);
      DBEdit2.SetFocus;
      abort;
   end;
   if DBLookupComboBox1.Text = '' then
   begin
      Application.MessageBox('Selecione o CBO - SUS.','Campo Obrigat?rio', MB_ICONWARNING+MB_OK);
      DBLookupComboBox1.SetFocus;
      abort;
   end;
   if DBLookupComboBox2.Text = '' then
   begin
      Application.MessageBox('Selecione o CBO - TISS.','Campo Obrigat?rio', MB_ICONWARNING+MB_OK);
      DBLookupComboBox2.SetFocus;
      abort;
   end;
   QCadEspecialidade.Post;

   Application.CreateForm(TFAvisoConfirmacao, FAvisoConfirmacao);
   FAvisoConfirmacao.ShowModal;
   FAvisoConfirmacao.Free;

   QCadEspecialidade.Edit;


end;

end.
