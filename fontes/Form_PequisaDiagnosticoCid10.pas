unit Form_PequisaDiagnosticoCid10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFPesquisaDiagnostico = class(TForm)
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
    QPesquisaCID10: TZQuery;
    DPesquisaCID10: TDataSource;
    QPesquisaCID10codigo: TIntegerField;
    QPesquisaCID10cod_cid: TWideStringField;
    QPesquisaCID10doenca_controlada: TWideStringField;
    QPesquisaCID10grupo_cid: TWideStringField;
    QPesquisaCID10inativo: TWideStringField;
    QPesquisaCID10cid_sexo: TIntegerField;
    QPesquisaCID10cid_subcat: TWideStringField;
    QPesquisaCID10descricao: TWideStringField;
    QPesquisaCID10btn_alterar: TWideStringField;
    QPesquisaCID10btn_excluir: TWideStringField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnl_btnconfirmarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnl_btnconfirmarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure pnl_btnconfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaDiagnostico: TFPesquisaDiagnostico;

implementation

{$R *.dfm}

uses DataModulo, Form_Principal, Form_InclusaAlteracaoDiagnostico,
  Form_AvisoExclusao;

procedure TFPesquisaDiagnostico.DBGrid1CellClick(Column: TColumn);
var
  mensagem: string;
begin
     if Column.Index = 3 Then
     begin
        if QPesquisaCID10.IsEmpty then
        begin
           Application.MessageBox('Nenhum registro selecionado.','Alteração não permitida', MB_ICONWARNING+MB_OK);
           abort;
        end;
        //aqui vai o codigo do que fazer
        Application.CreateForm(TFInclusaoAlteracaoDiagnostico, FInclusaoAlteracaoDiagnostico);
        FInclusaoAlteracaoDiagnostico.Edit1.Text := QPesquisaCID10.FindField('CODIGO').Value;
        FInclusaoAlteracaoDiagnostico.ShowModal;
        FInclusaoAlteracaoDiagnostico.Free;
        QPesquisaCID10.Refresh;
     end;

     if Column.Index = 4 Then
     begin
        //aqui vai o codigo do que fazer
        if not QPesquisaCID10.IsEmpty then
        begin
           Application.CreateForm(TFAvisoExclusao, FAvisoExclusao);
           mensagem := 'Tem certeza que deseja excluir o diagnóstico? ' + QPesquisaCID10.FieldByName('NOME_COMPLETO').AsString + '?';
           FAvisoExclusao.Label1.Caption := 'ATENÇÃO - Exclusão de Diagnóstico CID-10';
           FAvisoExclusao.RichEdit1.Lines.Add(mensagem);
           FAvisoExclusao.Edit1.Text := QPesquisaCID10.FindField('CODIGO').Value;
           FAvisoExclusao.ShowModal;
           FAvisoExclusao.Free;
        end;
     end;
     QPesquisaCID10.Refresh;

end;

procedure TFPesquisaDiagnostico.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Column.Field = QPesquisaCID10btn_alterar then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 1)
   end;

   if Column.Field = QPesquisaCID10btn_excluir then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 0);
   end;

end;

procedure TFPesquisaDiagnostico.DBGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := $00FFBE7D;
end;

procedure TFPesquisaDiagnostico.pnl_btnconfirmarClick(Sender: TObject);
begin
   Application.CreateForm(TFInclusaoAlteracaoDiagnostico, FInclusaoAlteracaoDiagnostico);
   FInclusaoAlteracaoDiagnostico.Edit1.Text := '';
   FInclusaoAlteracaoDiagnostico.ShowModal;
   FInclusaoAlteracaoDiagnostico.Free;

end;

procedure TFPesquisaDiagnostico.pnl_btnconfirmarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pnl_btnconfirmar.Color := clMenuHighlight;
end;

procedure TFPesquisaDiagnostico.pnl_btnconfirmarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := $00FFBE7D;
end;

procedure TFPesquisaDiagnostico.SpeedButton1Click(Sender: TObject);
var
  Tab: TTabSheet;
begin
  Tab := FPrincipal.PageControl1.ActivePage;
  if Tab <> nil then begin
    FPrincipal.PageControl1.ActivePageIndex := 0;
    Tab.Free;
  end;
end;

procedure TFPesquisaDiagnostico.SpeedButton2Click(Sender: TObject);
begin
   //faz a pesquisa do prontuario
   QPesquisaCID10.Close;
   QPesquisaCID10.SQL.Clear;
   QPesquisaCID10.SQL.Add('SELECT * FROM ARQ_DIAGNOSTICO');
   QPesquisaCID10.SQL.Add('WHERE INATIVO ='+#39+'N'+#39);
   if ComboBox1.ItemIndex = 0 then
   begin
      QPesquisaCID10.SQL.Add('AND DESCRICAO LIKE'+#39+'%'+Edit1.Text+'%'+#39);
   end;

   if ComboBox1.ItemIndex = 1 then
   begin
      QPesquisaCID10.SQL.Add('AND COD_CID LIKE'+#39+'%'+Edit1.Text+'%'+#39);
   end;

   if ComboBox1.ItemIndex = 2 then
   begin
      QPesquisaCID10.SQL.Add('AND GRUPO_CID LIKE '+#39+'%'+Edit1.Text+'%'+#39);
   end;

   QPesquisaCID10.SQL.Add('ORDER BY DESCRICAO');
   QPesquisaCID10.Open;
end;

end.
