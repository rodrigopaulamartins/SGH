unit Form_PesquisaCadastroConvenio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFPesquisaCadastroConvenio = class(TForm)
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
    QPesqConvenio: TZQuery;
    DPesqConvenio: TDataSource;
    QPesqConvenioCODIGO: TIntegerField;
    QPesqConvenioBTN_ALTERAR: TWideStringField;
    QPesqConvenioBTN_EXCLUIR: TWideStringField;
    QPesqConvenioRAZAO_SOCIAL: TWideStringField;
    QPesqConvenioINATIVO: TWideStringField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure pnl_btnconfirmarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnl_btnconfirmarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure pnl_btnconfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaCadastroConvenio: TFPesquisaCadastroConvenio;

implementation

{$R *.dfm}

uses DataModulo, Form_Principal, Form_AvisoExclusao,
  Form_InclusaoAlteracaoConvenio;

procedure TFPesquisaCadastroConvenio.DBGrid1CellClick(Column: TColumn);
var
  mensagem: string;
begin
     if Column.Index = 2 Then
     begin
        if QPesqConvenio.IsEmpty then
        begin
           Application.MessageBox('Nenhum registro selecionado.','Altera??o n?o permitida', MB_ICONWARNING+MB_OK);
           abort;
        end;
        //aqui vai o codigo do que fazer
        Application.CreateForm(TFInclusaoAlteracaoConvenio, FInclusaoAlteracaoConvenio);
        FInclusaoAlteracaoConvenio.Edit1.Text := QPesqConvenio.FindField('CODIGO').Value;
        FInclusaoAlteracaoConvenio.SpeedButton2.Enabled := false;
        FInclusaoAlteracaoConvenio.ShowModal;
        FInclusaoAlteracaoConvenio.Free;
        QPesqConvenio.Refresh;
     end;

     if Column.Index = 3 Then
     begin
        //aqui vai o codigo do que fazer
        if not QPesqConvenio.IsEmpty then
        begin
           Application.CreateForm(TFAvisoExclusao, FAvisoExclusao);
           mensagem := 'Tem certeza que deseja excluir o conv?nio? ' + QPesqConvenio.FieldByName('NOME_COMPLETO').AsString + '?';
           FAvisoExclusao.Label1.Caption := 'ATEN??O - Exclus?o de conv?nio';
           FAvisoExclusao.RichEdit1.Lines.Add(mensagem);
           FAvisoExclusao.Edit1.Text := QPesqConvenio.FindField('CODIGO').Value;
           FAvisoExclusao.ShowModal;
           FAvisoExclusao.Free;
        end;
     end;
     QPesqConvenio.Refresh;
end;

procedure TFPesquisaCadastroConvenio.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Column.Field = QPesqConvenioBTN_ALTERAR then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 1)
   end;

   if Column.Field = QPesqConvenioBTN_EXCLUIR then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 0);
   end;

end;

procedure TFPesquisaCadastroConvenio.DBGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := $00FFBE7D;
end;

procedure TFPesquisaCadastroConvenio.FormShow(Sender: TObject);
begin
   QPesqConvenio.Open;
end;

procedure TFPesquisaCadastroConvenio.pnl_btnconfirmarClick(Sender: TObject);
begin
   Application.CreateForm(TFInclusaoAlteracaoConvenio, FInclusaoAlteracaoConvenio);
   FInclusaoAlteracaoConvenio.Edit1.Text := '';
   FInclusaoAlteracaoConvenio.ShowModal;
   FInclusaoAlteracaoConvenio.Free;
end;

procedure TFPesquisaCadastroConvenio.pnl_btnconfirmarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  pnl_btnconfirmar.Color := clMenuHighlight;
end;

procedure TFPesquisaCadastroConvenio.pnl_btnconfirmarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := $00FFBE7D;
end;

procedure TFPesquisaCadastroConvenio.SpeedButton1Click(Sender: TObject);
var
  Tab: TTabSheet;
begin
  Tab := FPrincipal.PageControl1.ActivePage;
  if Tab <> nil then begin
    FPrincipal.PageControl1.ActivePageIndex := 0;
    Tab.Free;
  end;

end;

procedure TFPesquisaCadastroConvenio.SpeedButton2Click(Sender: TObject);
begin
   QPesqConvenio.Close;
   QPesqConvenio.SQL.Clear;
   QPesqConvenio.SQL.Add('SELECT A.CODIGO, A.BTN_ALTERAR, A.INATIVO, A.BTN_EXCLUIR, B.RAZAO_SOCIAL');
   QPesqConvenio.SQL.Add('FROM CAD_CONVENIO A');
   QPesqConvenio.SQL.Add('INNER JOIN CAD_CLIENTES B ON (A.IDPRESTADOR = B.CODIGO)');
   QPesqConvenio.SQL.Add('WHERE A.RAZAO_SOCIAL LIKE'+#39+'%'+Edit1.Text+'%'+#39);
   QPesqConvenio.SQL.Add('ORDER BY A.RAZAO_SOCIAL');
   QPesqConvenio.Open;
end;

end.
