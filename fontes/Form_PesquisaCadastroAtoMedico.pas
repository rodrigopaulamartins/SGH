unit Form_PesquisaCadastroAtoMedico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFPesqAtoMedico = class(TForm)
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
    DPesqAtoMedico: TDataSource;
    QPesqAtoMedico: TZQuery;
    QPesqAtoMedicocodigo: TIntegerField;
    QPesqAtoMedicodescricao: TWideStringField;
    QPesqAtoMedicoidpagto: TIntegerField;
    QPesqAtoMedicotb_percentual: TFloatField;
    QPesqAtoMedicoacres_30: TWideStringField;
    QPesqAtoMedicocod_tiss3: TWideStringField;
    QPesqAtoMedicobtn_alterar: TWideStringField;
    QPesqAtoMedicobtn_excluir: TWideStringField;
    procedure pnl_btnconfirmarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnl_btnconfirmarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure pnl_btnconfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesqAtoMedico: TFPesqAtoMedico;

implementation

{$R *.dfm}

uses DataModulo, Form_Principal, Form_InclusaAlteracaoAtoMedico,
  Form_AvisoExclusao;

procedure TFPesqAtoMedico.DBGrid1CellClick(Column: TColumn);
var
  mensagem: string;
begin
     if Column.Index = 2 Then
     begin
        if QPesqAtoMedico.IsEmpty then
        begin
           Application.MessageBox('Nenhum registro selecionado.','Alteração não permitida', MB_ICONWARNING+MB_OK);
           abort;
        end;
        //aqui vai o codigo do que fazer
        Application.CreateForm(TFInclusaoAlteracaoAtoMedico, FInclusaoAlteracaoAtoMedico);
        FInclusaoAlteracaoAtoMedico.Edit1.Text := QPesqAtoMedico.FindField('CODIGO').Value;
        FInclusaoAlteracaoAtoMedico.ShowModal;
        FInclusaoAlteracaoAtoMedico.Free;
        QPesqAtoMedico.Refresh;
     end;

     if Column.Index = 3 Then
     begin
        //aqui vai o codigo do que fazer
        if not QPesqAtoMedico.IsEmpty then
        begin
           Application.CreateForm(TFAvisoExclusao, FAvisoExclusao);
           mensagem := 'Tem certeza que deseja excluir o ato médico? ' + QPesqAtoMedico.FieldByName('NOME_COMPLETO').AsString + '?';
           FAvisoExclusao.Label1.Caption := 'ATENÇÃO - Exclusão de ato médico';
           FAvisoExclusao.RichEdit1.Lines.Add(mensagem);
           FAvisoExclusao.Edit1.Text := QPesqAtoMedico.FindField('CODIGO').Value;
           FAvisoExclusao.ShowModal;
           FAvisoExclusao.Free;
        end;
     end;
     QPesqAtoMedico.Refresh;

end;

procedure TFPesqAtoMedico.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Column.Field = QPesqAtoMedicobtn_alterar then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 1)
   end;

   if Column.Field = QPesqAtoMedicoBTN_EXCLUIR then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 0);
   end;
end;

procedure TFPesqAtoMedico.pnl_btnconfirmarClick(Sender: TObject);
begin
   Application.CreateForm(TFInclusaoAlteracaoAtoMedico, FInclusaoAlteracaoAtoMedico);
   FInclusaoAlteracaoAtoMedico.Edit1.Text := '';
   FInclusaoAlteracaoAtoMedico.ShowModal;
   FInclusaoAlteracaoAtoMedico.Free;

end;

procedure TFPesqAtoMedico.pnl_btnconfirmarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pnl_btnconfirmar.Color := clMenuHighlight;
end;

procedure TFPesqAtoMedico.pnl_btnconfirmarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := $00FFBE7D;
end;

procedure TFPesqAtoMedico.SpeedButton1Click(Sender: TObject);
var
  Tab: TTabSheet;
begin
  Tab := FPrincipal.PageControl1.ActivePage;
  if Tab <> nil then begin
    FPrincipal.PageControl1.ActivePageIndex := 0;
    Tab.Free;
  end;

end;

procedure TFPesqAtoMedico.SpeedButton2Click(Sender: TObject);
begin
   QPesqAtoMedico.Close;
   QPesqAtoMedico.SQL.Clear;
   QPesqAtoMedico.SQL.Add('SELECT * FROM ARQ_ATOMEDICO');
   QPesqAtoMedico.SQL.Add('WHERE DESCRICAO LIKE '+#39+'%'+Edit1.Text+'%'+#39);
   QPesqAtoMedico.Open;
end;

end.
