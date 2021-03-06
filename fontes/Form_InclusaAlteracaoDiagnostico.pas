unit Form_InclusaAlteracaoDiagnostico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFInclusaoAlteracaoDiagnostico = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    Panel1: TPanel;
    Edit1: TEdit;
    Panel2: TPanel;
    pnl_topo: TPanel;
    Label1: TLabel;
    btn_fechar: TSpeedButton;
    Panel4: TPanel;
    DCadDiagnostico: TDataSource;
    QCadDiagnostico: TZQuery;
    QCadDiagnosticocodigo: TIntegerField;
    QCadDiagnosticocod_cid: TWideStringField;
    QCadDiagnosticodoenca_controlada: TWideStringField;
    QCadDiagnosticogrupo_cid: TWideStringField;
    QCadDiagnosticoinativo: TWideStringField;
    QCadDiagnosticocid_sexo: TIntegerField;
    QCadDiagnosticocid_subcat: TWideStringField;
    QCadDiagnosticodescricao: TWideStringField;
    QCadDiagnosticobtn_alterar: TWideStringField;
    QCadDiagnosticobtn_excluir: TWideStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    QPesqSexo: TZQuery;
    DPesqSexo: TDataSource;
    QPesqSexocodigo: TIntegerField;
    QPesqSexodescricao: TWideStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    Panel3: TPanel;
    Panel5: TPanel;
    procedure pnl_btncancelarClick(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInclusaoAlteracaoDiagnostico: TFInclusaoAlteracaoDiagnostico;

implementation

{$R *.dfm}

uses DataModulo, Form_PequisaDiagnosticoCid10, FromAvisoConfirmacao;

procedure TFInclusaoAlteracaoDiagnostico.btn_fecharClick(Sender: TObject);
begin
   close;
end;

procedure TFInclusaoAlteracaoDiagnostico.DBEdit1Enter(Sender: TObject);
begin
   DBEdit1.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoDiagnostico.DBEdit1Exit(Sender: TObject);
begin
   DBEdit1.Color := clWindow;
end;

procedure TFInclusaoAlteracaoDiagnostico.DBEdit2Enter(Sender: TObject);
begin
   DBEdit2.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoDiagnostico.DBEdit2Exit(Sender: TObject);
begin
   DBEdit2.Color := clWindow;
end;

procedure TFInclusaoAlteracaoDiagnostico.DBEdit3Enter(Sender: TObject);
begin
   DBEdit3.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoDiagnostico.DBEdit3Exit(Sender: TObject);
begin
   DBEdit3.Color := clWindow;
end;

procedure TFInclusaoAlteracaoDiagnostico.DBLookupComboBox1Enter(
  Sender: TObject);
begin
   DBLookupComboBox1.Color := clWindow;
end;

procedure TFInclusaoAlteracaoDiagnostico.DBLookupComboBox1Exit(Sender: TObject);
begin
   DBLookupComboBox1.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoDiagnostico.FormActivate(Sender: TObject);
begin
   QPesqSexo.Open;
end;

procedure TFInclusaoAlteracaoDiagnostico.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) then
   begin
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFInclusaoAlteracaoDiagnostico.FormShow(Sender: TObject);
begin
   if Edit1.Text <> '' then
   begin
      QCadDiagnostico.Close;
      QCadDiagnostico.SQL.Clear;
      QCadDiagnostico.SQL.Add('SELECT * FROM ARQ_DIAGNOSTICO');
      QCadDiagnostico.SQL.Add('WHERE CODIGO ='+#39+Edit1.Text+#39);
      QCadDiagnostico.Open;
      //
      QCadDiagnostico.Edit;
   end;

   if Edit1.Text = '' then
   begin
      QCadDiagnostico.Open;
      //
      QCadDiagnostico.Append;
      QCadDiagnostico.FieldByName('INATIVO').AsString := 'N';
      DBEdit1.SetFocus;
   end;

end;

procedure TFInclusaoAlteracaoDiagnostico.Panel3Click(Sender: TObject);
begin
   if DBEdit1.Text = '' then
   begin
      Application.MessageBox('Informe o c?digo do CID.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBEdit1.SetFocus;
      abort;
   end;

   if DBEdit2.Text = '' then
   begin
      Application.MessageBox('Informe a descri??o do diagn?stico.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBEdit2.SetFocus;
      abort;
   end;

   if DBEdit3.Text = '' then
   begin
      Application.MessageBox('Informe o c?digo do Grupo do Cid.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBEdit3.SetFocus;
      abort;
   end;
   //
   QCadDiagnostico.Post;
   //
   Application.CreateForm(TFAvisoConfirmacao, FAvisoConfirmacao);
   FAvisoConfirmacao.ShowModal;
   FAvisoConfirmacao.Free;
   //
   QCadDiagnostico.Edit;

end;

procedure TFInclusaoAlteracaoDiagnostico.pnl_btncancelarClick(Sender: TObject);
begin
   QCadDiagnostico.Cancel;
   close;
end;

end.
