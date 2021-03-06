unit Form_PesquisaProntuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList, Vcl.ComCtrls,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFPesquisaProntuario = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    pnl_btnconfirmar: TPanel;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    QPesqProntuario: TZQuery;
    DPesqProntuario: TDataSource;
    QPesqProntuariocodigo: TIntegerField;
    QPesqProntuarionome_social: TWideStringField;
    QPesqProntuarionome_completo: TWideStringField;
    QPesqProntuariotp_sanguineo: TWideStringField;
    QPesqProntuarionum_rg: TWideStringField;
    QPesqProntuariouf_rg: TWideStringField;
    QPesqProntuarionum_cns: TWideStringField;
    QPesqProntuarioidnacionalidade: TIntegerField;
    QPesqProntuarionaturalidade: TWideStringField;
    QPesqProntuarioidsexo: TIntegerField;
    QPesqProntuariodt_nascimento: TDateField;
    QPesqProntuarioidestcivil: TIntegerField;
    QPesqProntuarioidraca: TIntegerField;
    QPesqProntuarioidetnia: TIntegerField;
    QPesqProntuarioidgrauins: TIntegerField;
    QPesqProntuarioidreligiao: TIntegerField;
    QPesqProntuarioidtpdoc: TIntegerField;
    QPesqProntuarionum_documentos: TWideStringField;
    QPesqProntuariomat_cert_nascimento: TWideStringField;
    QPesqProntuarionome_pai: TWideStringField;
    QPesqProntuarionome_mae: TWideStringField;
    QPesqProntuarion_pasta: TWideStringField;
    QPesqProntuarioloc_prontuario: TWideStringField;
    QPesqProntuariocep: TWideStringField;
    QPesqProntuarioidcidade: TIntegerField;
    QPesqProntuarioidtplogradouro: TIntegerField;
    QPesqProntuarioendereco: TWideStringField;
    QPesqProntuarionumero: TWideStringField;
    QPesqProntuariocomplemento: TWideStringField;
    QPesqProntuariobairro: TWideStringField;
    QPesqProntuarioreferencia: TWideStringField;
    QPesqProntuarioprofisscao: TWideStringField;
    QPesqProntuariolocal_trabalho: TWideStringField;
    QPesqProntuarioddd1: TWideStringField;
    QPesqProntuarioddd2: TWideStringField;
    QPesqProntuariotelefone1: TWideStringField;
    QPesqProntuariotelefone2: TWideStringField;
    QPesqProntuarioidformcont: TIntegerField;
    QPesqProntuarioemail: TWideStringField;
    QPesqProntuarionome_contato: TWideStringField;
    QPesqProntuarioddd_contato: TWideStringField;
    QPesqProntuariotelefone_contato: TWideStringField;
    QPesqProntuarioidconvenio: TIntegerField;
    QPesqProntuariocod_carterinha: TWideStringField;
    QPesqProntuarioconjuge: TWideStringField;
    QPesqProntuarioresponsavel_paciente: TWideStringField;
    QPesqProntuariodt_cadastro: TDateField;
    QPesqProntuariobtn_editar: TWideStringField;
    QPesqProntuariobtn_excluir: TWideStringField;
    QPesqProntuarionome_responsavel: TWideStringField;
    QPesqProntuariocpf_cnpj: TWideStringField;
    QPesqProntuariorg_responsavel: TWideStringField;
    QPesqProntuarioddd_responsavel: TWideStringField;
    QPesqProntuariotelefone_responsavel: TWideStringField;
    QPesqProntuariocep_responsavel: TWideStringField;
    QPesqProntuarioendereco_responsavel: TWideStringField;
    QPesqProntuarionumero_responsavel: TWideStringField;
    QPesqProntuariocidade_responsavel: TWideStringField;
    QPesqProntuarioestado_responsavel: TWideStringField;
    QPesqProntuariobairro_responsavel: TWideStringField;
    QPesqProntuarioemail_responsavel: TWideStringField;
    QPesqProntuarioinativo: TWideStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ComboBox1Change(Sender: TObject);
    procedure pnl_btnconfirmarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure pnl_btnconfirmarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnl_btnconfirmarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaProntuario: TFPesquisaProntuario;

implementation

{$R *.dfm}

uses Form_Principal, DataModulo, Form_ProntuarioPaciente, Form_AvisoExclusao;

procedure TFPesquisaProntuario.ComboBox1Change(Sender: TObject);
begin
   Edit1.SetFocus;
end;

