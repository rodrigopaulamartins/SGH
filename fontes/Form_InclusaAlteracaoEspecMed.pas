unit Form_InclusaAlteracaoEspecMed;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Data.DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Vcl.DBCtrls, Vcl.Mask;

type
  TFInclusaoAlteracaoEspecMed = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    pnl_topo: TPanel;
    Label1: TLabel;
    btn_fechar: TSpeedButton;
    Panel4: TPanel;
    Panel1: TPanel;
    DPesqEspec: TDataSource;
    QPesqEspec: TZQuery;
    QPesqEspeccodigo: TIntegerField;
    QPesqEspecdescricao: TWideStringField;
    QPesqEspeccod_cbo: TWideStringField;
    QPesqEspeccod_cbosus: TWideStringField;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Panel2: TPanel;
    pnl_btnconfirmar: TPanel;
    pnl_btncancelar: TPanel;
    procedure btn_fecharClick(Sender: TObject);
    procedure pnl_btncancelarClick(Sender: TObject);
    procedure pnl_btnconfirmarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInclusaoAlteracaoEspecMed: TFInclusaoAlteracaoEspecMed;

implementation

{$R *.dfm}

uses Form_CadastroPrestadorServico, Form_InclusaoAlteracaoPrestador, DataModulo;

procedure TFInclusaoAlteracaoEspecMed.btn_fecharClick(Sender: TObject);
begin
   close;
end;

procedure TFInclusaoAlteracaoEspecMed.DBLookupComboBox1Enter(Sender: TObject);
begin
   DBLookupComboBox1.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoEspecMed.DBLookupComboBox1Exit(Sender: TObject);
begin
   DBLookupComboBox1.Color := clWindow;
end;

procedure TFInclusaoAlteracaoEspecMed.FormActivate(Sender: TObject);
begin
   QPesqEspec.Open;
end;

procedure TFInclusaoAlteracaoEspecMed.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) then
   begin
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFInclusaoAlteracaoEspecMed.pnl_btncancelarClick(Sender: TObject);
begin
   FInclusaoAlteracaoPrestador.QCadEspec.Cancel;
   close;
end;

procedure TFInclusaoAlteracaoEspecMed.pnl_btnconfirmarClick(Sender: TObject);
begin
   //verifica que tipo de situacao esta fazendo
   if Edit1.Text = 'INC' then
   begin
      if DBLookupComboBox1.Text = '' then
      begin
         Application.MessageBox('Selecione a especialidade do prestador.','Obrigatório', MB_ICONEXCLAMATION+MB_OK);
         DBLookupComboBox1.SetFocus;
         abort;
      end;
      FInclusaoAlteracaoPrestador.QCadEspec.FindField('IDPRESTADOR').Value := FInclusaoAlteracaoPrestador.QCadPrestador.FindField('CODIGO').Value;
      FInclusaoAlteracaoPrestador.QCadEspec.Post;
   end;
   if Edit1.Text = 'ALT' then
   begin
      FInclusaoAlteracaoPrestador.QCadEspec.Post;
   end;
end;

end.
