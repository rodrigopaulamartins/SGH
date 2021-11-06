unit Form_PesquisaProcedimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFPesquisaProcedimento = class(TForm)
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
    QPesqProcedimento: TZQuery;
    DPesqProcedimento: TDataSource;
    QPesqProcedimentocodigo: TIntegerField;
    QPesqProcedimentoprc_codigo: TWideStringField;
    QPesqProcedimentoprc_datval: TDateField;
    QPesqProcedimentoprc_datiam: TDateField;
    QPesqProcedimentoprc_especi: TWideStringField;
    QPesqProcedimentoprc_espsim: TWideStringField;
    QPesqProcedimentoprc_durcir: TWideStringField;
    QPesqProcedimentoprc_cliaih: TIntegerField;
    QPesqProcedimentoprc_codsex: TIntegerField;
    QPesqProcedimentoprc_idadei: TIntegerField;
    QPesqProcedimentoprc_idadef: TIntegerField;
    QPesqProcedimentoprc_atomed: TIntegerField;
    QPesqProcedimentoprc_prctis: TIntegerField;
    QPesqProcedimentoprc_prtqtd: TIntegerField;
    QPesqProcedimentobtn_alterar: TWideStringField;
    QPesqProcedimentobtn_excluir: TWideStringField;
    QPesqProcedimentoinativo: TWideStringField;
    QPesqProcedimentoprc_tiptab: TIntegerField;
    QPesqProcedimentoprc_numreg: TWideStringField;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure pnl_btnconfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaProcedimento: TFPesquisaProcedimento;

implementation

{$R *.dfm}

uses DataModulo, Form_Principal, Form_InclusaoAlteracaoProcedimento,
  Form_AvisoExclusao;

procedure TFPesquisaProcedimento.DBGrid1CellClick(Column: TColumn);
var
  mensagem: string;
begin
     if Column.Index = 2 Then
     begin
        if QPesqProcedimento.IsEmpty then
        begin
           Application.MessageBox('Nenhum registro selecionado.','Alteração não permitida', MB_ICONWARNING+MB_OK);
           abort;
        end;
        //aqui vai o codigo do que fazer
        Application.CreateForm(TFInclusaoAlteracaoProcedimento, FInclusaoAlteracaoProcedimento);
        FInclusaoAlteracaoProcedimento.Edit1.Text := QPesqProcedimento.FindField('CODIGO').Value;
        FInclusaoAlteracaoProcedimento.ShowModal;
        FInclusaoAlteracaoProcedimento.Free;
        QPesqProcedimento.Refresh;

     end;

     if Column.Index = 3 Then
     begin
        //aqui vai o codigo do que fazer
        if not QPesqProcedimento.IsEmpty then
        begin
           Application.CreateForm(TFAvisoExclusao, FAvisoExclusao);
           mensagem := 'Tem certeza que deseja excluir o procedimento?' + QPesqProcedimento.FieldByName('PRC_ESPECI').AsString + '?';
           FAvisoExclusao.Label1.Caption := 'ATENÇÃO - Exclusão de Procedimento';
           FAvisoExclusao.RichEdit1.Lines.Add(mensagem);
           FAvisoExclusao.Edit1.Text := QPesqProcedimento.FindField('CODIGO').Value;
           FAvisoExclusao.ShowModal;
           FAvisoExclusao.Free;
        end;
     end;
     QPesqProcedimento.Refresh;
end;

procedure TFPesquisaProcedimento.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Column.Field = QPesqProcedimentobtn_alterar then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 1)
   end;

   if Column.Field = QPesqProcedimentobtn_excluir then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 0);
   end;

end;

procedure TFPesquisaProcedimento.pnl_btnconfirmarClick(Sender: TObject);
begin
   Application.CreateForm(TFInclusaoAlteracaoProcedimento, FInclusaoAlteracaoProcedimento);
   FInclusaoAlteracaoProcedimento.Edit1.Text := '';
   FInclusaoAlteracaoProcedimento.ShowModal;
   FInclusaoAlteracaoProcedimento.Free;
end;

procedure TFPesquisaProcedimento.SpeedButton1Click(Sender: TObject);
var
  Tab: TTabSheet;
