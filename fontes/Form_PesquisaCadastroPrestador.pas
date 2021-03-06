unit Form_PesquisaCadastroPrestador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFPesquisaCadastroPestrador = class(TForm)
    pnl_topo: TPanel;
    Label1: TLabel;
    btn_fechar: TSpeedButton;
    Bevel1: TBevel;
    ImageList1: TImageList;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    pnl_btnconfirmar: TPanel;
    pnl_btncancelar: TPanel;
    DBGrid1: TDBGrid;
    DPesquisaClientes: TDataSource;
    QPesquisaClientes: TZQuery;
    QPesquisaClientescodigo: TIntegerField;
    QPesquisaClientescpf_cnpj: TWideStringField;
    QPesquisaClientesrazao_social: TWideStringField;
    QPesquisaClientesnome_fantasia: TWideStringField;
    QPesquisaClientesidtplogradouro: TIntegerField;
    QPesquisaClientesendereco: TWideStringField;
    QPesquisaClientesnumero: TWideStringField;
    QPesquisaClientescomplemento: TWideStringField;
    QPesquisaClientescep: TWideStringField;
    QPesquisaClientesbairro: TWideStringField;
    QPesquisaClientesidcidade: TIntegerField;
    QPesquisaClientesuf: TWideStringField;
    QPesquisaClientesidpais: TIntegerField;
    QPesquisaClientesddd: TWideStringField;
    QPesquisaClientestelefone1: TWideStringField;
    QPesquisaClientesddd1: TWideStringField;
    QPesquisaClientestelefone2: TWideStringField;
    QPesquisaClientesemail: TWideStringField;
    QPesquisaClientessite: TWideStringField;
    QPesquisaClientescontato: TWideStringField;
    QPesquisaClientesidRamoatividade: TIntegerField;
    QPesquisaClientesdt_cadastro: TDateField;
    QPesquisaClientesinativo: TWideStringField;
    QPesquisaClientescliente: TWideStringField;
    QPesquisaClientesfornecedor: TWideStringField;
    QPesquisaClientespessoa_fisica: TWideStringField;
    QPesquisaClientesprestador_servico: TWideStringField;
    QPesquisaClientesbtn_alterar: TWideStringField;
    QPesquisaClientesbtn_excluir: TWideStringField;
    procedure btn_fecharClick(Sender: TObject);
    procedure pnl_btncancelarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure pnl_btnconfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaCadastroPestrador: TFPesquisaCadastroPestrador;

implementation

{$R *.dfm}

uses DataModulo, Form_InclusaoAlteracaoPrestador,
  Form_InclusaoAlteracaoConvenio;

procedure TFPesquisaCadastroPestrador.btn_fecharClick(Sender: TObject);
begin
   close;
end;

procedure TFPesquisaCadastroPestrador.pnl_btncancelarClick(Sender: TObject);
begin
   close;
end;

procedure TFPesquisaCadastroPestrador.pnl_btnconfirmarClick(Sender: TObject);
begin
   if not QPesquisaClientes.IsEmpty then
   begin
      if tag = 0 then
      begin
         FInclusaoAlteracaoPrestador.QCadPrestador.FieldByName('IDPRESTADOR').AsInteger := QPesquisaClientes.FieldByName('CODIGO').AsInteger;
         FInclusaoAlteracaoPrestador.DBLookupComboBox1.SetFocus;
         close;
      end
      else
      begin
         if tag = 1 then
         begin
            FInclusaoAlteracaoConvenio.QCadConvenio.FieldByName('IDPRESTADOR').AsInteger := QPesquisaClientes.FieldByName('CODIGO').AsInteger;
            FInclusaoAlteracaoConvenio.DBLookupComboBox1.SetFocus;
            close;
         end;
      end;
   end;
end;

procedure TFPesquisaCadastroPestrador.SpeedButton2Click(Sender: TObject);
begin
   if tag = 0 then
   begin
      QPesquisaClientes.Close;
      QPesquisaClientes.SQL.Clear;
      QPesquisaClientes.SQL.Add('SELECT * FROM CAD_CLIENTES');
      QPesquisaClientes.SQL.Add('WHERE INATIVO = '+#39+'N'+#39);
      QPesquisaClientes.SQL.Add('AND RAZAO_SOCIAL LIKE '+#39+'%'+Edit1.Text+'%'+#39);
      QPesquisaClientes.SQL.Add('AND IDRAMOATIVIDADE = '+#39+'7'+#39);
      QPesquisaClientes.SQL.Add('ORDER BY RAZAO_SOCIAL');
      QPesquisaClientes.Open;
   end
   else
   begin
      if tag = 1 then
      begin
         QPesquisaClientes.Close;
         QPesquisaClientes.SQL.Clear;
         QPesquisaClientes.SQL.Add('SELECT * FROM CAD_CLIENTES');
         QPesquisaClientes.SQL.Add('WHERE INATIVO = '+#39+'N'+#39);
         QPesquisaClientes.SQL.Add('AND RAZAO_SOCIAL LIKE '+#39+'%'+Edit1.Text+'%'+#39);
         QPesquisaClientes.SQL.Add('AND IDRAMOATIVIDADE = '+#39+'8'+#39);
         QPesquisaClientes.SQL.Add('ORDER BY RAZAO_SOCIAL');
         QPesquisaClientes.Open;
      end;
   end;
end;

end.
