unit Form_CadastroEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.ComCtrls, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Mask, Vcl.DBCtrls;

type
  TFCadastroEmpresa = class(TForm)
    pnl_topo: TPanel;
    ImageList1: TImageList;
    Label1: TLabel;
    btn_fechar: TSpeedButton;
    pnl_btnconfirmar: TPanel;
    pnl_btncancelar: TPanel;
    Panel4: TPanel;
    Bevel1: TBevel;
    pnl_cadastro: TPanel;
    QEmpresa: TZQuery;
    DEmpresa: TDataSource;
    QEmpresacodigo: TIntegerField;
    QEmpresanome_fantasia: TWideStringField;
    QEmpresarazao_social: TWideStringField;
    QEmpresaidtp_logradouro: TIntegerField;
    QEmpresaendereco: TWideStringField;
    QEmpresanumero: TWideStringField;
    QEmpresacomplemento: TWideStringField;
    QEmpresacep: TWideStringField;
    QEmpresaestado: TWideStringField;
    QEmpresaidcidade: TIntegerField;
    QEmpresaidtp_inscricao: TIntegerField;
    QEmpresacnpj_cei: TWideStringField;
    QEmpresainsc_municipal: TWideStringField;
    QEmpresainsc_suframa: TWideStringField;
    QEmpresareg_secex: TWideStringField;
    QEmpresaidtipo_empresa: TIntegerField;
    QEmpresaidmotivo_situacao_cadastral: TIntegerField;
    QEmpresadt_inativacao: TDateField;
    QEmpresasit_inicioperiodo: TIntegerField;
    QEmpresadt_inclusao: TDateField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DPesqTipo: TDataSource;
    QPesqTipo: TZQuery;
    QPesqTipocodigo: TIntegerField;
    QPesqTipodescricao: TWideStringField;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    QEmpresainsc_estadual: TWideStringField;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    QPesqSitCadastral: TZQuery;
    DSitCadastral: TDataSource;
    QPesqSitCadastralcodigo: TIntegerField;
    QPesqSitCadastraldescricao: TWideStringField;
    Label12: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label13: TLabel;
    QEmpresasituacao_cadastral: TIntegerField;
    DBLookupComboBox3: TDBLookupComboBox;
    QPesqMotivo: TZQuery;
    DPesqMotivo: TDataSource;
    QPesqMotivocodigo: TIntegerField;
    QPesqMotivodescricao: TWideStringField;
    QPesqMotivoobservacao: TWideStringField;
    QPesqMotivodt_inativo: TDateField;
    QPesqMotivoinativo: TWideStringField;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    QEmpresatelefone1: TWideStringField;
    QEmpresatelefone2: TWideStringField;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    QEmpresabairro: TWideStringField;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    QPesqCidade: TZQuery;
    DPesqCidade: TDataSource;
    QPesqCidadecodigo: TIntegerField;
    QPesqCidadedescricao: TWideStringField;
    QPesqCidadecod_ibge: TWideStringField;
    QPesqCidadeestado: TWideStringField;
    Label20: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    Label22: TLabel;
    DBEdit17: TDBEdit;
    Label23: TLabel;
    DBEdit18: TDBEdit;
    procedure btn_fecharClick(Sender: TObject);
    procedure pnl_btnconfirmarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnl_btnconfirmarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnl_cadastroMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit18Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure pnl_btncancelarClick(Sender: TObject);
    procedure pnl_btnconfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastroEmpresa: TFCadastroEmpresa;

implementation

{$R *.dfm}

uses Form_Principal, DataModulo, FromAvisoConfirmacao;

procedure TFCadastroEmpresa.DBEdit10Enter(Sender: TObject);
begin
   DBEdit10.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit10Exit(Sender: TObject);
begin
   DBEdit10.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBEdit11Enter(Sender: TObject);
begin
   DBEdit11.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit11Exit(Sender: TObject);
begin
   DBEdit11.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBEdit12Enter(Sender: TObject);
begin
   DBEdit12.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit12Exit(Sender: TObject);
begin
   DBEdit12.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBEdit13Enter(Sender: TObject);
begin
   DBEdit13.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit13Exit(Sender: TObject);
begin
   DBEdit13.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBEdit14Enter(Sender: TObject);
begin
   DBEdit14.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit14Exit(Sender: TObject);
begin
   DBEdit14.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBEdit15Enter(Sender: TObject);
begin
   DBEdit15.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit15Exit(Sender: TObject);
begin
   DBEdit15.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBEdit16Enter(Sender: TObject);
begin
   DBEdit16.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit16Exit(Sender: TObject);
begin
   DBEdit16.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBEdit17Enter(Sender: TObject);
begin
   DBEdit17.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit17Exit(Sender: TObject);
begin
    DBEdit17.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBEdit18Enter(Sender: TObject);
begin
   DBEdit18.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit18Exit(Sender: TObject);
begin
   DBEdit18.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBEdit2Enter(Sender: TObject);
begin
   DBEdit2.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit2Exit(Sender: TObject);
begin
   DBEdit2.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBEdit3Enter(Sender: TObject);
