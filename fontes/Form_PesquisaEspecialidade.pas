unit Form_PesquisaEspecialidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFPesquisaEspecialidade = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    pnl_btnconfirmar: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DPesqEspecialidade: TDataSource;
    QPesqEspecialidade: TZQuery;
    QPesqEspecialidadecodigo: TIntegerField;
    QPesqEspecialidadedescricao: TWideStringField;
    QPesqEspecialidadecod_cbo: TWideStringField;
    QPesqEspecialidadecod_cbosus: TWideStringField;
    QPesqEspecialidadebtn_alterar: TWideStringField;
    QPesqEspecialidadebtn_excluir: TWideStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure pnl_btnconfirmarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnl_btnconfirmarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
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
  FPesquisaEspecialidade: TFPesquisaEspecialidade;

implementation

{$R *.dfm}

uses Form_Principal, DataModulo, Form_InclusaoAlteracaoEspecialidade,
  Form_AvisoExclusao, Form_InclusaAlteracaoEspecMed;

procedure TFPesquisaEspecialidade.DBGrid1CellClick(Column: TColumn);
var
  mensagem: string;
begin
     if Column.Index = 4 Then
     begin
        if QPesqEspecialidade.IsEmpty then
        begin
           Application.MessageBox('Nenhum registro selecionado.','Altera??o n?o permitida', MB_ICONWARNING+MB_OK);
           abort;
        end;
        //aqui vai o codigo do que fazer
        Application.CreateForm(TFInclusaoAlteracaoEspecialidade, FInclusaoAlteracaoEspecialidade);
        FInclusaoAlteracaoEspecialidade.Edit1.Text := QPesqEspecialidade.FindField('CODIGO').Value;;
        FInclusaoAlteracaoEspecialidade.ShowModal;
        FInclusaoAlteracaoEspecialidade.Free;
        FInclusaoAlteracaoEspecialidade.Refresh;
     end;

     if Column.Index = 5 Then
     begin
        //aqui vai o codigo do que fazer
        if not QPesqEspecialidade.IsEmpty then
        begin
           Application.CreateForm(TFAvisoExclusao, FAvisoExclusao);
           mensagem := 'Tem certeza que deseja excluir a especialidade? ' + QPesqEspecialidade.FieldByName('NOME_COMPLETO').AsString + '?';
           FAvisoExclusao.Label1.Caption := 'ATEN??O - Exclus?o de especialidade m?dica';
           FAvisoExclusao.RichEdit1.Lines.Add(mensagem);
           FAvisoExclusao.Edit1.Text := QPesqEspecialidade.FindField('CODIGO').Value;
           FAvisoExclusao.ShowModal;
           FAvisoExclusao.Free;
        end;
     end;
     QPesqEspecialidade.Refresh;
end;

procedure TFPesquisaEspecialidade.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Column.Field = QPesqEspecialidadebtn_alterar then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 1)
   end;

   if Column.Field = QPesqEspecialidadebtn_excluir then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 0);
   end;
end;

procedure TFPesquisaEspecialidade.pnl_btnconfirmarClick(Sender: TObject);
begin
   Application.CreateForm(TFInclusaoAlteracaoEspecMed, FInclusaoAlteracaoEspecMed);
   FInclusaoAlteracaoEspecMed.Edit1.Text := '';
   FInclusaoAlteracaoEspecMed.ShowModal;
   FInclusaoAlteracaoEspecMed.Free;

end;

procedure TFPesquisaEspecialidade.pnl_btnconfirmarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pnl_btnconfirmar.Color := clMenuHighlight;
end;

procedure TFPesquisaEspecialidade.pnl_btnconfirmarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := $00FFBE7D;
end;

procedure TFPesquisaEspecialidade.SpeedButton1Click(Sender: TObject);
var
  Tab: TTabSheet;
begin
  Tab := FPrincipal.PageControl1.ActivePage;
  if Tab <> nil then begin
    FPrincipal.PageControl1.ActivePageIndex := 0;
    Tab.Free;
  end;
end;

procedure TFPesquisaEspecialidade.SpeedButton2Click(Sender: TObject);
begin
   //
   QPesqEspecialidade.Close;
   QPesqEspecialidade.SQL.Clear;
   QPesqEspecialidade.SQL.Add('SELECT * FROM ARQ_ESPECIALIDADE');
   QPesqEspecialidade.SQL.Add('WHERE DESCRICAO LIKE '+#39'%'+Edit1.Text+'%'+#39);
   QPesqEspecialidade.SQL.Add('ORDER BY DESCRICAO');
   QPesqEspecialidade.Open;
end;

end.
