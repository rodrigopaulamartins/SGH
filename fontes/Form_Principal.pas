unit Form_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.AppEvnts, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Menus;

type
  TFPrincipal = class(TForm)
    pnl_centro: TPanel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    TreeView1: TTreeView;
    Image1: TImage;
    procedure SpeedButton3Click(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriarAba(AFormClass: TFormClass);
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses Form_CadastroEmpresa, Form_ProntuarioPaciente, From_Login,
  Form_CadastroUsuarios, Form_PesquisaProntuario,
  Form_CadastroClienteFornecedor, Form_CadastroPrestadorServico,
  Form_PesquisaCadastroConvenio, Form_PequisaDiagnosticoCid10,
  Form_PesquisaCadastroAtoMedico, Form_PesquisaEspecialidade,
  Form_PesquisaProcedimento;

{ TFPrincipal }

procedure TFPrincipal.CriarAba(AFormClass: TFormClass);
var
  TabSheet: TTabSheet;
  Form: TForm;
  i: integer;
begin
  // busca pelo nome. O nome da aba ser? "TS" + <Nome>
  // Ex: Se o form ? o TfrmClientes, a aba ser? TSTfrmClientes.
  // J? o caption da aba ? o mesmo do form.
  for i := 0 to PageControl1.PageCount - 1 do
    if PageControl1.Pages[i].Name = 'TS' + AFormClass.ClassName then
    begin
      // achou aba, muda foco
      PageControl1.ActivePage := PageControl1.Pages[i];
      Exit;
    end;
  // se passar daqui, aba n?o existe
  TabSheet := TTabSheet.Create(Self);
  Form := AFormClass.Create(TabSheet);

  with TabSheet do
  begin
    PageControl := PageControl1;
    Caption := Form.Caption;
    Name := 'TS' + AFormClass.ClassName;
  end;

  with Form do
  begin
    Align := alClient;
    BorderStyle := bsNone;
    Parent := TabSheet;
    Show;
  end;
  PageControl1.ActivePage := TabSheet;
end;

procedure TFPrincipal.SpeedButton3Click(Sender: TObject);
begin
   if Application.MessageBox('Tem certeza que deseja fechar o sistema?','Fechar Sistema', MB_ICONQUESTION+MB_YESNO) = IDYES then
      Application.Terminate;
end;

procedure TFPrincipal.TreeView1Click(Sender: TObject);
begin
   //Formulario cadastro de empresa
   if TreeView1.Selected.Text = 'Empresas' then
   begin
      CriarAba(TFCadastroEmpresa);
   end;
   //abre o fomulario de Prontuario
   if TreeView1.Selected.Text = 'Prontu?rios' then
   begin
      CriarAba(TFPesquisaProntuario);
   end;
   //abre o fomulario de cadastro do usu?rio
   if TreeView1.Selected.Text = 'Usu?rios' then
   begin
      CriarAba(TFUsuarios);
   end;
   //abre o fomulario de cadastro do clientes/fornecedor
   if TreeView1.Selected.Text = 'Clientes/Fornecedor' then
   begin
      CriarAba(TFCadastroClienteFornecedor);
   end;
   //abre o fomulario de cadastro do prestador de servi?o
   if TreeView1.Selected.Text = 'Prestadores' then
   begin
      CriarAba(TFPesquisaPrestadorServico);
   end;
   //abre o fomulario de cadastro de conv?nios
   if TreeView1.Selected.Text = 'Conv?nios' then
   begin
      CriarAba(TFPesquisaCadastroConvenio);
   end;
   //abre o fomulario de cadastro de CID-10
   if TreeView1.Selected.Text = 'CID - 10' then
   begin
      CriarAba(TFPesquisaDiagnostico);
   end;
   //abre o fomulario de cadastro de Ato m?dico
   if TreeView1.Selected.Text = 'Ato M?dico' then
   begin
      CriarAba(TFPesqAtoMedico);
   end;
   //abre o fomulario de cadastro de Especialidade
   if TreeView1.Selected.Text = 'Especialidade' then
   begin
      CriarAba(TFPesquisaEspecialidade);
   end;
   //abre o fomulario de cadastro de procedimentos
   if TreeView1.Selected.Text = 'Procedimentos' then
   begin
      CriarAba(TFPesquisaProcedimento);
   end;

end;

end.