begin
   DBEdit3.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit3Exit(Sender: TObject);
begin
   DBEdit3.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBEdit4Enter(Sender: TObject);
begin
    DBEdit4.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit4Exit(Sender: TObject);
begin
    DBEdit4.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBEdit5Enter(Sender: TObject);
begin
   DBEdit5.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit5Exit(Sender: TObject);
begin
   DBEdit5.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit6Enter(Sender: TObject);
begin
   DBEdit6.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit6Exit(Sender: TObject);
begin
    DBEdit6.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBEdit7Enter(Sender: TObject);
begin
   DBEdit7.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit7Exit(Sender: TObject);
begin
   DBEdit7.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBEdit8Enter(Sender: TObject);
begin
   DBEdit8.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit8Exit(Sender: TObject);
begin
   DBEdit7.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBEdit9Enter(Sender: TObject);
begin
   DBEdit9.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBEdit9Exit(Sender: TObject);
begin
   DBEdit9.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBLookupComboBox1Enter(Sender: TObject);
begin
   DBLookupComboBox1.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBLookupComboBox1Exit(Sender: TObject);
begin
   DBLookupComboBox1.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBLookupComboBox2Enter(Sender: TObject);
begin
   DBLookupComboBox2.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBLookupComboBox2Exit(Sender: TObject);
begin
   DBLookupComboBox2.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBLookupComboBox3Enter(Sender: TObject);
begin
   DBLookupComboBox3.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBLookupComboBox3Exit(Sender: TObject);
begin
   DBLookupComboBox3.Color := clWindow;
end;

procedure TFCadastroEmpresa.DBLookupComboBox4Enter(Sender: TObject);
begin
   DBLookupComboBox4.Color := clInfoBk;
end;

procedure TFCadastroEmpresa.DBLookupComboBox4Exit(Sender: TObject);
begin
   DBLookupComboBox4.Color := clWindow;
end;

procedure TFCadastroEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) then
   begin
      SelectNext(ActiveControl as TWinControl,True,True);
      key:=#0;
   end;
end;

procedure TFCadastroEmpresa.FormShow(Sender: TObject);
begin

   QEmpresa.Open;
   if QEmpresa.IsEmpty then
   begin
      QEmpresa.Append;
      QEmpresa.FieldByName('DT_INCLUSAO').AsDateTime := Date;
   end
   else
   begin
      QEmpresa.Edit;
   end;
   QPesqTipo.Open;
   QPesqSitCadastral.Open;
   QPesqCidade.open;
   QPesqMotivo.Open;
   //
   DBLookupComboBox1.SetFocus;
end;

procedure TFCadastroEmpresa.pnl_btncancelarClick(Sender: TObject);
begin
   QEmpresa.Cancel;
   //
   if DBEdit1.Text <> '' then
      QEmpresa.Edit;
end;

procedure TFCadastroEmpresa.pnl_btnconfirmarClick(Sender: TObject);
begin
   //inicia o processo de grava??o
   if DBEdit2.Text = '  /   /    ' then
   begin
      Application.MessageBox('Informe a data do cadastro.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBEdit2.SetFocus;
      abort;
   end;

   if DBLookupComboBox1.Text = '' then
   begin
      Application.MessageBox('Informe o tipo de inscri??o.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBLookupComboBox1.SetFocus;
      abort;
   end;

   if DBEdit3.Text = '' then
   begin
      Application.MessageBox('Informe o nome fantasia.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBEdit3.SetFocus;
      abort;
   end;

   if DBEdit4.Text = '' then
   begin
      Application.MessageBox('Informe a raz?o Social.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBEdit4.SetFocus;
      abort;
   end;

   if DBLookupComboBox2.Text = '' then
   begin
      Application.MessageBox('Informe a situa??o cadastral.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBLookupComboBox2.SetFocus;
      abort;
   end;

   if DBLookupComboBox3.Text = '' then
   begin
      Application.MessageBox('Informe o motivo da situa??o cadastral.','Obrigat?rio', MB_ICONINFORMATION+MB_OK);
      DBLookupComboBox3.SetFocus;
      abort;
   end;
   QEmpresa.Post;
   Application.CreateForm(TFAvisoConfirmacao, FAvisoConfirmacao);
   FAvisoConfirmacao.ShowModal;
   FAvisoConfirmacao.Free;
   //
   QEmpresa.Edit;
end;

procedure TFCadastroEmpresa.pnl_btnconfirmarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := clMenuHighlight;
end;

procedure TFCadastroEmpresa.pnl_btnconfirmarMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   pnl_btnconfirmar.Color := clMenuHighlight;
end;

procedure TFCadastroEmpresa.pnl_cadastroMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := $00FFBE7D;
end;

procedure TFCadastroEmpresa.btn_fecharClick(Sender: TObject);
var
  Tab: TTabSheet;
begin
   Tab := FPrincipal.PageControl1.ActivePage;
      if Tab <> nil then begin
      FPrincipal.PageControl1.ActivePageIndex := 0;
      Tab.Free;
   end;
end;

end.
