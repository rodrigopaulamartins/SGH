unit Form_InclusaoAlteracaoCredenciado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.DBCtrls, Vcl.Mask, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFIncluscaoAlteracaoCredenciado = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    Panel1: TPanel;
    Edit1: TEdit;
    Panel2: TPanel;
    pnl_btnconfirmar: TPanel;
    pnl_btncancelar: TPanel;
    pnl_topo: TPanel;
    Label1: TLabel;
    btn_fechar: TSpeedButton;
    Panel4: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DPesqConvenio: TDataSource;
    QPesqConv?nio: TZQuery;
    QPesqConv?nioCODIGO: TIntegerField;
    QPesqConv?nioRAZAO_SOCIAL: TWideStringField;
    procedure pnl_btncancelarClick(Sender: TObject);
    procedure pnl_btnconfirmarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIncluscaoAlteracaoCredenciado: TFIncluscaoAlteracaoCredenciado;

implementation

{$R *.dfm}

uses Form_InclusaoAlteracaoPrestador, DataModulo;

procedure TFIncluscaoAlteracaoCredenciado.DBEdit1Enter(Sender: TObject);
begin
   DBEdit1.Color := clInfoBk;
end;

procedure TFIncluscaoAlteracaoCredenciado.DBEdit1Exit(Sender: TObject);
begin
   DBEdit1.Color := clWindow;
end;

procedure TFIncluscaoAlteracaoCredenciado.DBLookupComboBox1Enter(
  Sender: TObject);
begin
   DBLookupComboBox1.Color := clInfoBk;
end;

procedure TFIncluscaoAlteracaoCredenciado.DBLookupComboBox1Exit(
  Sender: TObject);
begin
   DBLookupComboBox1.Color := clWindow;
end;

procedure TFIncluscaoAlteracaoCredenciado.DBLookupComboBox2Enter(
  Sender: TObject);
begin
   DBLookupComboBox2.Color := clInfoBk;
end;

procedure TFIncluscaoAlteracaoCredenciado.DBLookupComboBox2Exit(
  Sender: TObject);
begin
   DBLookupComboBox2.Color := clWindow;
end;

procedure TFIncluscaoAlteracaoCredenciado.FormActivate(Sender: TObject);
begin
   QPesqConv?nio.Open;
end;

procedure TFIncluscaoAlteracaoCredenciado.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) then
   begin
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFIncluscaoAlteracaoCredenciado.pnl_btncancelarClick(Sender: TObject);
begin
   FInclusaoAlteracaoPrestador.QCadCredenciado.Cancel;
   close;
end;

procedure TFIncluscaoAlteracaoCredenciado.pnl_btnconfirmarClick(
  Sender: TObject);
begin
   if Edit1.Text = 'INC' then
   begin
      if DBEdit1.Text = '' then
      begin
         Application.MessageBox('Informe o n?mero do contrato do prestador na operadora.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
         DBEdit1.SetFocus;
         abort;
      end;
      FInclusaoAlteracaoPrestador.QCadCredenciado.FindField('IDPRESTADOR').Value := FInclusaoAlteracaoPrestador.QCadPrestador.FindField('CODIGO').Value;
      FInclusaoAlteracaoPrestador.QCadCredenciado.Post;
   end;
   if Edit1.Text = 'ALT' then
   begin
      FInclusaoAlteracaoPrestador.QCadCredenciado.Post;
   end;
end;

end.