procedure TFPesquisaProntuario.DBGrid1CellClick(Column: TColumn);
var
  mensagem: string;
begin
     if Column.Index = 6 Then
     begin
        if QPesqProntuario.IsEmpty then
        begin
           Application.MessageBox('Nenhum registro selecionado.','Altera??o n?o permitida', MB_ICONWARNING+MB_OK);
           abort;
        end;
        //aqui vai o codigo do que fazer
        Application.CreateForm(TFProntuario_Paciente, FProntuario_Paciente);
        FProntuario_Paciente.Edit1.Text := QPesqProntuario.FindField('CODIGO').Value;
        FProntuario_Paciente.ShowModal;
        FProntuario_Paciente.Free;
        QPesqProntuario.Refresh;
     end;

     if Column.Index = 7 Then
     begin
        //aqui vai o codigo do que fazer
        if not QPesqProntuario.IsEmpty then
        begin
           Application.CreateForm(TFAvisoExclusao, FAvisoExclusao);
           mensagem := 'Tem certeza que deseja excluir o prontu?rio: ' + QPesqProntuario.FieldByName('NOME_COMPLETO').AsString + '?';
           FAvisoExclusao.Label1.Caption := 'ATEN??O - Exclus?o de Prontu?rio';
           FAvisoExclusao.RichEdit1.Lines.Add(mensagem);
           FAvisoExclusao.Edit1.Text := QPesqProntuario.FindField('CODIGO').Value;
           FAvisoExclusao.ShowModal;
           FAvisoExclusao.Free;
        end;
     end;
     QPesqProntuario.Refresh;


end;

procedure TFPesquisaProntuario.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Column.Field = QPesqProntuariobtn_editar then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 1)
   end;

   if Column.Field = QPesqProntuariobtn_excluir then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 0);
   end;

end;

procedure TFPesquisaProntuario.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := $00FFBE7D;
end;

procedure TFPesquisaProntuario.FormShow(Sender: TObject);
begin
   QPesqProntuario.Open;
end;

procedure TFPesquisaProntuario.pnl_btnconfirmarClick(Sender: TObject);
begin
   Application.CreateForm(TFProntuario_Paciente, FProntuario_Paciente);
   FProntuario_Paciente.Edit1.Text := '';
   FProntuario_Paciente.ShowModal;
   FProntuario_Paciente.Free;
end;

procedure TFPesquisaProntuario.pnl_btnconfirmarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pnl_btnconfirmar.Color := clMenuHighlight;
end;

procedure TFPesquisaProntuario.pnl_btnconfirmarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := $00FFBE7D;
end;

procedure TFPesquisaProntuario.SpeedButton1Click(Sender: TObject);
var
  Tab: TTabSheet;
begin
  Tab := FPrincipal.PageControl1.ActivePage;
  if Tab <> nil then begin
    FPrincipal.PageControl1.ActivePageIndex := 0;
    Tab.Free;
  end;

end;

procedure TFPesquisaProntuario.SpeedButton2Click(Sender: TObject);
begin
   //faz a pesquisa do prontuario
   QPesqProntuario.Close;
   QPesqProntuario.SQL.Clear;
   QPesqProntuario.SQL.Add('SELECT * FROM CAD_PRONTUARIO');
   QPesqProntuario.SQL.Add('WHERE INATIVO IN ('+#39+'N'+#39+','+#39+'S'+#39+')');
   if ComboBox1.ItemIndex = 0 then
   begin
      QPesqProntuario.SQL.Add('AND NOME_COMPLETO LIKE'+#39+'%'+Edit1.Text+'%'+#39);
   end;

   if ComboBox1.ItemIndex = 1 then
   begin
      QPesqProntuario.SQL.Add('AND NOME_SOCIAL LIKE'+#39+'%'+Edit1.Text+'%'+#39);
   end;

   if ComboBox1.ItemIndex = 2 then
   begin
      QPesqProntuario.SQL.Add('AND NUM_DOCUMENTOS ='+#39+Edit1.Text+#39);
   end;

   if ComboBox1.ItemIndex = 3 then
   begin
      QPesqProntuario.SQL.Add('AND NUM_CNS ='+#39+Edit1.Text+#39);
   end;

   if ComboBox1.ItemIndex = 4 then
   begin
      QPesqProntuario.SQL.Add('AND COD_CARTEIRINHA ='+#39+Edit1.Text+#39);
   end;
   QPesqProntuario.SQL.Add('ORDER BY NOME_COMPLETO');
   QPesqProntuario.Open;
end;

end.
