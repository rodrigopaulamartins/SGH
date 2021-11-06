unit Form_CadastroPrestadorServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFPesquisaPrestadorServico = class(TForm)
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
    QPesqPrestador: TZQuery;
    DPesqPrestador: TDataSource;
    QPesqPrestadorcodigo: TIntegerField;
    QPesqPrestadoridprestador: TIntegerField;
    QPesqPrestadoridtpprestador: TIntegerField;
    QPesqPrestadornum_cns: TWideStringField;
    QPesqPrestadornum_cnes: TWideStringField;
    QPesqPrestadoridtpconselho: TIntegerField;
    QPesqPrestadoruf_conselho: TWideStringField;
    QPesqPrestadornum_conselho: TWideStringField;
    QPesqPrestadorRAZAO_SOCIAL: TWideStringField;
    QPesqPrestadorbtn_alterar: TWideStringField;
    QPesqPrestadorbtn_excluir: TWideStringField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure pnl_btnconfirmarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaPrestadorServico: TFPesquisaPrestadorServico;

implementation

{$R *.dfm}

uses DataModulo, Form_Principal, Form_InclusaoAlteracaoPrestador,
  Form_AvisoExclusao;

procedure TFPesquisaPrestadorServico.DBGrid1CellClick(Column: TColumn);
var
  mensagem: string;
begin
     if Column.Index = 6 Then
     begin
        if QPesqPrestador.IsEmpty then
        begin
           Application.MessageBox('Nenhum registro selecionado.','Alteração não permitida', MB_ICONWARNING+MB_OK);
           abort;
        end;
        //aqui vai o codigo do que fazer
        Application.CreateForm(TFInclusaoAlteracaoPrestador, FInclusaoAlteracaoPrestador);
        FInclusaoAlteracaoPrestador.Edit1.Text := QPesqPrestador.FindField('CODIGO').Value;
        FInclusaoAlteracaoPrestador.SpeedButton2.Enabled := false;
        FInclusaoAlteracaoPrestador.ShowModal;
        FInclusaoAlteracaoPrestador.Free;
        FInclusaoAlteracaoPrestador.Refresh;
     end;

     if Column.Index = 7 Then
     begin
        //aqui vai o codigo do que fazer
        if not QPesqPrestador.IsEmpty then
        begin
           Application.CreateForm(TFAvisoExclusao, FAvisoExclusao);
           mensagem := 'Tem certeza que deseja excluir o prestador de serviço? ' + QPesqPrestador.FieldByName('RAZAO_SOCIAL').AsString + '?';
           FAvisoExclusao.Label1.Caption := 'ATENÇÃO - Exclusão de Prestador de Serviços';
           FAvisoExclusao.RichEdit1.Lines.Add(mensagem);
           FAvisoExclusao.Edit1.Text := QPesqPrestador.FindField('CODIGO').Value;
           FAvisoExclusao.ShowModal;
           FAvisoExclusao.Free;
        end;
     end;
     QPesqPrestador.Refresh;

end;

procedure TFPesquisaPrestadorServico.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Column.Field = QPesqPrestadorbtn_alterar then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 1)
   end;

   if Column.Field = QPesqPrestadorbtn_excluir then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 0);
   end;
end;

procedure TFPesquisaPrestadorServico.pnl_btnconfirmarClick(Sender: TObject);
begin
   Application.CreateForm(TFInclusaoAlteracaoPrestador,FInclusaoAlteracaoPrestador);
   FInclusaoAlteracaoPrestador.Edit1.Text := '';
   FInclusaoAlteracaoPrestador.SpeedButton2.Enabled := true;
   FInclusaoAlteracaoPrestador.ShowModal;
   FInclusaoAlteracaoPrestador.Free;
end;

procedure TFPesquisaPrestadorServico.SpeedButton1Click(Sender: TObject);
var
  Tab: TTabSheet;
begin
  Tab := FPrincipal.PageControl1.ActivePage;
  if Tab <> nil then begin
    FPrincipal.PageControl1.ActivePageIndex := 0;
    Tab.Free;
  end;
end;

procedure TFPesquisaPrestadorServico.SpeedButton2Click(Sender: TObject);
begin
   QPesqPrestador.Close;
   QPesqPrestador.SQL.Clear;
   QPesqPrestador.SQL.Add('SELECT A.*, B.RAZAO_SOCIAL');
   QPesqPrestador.SQL.Add('FROM CAD_PRESTADORSERVICO A');
   QPesqPrestador.SQL.Add('INNER JOIN CAD_CLIENTES B ON (A.IDPRESTADOR = B.CODIGO)');
   QPesqPrestador.SQL.Add('WHERE A.INATIVO IN ('+#39+'N'+#39+','+#39+'S'+#39+')');
   QPesqPrestador.SQL.Add('AND B.RAZAO_SOCIAL LIKE '+#39+'%'+Edit1.Text+'%'+#39);
   QPesqPrestador.SQL.Add('ORDER BY B.RAZAO_SOCIAL');
   QPesqPrestador.Open;
end;

end.
