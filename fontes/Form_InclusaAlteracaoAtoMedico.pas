unit Form_InclusaAlteracaoAtoMedico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFInclusaoAlteracaoAtoMedico = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    Panel1: TPanel;
    Edit1: TEdit;
    Panel2: TPanel;
    pnl_topo: TPanel;
    Label1: TLabel;
    btn_fechar: TSpeedButton;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    QCadAtoMedico: TZQuery;
    DCadAtoMedico: TDataSource;
    QCadAtoMedicocodigo: TIntegerField;
    QCadAtoMedicodescricao: TWideStringField;
    QCadAtoMedicoidpagto: TIntegerField;
    QCadAtoMedicotb_percentual: TFloatField;
    QCadAtoMedicoacres_30: TWideStringField;
    QCadAtoMedicocod_tiss3: TWideStringField;
    QCadAtoMedicobtn_alterar: TWideStringField;
    QCadAtoMedicobtn_excluir: TWideStringField;
    DPesqTipoAto: TDataSource;
    QPesqTipoAto: TZQuery;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    QPesqTipoAtocodigo: TIntegerField;
    QPesqTipoAtodescricao: TWideStringField;
    QPesqTipoAtotip_pagato: TIntegerField;
    QPesqTipoAtotab_perpag: TFloatField;
    QPesqTipoAtotab_tis3: TWideStringField;
    DBCheckBox1: TDBCheckBox;
    procedure Panel5Click(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
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
  FInclusaoAlteracaoAtoMedico: TFInclusaoAlteracaoAtoMedico;

implementation

{$R *.dfm}

uses DataModulo, FromAvisoConfirmacao;

procedure TFInclusaoAlteracaoAtoMedico.btn_fecharClick(Sender: TObject);
begin
   close;
end;

procedure TFInclusaoAlteracaoAtoMedico.DBEdit2Enter(Sender: TObject);
begin
   DBEdit2.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoAtoMedico.DBEdit2Exit(Sender: TObject);
begin
   DBEdit2.Color := clWindow;
end;

procedure TFInclusaoAlteracaoAtoMedico.DBEdit4Enter(Sender: TObject);
begin
   DBEdit4.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoAtoMedico.DBEdit4Exit(Sender: TObject);
begin
   DBEdit4.Color := clWindow;
end;

procedure TFInclusaoAlteracaoAtoMedico.DBLookupComboBox1Click(Sender: TObject);
begin
   //
end;

procedure TFInclusaoAlteracaoAtoMedico.DBLookupComboBox1Enter(Sender: TObject);
begin
   DBLookupComboBox1.Color := clInfoBk;
   DBEdit3.Text := QPesqTipoAto.FieldByName('TAB_TIS3').Text;

end;

procedure TFInclusaoAlteracaoAtoMedico.DBLookupComboBox1Exit(Sender: TObject);
begin
   DBLookupComboBox1.Color := clWindow;
end;

procedure TFInclusaoAlteracaoAtoMedico.FormActivate(Sender: TObject);
begin
   QPesqTipoAto.Open;
end;

procedure TFInclusaoAlteracaoAtoMedico.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) then
   begin
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFInclusaoAlteracaoAtoMedico.FormShow(Sender: TObject);
begin
   if Edit1.Text <> '' then
   begin
      QCadAtoMedico.Close;
      QCadAtoMedico.SQL.Clear;
      QCadAtoMedico.SQL.Add('SELECT * FROM ARQ_ATOMEDICO');
      QCadAtoMedico.SQL.Add('WHERE CODIGO ='+#39+Edit1.Text+#39);
      QCadAtoMedico.Open;
      //
      QCadAtoMedico.Edit;
   end;

   if Edit1.Text = '' then
   begin
      QCadAtoMedico.Open;
      //
      QCadAtoMedico.Append;
      DBEdit1.SetFocus;
   end;

end;

procedure TFInclusaoAlteracaoAtoMedico.Panel3Click(Sender: TObject);
begin

   if DBEdit2.Text = '' then
   begin
      Application.MessageBox('Informe a descri??o do ato m?dico.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBEdit2.SetFocus;
      abort;
   end;

   if DBEdit4.Text = '' then
   begin
      Application.MessageBox('Informe a porcentagem para o calculo.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBEdit4.SetFocus;
      abort;
   end;

   if DBLookupComboBox1.Text = '' then
   begin
      Application.MessageBox('Informe o tipo de pagamento.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBLookupComboBox1.SetFocus;
      abort;
   end;
   //
   QCadAtoMedico.Post;
   //
   Application.CreateForm(TFAvisoConfirmacao, FAvisoConfirmacao);
   FAvisoConfirmacao.ShowModal;
   FAvisoConfirmacao.Free;
   //
   QCadAtoMedico.Edit;

end;

procedure TFInclusaoAlteracaoAtoMedico.Panel5Click(Sender: TObject);
begin
   QCadAtoMedico.Cancel;
   close;
end;

end.
