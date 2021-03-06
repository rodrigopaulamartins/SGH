unit Form_CadastroClienteFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,  Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFCadastroClienteFornecedor = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    pnl_btnconfirmar: TPanel;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    QPesqCadCliente: TZQuery;
    DCadCliente: TDataSource;
    QPesqCadClientecodigo: TIntegerField;
    QPesqCadClientecpf_cnpj: TWideStringField;
    QPesqCadClienterazao_social: TWideStringField;
    QPesqCadClientenome_fantasia: TWideStringField;
    QPesqCadClienteidtplogradouro: TIntegerField;
    QPesqCadClienteendereco: TWideStringField;
    QPesqCadClientenumero: TWideStringField;
    QPesqCadClientecomplemento: TWideStringField;
    QPesqCadClientecep: TWideStringField;
    QPesqCadClientebairro: TWideStringField;
    QPesqCadClienteidcidade: TIntegerField;
    QPesqCadClienteuf: TWideStringField;
    QPesqCadClienteidpais: TIntegerField;
    QPesqCadClienteddd: TWideStringField;
    QPesqCadClientetelefone1: TWideStringField;
    QPesqCadClienteddd1: TWideStringField;
    QPesqCadClientetelefone2: TWideStringField;
    QPesqCadClienteemail: TWideStringField;
    QPesqCadClientesite: TWideStringField;
    QPesqCadClientecontato: TWideStringField;
    QPesqCadClienteidRamoatividade: TIntegerField;
    QPesqCadClientedt_cadastro: TDateField;
    QPesqCadClienteinativo: TWideStringField;
    QPesqCadClientecliente: TWideStringField;
    QPesqCadClientefornecedor: TWideStringField;
    QPesqCadClientepessoa_fisica: TWideStringField;
    QPesqCadClienteprestador_servico: TWideStringField;
    QPesqCadClientebtn_alterar: TWideStringField;
    QPesqCadClientebtn_excluir: TWideStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure pnl_btnconfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastroClienteFornecedor: TFCadastroClienteFornecedor;

implementation

{$R *.dfm}

uses Form_Principal, DataModulo, Form_InclusaoAlteracaoCleinte,
  Form_AvisoExclusao, Form_InclusaoAlteracaoUsuario;

procedure TFCadastroClienteFornecedor.DBGrid1CellClick(Column: TColumn);
var
  mensagem: string;
begin
     if Column.Index = 6 Then
     begin
        if QPesqCadCliente.IsEmpty then
        begin
           Application.MessageBox('Nenhum registro selecionado.','Altera??o n?o permitida', MB_ICONWARNING+MB_OK);
           abort;
        end;
        //aqui vai o codigo do que fazer
        Application.CreateForm(TFInclusaoAlteracaoCliente, FInclusaoAlteracaoCliente);
        FInclusaoAlteracaoCliente.Edit1.Text := QPesqCadCliente.FindField('CODIGO').Value;
        FInclusaoAlteracaoCliente.ShowModal;
        FInclusaoAlteracaoCliente.Free;
        QPesqCadCliente.Refresh;
     end;

     if Column.Index = 7 Then
     begin
        //aqui vai o codigo do que fazer
        if not QPesqCadCliente.IsEmpty then
        begin
           Application.CreateForm(TFAvisoExclusao, FAvisoExclusao);
           mensagem := 'Tem certeza que deseja excluir o fornecedor: ' + QPesqCadCliente.FieldByName('RAZAO_SOCIAL').AsString + '?';
           FAvisoExclusao.Label1.Caption := 'ATEN??O - Exclus?o de Cliente/Fornecedor';
           FAvisoExclusao.RichEdit1.Lines.Add(mensagem);
           FAvisoExclusao.Edit1.Text := QPesqCadCliente.FindField('CODIGO').Value;
           FAvisoExclusao.ShowModal;
           FAvisoExclusao.Free;
        end;
     end;
     QPesqCadCliente.Refresh;
end;

procedure TFCadastroClienteFornecedor.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Column.Field = QPesqCadClientebtn_alterar then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 1)
   end;

   if Column.Field = QPesqCadClientebtn_excluir then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 0);
   end;
end;

procedure TFCadastroClienteFornecedor.pnl_btnconfirmarClick(Sender: TObject);
begin
   Application.CreateForm(TFInclusaoAlteracaoCliente, FInclusaoAlteracaoCliente);
   FInclusaoAlteracaoCliente.Edit1.Text := '';
   FInclusaoAlteracaoCliente.ShowModal;
   FInclusaoAlteracaoCliente.Free;
end;

procedure TFCadastroClienteFornecedor.SpeedButton1Click(Sender: TObject);
var
  Tab: TTabSheet;
begin
  Tab := FPrincipal.PageControl1.ActivePage;
  if Tab <> nil then begin
    FPrincipal.PageControl1.ActivePageIndex := 0;
    Tab.Free;
  end;

end;

procedure TFCadastroClienteFornecedor.SpeedButton2Click(Sender: TObject);
begin
   QPesqCadCliente.Close;
   QPesqCadCliente.SQL.Clear;
   QPesqCadCliente.SQL.Add('SELECT * FROM CAD_CLIENTES');
   QPesqCadCliente.SQL.Add('WHERE INATIVO IN ('+#39+'N'+#39+','+#39+'S'+#39+')');
   if ComboBox1.ItemIndex = 0 then
   begin
      QPesqCadCliente.SQL.Add('AND RAZAO_SOCIAL LIKE'+#39+'%'+Edit1.Text+'%'+#39);
   end;

   if ComboBox1.ItemIndex = 1 then
   begin
      QPesqCadCliente.SQL.Add('AND NOME_FANTASIA LIKE'+#39+'%'+Edit1.Text+'%'+#39);
   end;

   if ComboBox1.ItemIndex = 2 then
   begin
      QPesqCadCliente.SQL.Add('AND CPF_CNPJ ='+#39+Edit1.Text+#39);
   end;

   QPesqCadCliente.SQL.Add('ORDER BY RAZAO_SOCIAL');
   QPesqCadCliente.Open;

end;

end.