begin
  Tab := FPrincipal.PageControl1.ActivePage;
  if Tab <> nil then begin
    FPrincipal.PageControl1.ActivePageIndex := 0;
    Tab.Free;
  end;
end;

procedure TFPesquisaProcedimento.SpeedButton2Click(Sender: TObject);
begin
   //faz a pesquisa dos dados
   QPesqProcedimento.Close;
   QPesqProcedimento.SQL.Clear;
   QPesqProcedimento.SQL.Add('SELECT * FROM ARQ_PROCEDIMENTO');
   QPesqProcedimento.SQL.Add('WHERE INATIVO = '+#39+'N'+#39);
   //faz a pesquisa pelo codigo da amb = 1
   if ComboBox1.ItemIndex = 0 then
   begin
      if Edit1.Text <> '' then
         QPesqProcedimento.SQL.Add('AND PRC_CODIGO LIKE '+#39+'%'+Edit1.Text+'%'+#39+'OR PRC_ESPECI LIKE '+#39+'%'+Edit1.Text+'%'+#39);
      QPesqProcedimento.SQL.Add('AND PRC_TIPTAB = '+#39+'1'+#39);

   end;
   //faz a pesquisa pelo codigo da CBHPM = 7
   if ComboBox1.ItemIndex = 1 then
   begin
      if Edit1.Text <> '' then
         QPesqProcedimento.SQL.Add('AND PRC_CODIGO LIKE '+#39+'%'+Edit1.Text+'%'+#39+'OR PRC_ESPECI LIKE '+#39+'%'+Edit1.Text+'%'+#39);
      QPesqProcedimento.SQL.Add('AND PRC_TIPTAB = '+#39+'7'+#39);

   end;

   //faz a pesquisa pelo codigo de Diarias e taxas = 4
   if ComboBox1.ItemIndex = 2 then
   begin
      if Edit1.Text <> '' then
         QPesqProcedimento.SQL.Add('AND PRC_CODIGO LIKE '+#39+'%'+Edit1.Text+'%'+#39+'OR PRC_ESPECI LIKE '+#39+'%'+Edit1.Text+'%'+#39);
      QPesqProcedimento.SQL.Add('AND PRC_TIPTAB = '+#39+'4'+#39);

   end;
   //faz a pesquisa pelo codigo de SUS-AIH = 3
   if ComboBox1.ItemIndex = 3 then
   begin
      if Edit1.Text <> '' then
         QPesqProcedimento.SQL.Add('AND PRC_CODIGO LIKE '+#39+'%'+Edit1.Text+'%'+#39+'OR PRC_ESPECI LIKE '+#39+'%'+Edit1.Text+'%'+#39);
      QPesqProcedimento.SQL.Add('AND PRC_TIPTAB = '+#39+'3'+#39);

   end;
   //faz a pesquisa pelo codigo de SIA-SUS = 2
   if ComboBox1.ItemIndex = 4 then
   begin
      if Edit1.Text <> '' then
         QPesqProcedimento.SQL.Add('AND PRC_CODIGO LIKE '+#39+'%'+Edit1.Text+'%'+#39+'OR PRC_ESPECI LIKE '+#39+'%'+Edit1.Text+'%'+#39);
      QPesqProcedimento.SQL.Add('AND PRC_TIPTAB = '+#39+'2'+#39);

   end;
   //faz a pesquisa pelo codigo de SUS-UNIFICADO = 8
   if ComboBox1.ItemIndex = 5 then
   begin
      if Edit1.Text <> '' then
         QPesqProcedimento.SQL.Add('AND PRC_CODIGO LIKE '+#39+'%'+Edit1.Text+'%'+#39+'OR PRC_ESPECI LIKE '+#39+'%'+Edit1.Text+'%'+#39);
      QPesqProcedimento.SQL.Add('AND PRC_TIPTAB = '+#39+'8'+#39);

   end;
   QPesqProcedimento.SQL.Add('ORDER BY PRC_ESPECI');
   QPesqProcedimento.Open;
   //teste de atualizacao de tabelas
end;

end.
