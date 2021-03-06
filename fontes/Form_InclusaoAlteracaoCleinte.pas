unit Form_InclusaoAlteracaoCleinte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFInclusaoAlteracaoCliente = class(TForm)
    Edit1: TEdit;
    ImageList1: TImageList;
    pnl_topo: TPanel;
    Label1: TLabel;
    btn_fechar: TSpeedButton;
    Bevel1: TBevel;
    pnl_btnconfirmar: TPanel;
    pnl_btncancelar: TPanel;
    Panel4: TPanel;
    QCadCliente: TZQuery;
    QCadClientecodigo: TIntegerField;
    QCadClientecpf_cnpj: TWideStringField;
    QCadClienterazao_social: TWideStringField;
    QCadClientenome_fantasia: TWideStringField;
    QCadClienteidtplogradouro: TIntegerField;
    QCadClienteendereco: TWideStringField;
    QCadClientenumero: TWideStringField;
    QCadClientecomplemento: TWideStringField;
    QCadClientecep: TWideStringField;
    QCadClientebairro: TWideStringField;
    QCadClienteidcidade: TIntegerField;
    QCadClienteuf: TWideStringField;
    QCadClienteidpais: TIntegerField;
    QCadClienteddd: TWideStringField;
    QCadClientetelefone1: TWideStringField;
    QCadClienteddd1: TWideStringField;
    QCadClientetelefone2: TWideStringField;
    QCadClienteemail: TWideStringField;
    QCadClientesite: TWideStringField;
    QCadClientecontato: TWideStringField;
    QCadClienteidRamoatividade: TIntegerField;
    QCadClientedt_cadastro: TDateField;
    QCadClienteinativo: TWideStringField;
    QCadClientecliente: TWideStringField;
    QCadClientefornecedor: TWideStringField;
    QCadClientepessoa_fisica: TWideStringField;
    QCadClienteprestador_servico: TWideStringField;
    QCadClientebtn_alterar: TWideStringField;
    QCadClientebtn_excluir: TWideStringField;
    DCadCliente: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    QPesqTpLogradouro: TZQuery;
    QPesqTpLogradourocodigo: TIntegerField;
    QPesqTpLogradourodescricao: TWideStringField;
    DPesqTpLogradouro: TDataSource;
    Label27: TLabel;
    DBLookupComboBox10: TDBLookupComboBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    QPesqCidade: TZQuery;
    QPesqCidadecodigo: TIntegerField;
    QPesqCidadedescricao: TWideStringField;
    QPesqCidadecod_ibge: TWideStringField;
    QPesqCidadeestado: TWideStringField;
    DPesqCidade: TDataSource;
    Label26: TLabel;
    DBLookupComboBox9: TDBLookupComboBox;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    DPesqRamo: TDataSource;
    QPesqRamo: TZQuery;
    QPesqRamocodigo: TIntegerField;
    QPesqRamodescricao: TWideStringField;
    Label19: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBLookupComboBox10Exit(Sender: TObject);
    procedure DBLookupComboBox10Enter(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBLookupComboBox9Enter(Sender: TObject);
    procedure DBLookupComboBox9Exit(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure pnl_btncancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnl_btnconfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInclusaoAlteracaoCliente: TFInclusaoAlteracaoCliente;

implementation

{$R *.dfm}

uses DataModulo, FromAvisoConfirmacao;

procedure TFInclusaoAlteracaoCliente.btn_fecharClick(Sender: TObject);
begin
  close;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit10Enter(Sender: TObject);
begin
   DBEdit10.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit10Exit(Sender: TObject);
begin
   DBEdit10.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit11Enter(Sender: TObject);
begin
   DBEdit11.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit11Exit(Sender: TObject);
begin
   DBEdit11.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit12Enter(Sender: TObject);
begin
   DBEdit12.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit12Exit(Sender: TObject);
begin
   DBEdit11.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit13Enter(Sender: TObject);
begin
   DBEdit13.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit13Exit(Sender: TObject);
begin
   DBEdit13.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit14Enter(Sender: TObject);
begin
   DBEdit14.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit14Exit(Sender: TObject);
begin
   DBEdit14.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit15Enter(Sender: TObject);
begin
   DBEdit15.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit15Exit(Sender: TObject);
begin
   DBEdit15.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit16Enter(Sender: TObject);
begin
   DBEdit16.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit16Exit(Sender: TObject);
begin
   DBEdit16.Color := clWindow;

end;

procedure TFInclusaoAlteracaoCliente.DBEdit17Enter(Sender: TObject);
begin
   DBEdit17.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit17Exit(Sender: TObject);
begin
   DBEdit17.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit2Enter(Sender: TObject);
begin
   DBEdit2.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit2Exit(Sender: TObject);
begin
   DBEdit2.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit3Enter(Sender: TObject);
begin
   DBEdit3.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit3Exit(Sender: TObject);
begin
   DBEdit3.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit4Enter(Sender: TObject);
begin
   DBEdit4.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit4Exit(Sender: TObject);
begin
   DBEdit4.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit5Enter(Sender: TObject);
begin
   DBEdit5.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit5Exit(Sender: TObject);
begin
   DBEdit5.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit6Enter(Sender: TObject);
begin
   DBEdit6.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit6Exit(Sender: TObject);
begin
   DBEdit6.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit7Enter(Sender: TObject);
begin
   DBEdit7.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit7Exit(Sender: TObject);
begin
   DBEdit7.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit8Enter(Sender: TObject);
begin
   DBEdit8.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit8Exit(Sender: TObject);
begin
   DBEdit8.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit9Enter(Sender: TObject);
begin
   DBEdit9.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBEdit9Exit(Sender: TObject);
begin
   DBEdit9.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBLookupComboBox10Enter(Sender: TObject);
begin
   DBLookupComboBox10.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBLookupComboBox10Exit(Sender: TObject);
begin
   DBLookupComboBox10.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBLookupComboBox1Enter(Sender: TObject);
begin
   DBLookupComboBox1.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBLookupComboBox1Exit(Sender: TObject);
begin
   DBLookupComboBox1.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.DBLookupComboBox9Enter(Sender: TObject);
begin
   DBLookupComboBox9.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCliente.DBLookupComboBox9Exit(Sender: TObject);
begin
   DBLookupComboBox9.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCliente.FormActivate(Sender: TObject);
begin
   QPesqTpLogradouro.Open;
   QPesqCidade.Open;
   QPesqRamo.Open;
end;

procedure TFInclusaoAlteracaoCliente.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) then
   begin
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFInclusaoAlteracaoCliente.FormShow(Sender: TObject);
begin
   if Edit1.Text <> '' then
   begin
      QCadCliente.Close;
      QCadCliente.SQL.Clear;
      QCadCliente.SQL.Add('SELECT * FROM CAD_CLIENTES');
      QCadCliente.SQL.Add('WHERE CODIGO ='+#39+Edit1.Text+#39);
      QCadCliente.Open;
      //
      QCadCliente.Edit;
   end;

   if Edit1.Text = '' then
   begin
      QCadCliente.Open;
      //
      QCadCliente.Append;
      QCadCliente.FieldByName('DT_CADASTRO'      ).AsDateTime := Date;
      QCadCliente.FieldByName('INATIVO'          ).AsString   := 'N';
      QCadCliente.FieldByName('CLIENTE'          ).AsString   := 'N';
      QCadCliente.FieldByName('FORNECEDOR'       ).AsString   := 'N';
      QCadCliente.FieldByName('PESSOA_FISICA'    ).AsString   := 'N';
      QCadCliente.FieldByName('PRESTADOR_SERVICO').AsString   := 'N';
      DBEdit2.SetFocus;
   end;

end;

procedure TFInclusaoAlteracaoCliente.pnl_btncancelarClick(Sender: TObject);
begin
   QCadCliente.Cancel;
   close;
end;

procedure TFInclusaoAlteracaoCliente.pnl_btnconfirmarClick(Sender: TObject);
begin
   //faz as valida??es se o campo esta preenchido
   if DBEdit2.Text = '' then
   begin
      Application.MessageBox('Informe CPF ou CNPJ.','Campo obrigat?rio', MB_ICONWARNING+MB_OK);
      DBEdit2.SetFocus;
      abort;
   end;
   //
   if DBEdit3.Text = '' then
   begin
      Application.MessageBox('Informe nome ou raz?o social.','Campo obrigat?rio', MB_ICONWARNING+MB_OK);
      DBEdit3.SetFocus;
      abort;
   end;
   //
   if DBEdit4.Text = '' then
   begin
      Application.MessageBox('Informe o nome fantasia.','Campo obrigat?rio', MB_ICONWARNING+MB_OK);
      DBEdit4.SetFocus;
      abort;
   end;
   //
   if DBLookupComboBox1.Text = '' then
   begin
      Application.MessageBox('Selecione o ramo/atividade.','Campo obrigat?rio', MB_ICONWARNING+MB_OK);
      DBLookupComboBox1.SetFocus;
      abort;
   end;
   QCadCliente.Post;
   Application.CreateForm(TFAvisoConfirmacao, FAvisoConfirmacao);
   FAvisoConfirmacao.ShowModal;
   FAvisoConfirmacao.Free;
   //
   QCadCliente.Edit;


end;

end.
