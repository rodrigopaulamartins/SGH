unit Form_CadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFUsuarios = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    ImageList1: TImageList;
    pnl_fundo: TPanel;
    DBGrid1: TDBGrid;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    DLogin: TDataSource;
    ImageList2: TImageList;
    QLogin: TZQuery;
    QLogincodigo: TIntegerField;
    QLoginnome_completo: TWideStringField;
    QLoginlogin_acesso: TWideStringField;
    QLogindata_inclusao: TDateField;
    QLogindata_exclusao: TDateField;
    QLoginativo: TWideStringField;
    QLoginsenha_acesso: TWideStringField;
    QLoginbtn_alterar: TWideStringField;
    QLoginbtn_excluir: TWideStringField;
    pnl_btnconfirmar: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnl_btnconfirmarClick(Sender: TObject);
    procedure pnl_btnconfirmarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnl_fundoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuarios: TFUsuarios;


implementation

{$R *.dfm}

uses Form_Principal, DataModulo, Form_AvisoExclusao,
  Form_InclusaoAlteracaoUsuario;

procedure TFUsuarios.DBGrid1CellClick(Column: TColumn);
var
  mensagem: string;
begin
    if QLogin.IsEmpty then
    begin
       Application.MessageBox('Nenhum registro selecionado.','Altera??o n?o permitida', MB_ICONWARNING+MB_OK);
       abort;
    end;

     if Column.Index = 6 Then
     begin
        //aqui vai o codigo do que fazer
        Application.CreateForm(TFInclusaoAlteracaoUsuario, FInclusaoAlteracaoUsuario);
        FInclusaoAlteracaoUsuario.Edit1.Text := QLogin.FindField('CODIGO').Value;
        FInclusaoAlteracaoUsuario.ShowModal;
        FInclusaoAlteracaoUsuario.Free;
        QLogin.Refresh;
     end;

     if Column.Index = 7 Then
     begin
        //aqui vai o codigo do que fazer
        if not QLogin.IsEmpty then
        begin
           Application.CreateForm(TFAvisoExclusao, FAvisoExclusao);
           mensagem := 'Tem certeza que deseja excluir o usu?rio: ' + QLogin.FieldByName('NOME_COMPLETO').AsString + '?';
           FAvisoExclusao.Label1.Caption := 'ATEN??O - Exclus?o de Usu?rio';
           FAvisoExclusao.RichEdit1.Lines.Add(mensagem);
           FAvisoExclusao.Edit1.Text := QLogin.FindField('CODIGO').Value;
           FAvisoExclusao.ShowModal;
           FAvisoExclusao.Free;
        end;
     end;
     QLogin.Refresh;
end;

procedure TFUsuarios.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Column.Field = QLoginbtn_alterar then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 1)
   end;

   if Column.Field = QLoginbtn_excluir then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 0);
   end;
end;

procedure TFUsuarios.FormShow(Sender: TObject);
begin
   QLogin.Open;
end;

procedure TFUsuarios.pnl_btnconfirmarClick(Sender: TObject);
begin
   Application.CreateForm(TFInclusaoAlteracaoUsuario, FInclusaoAlteracaoUsuario);
   FInclusaoAlteracaoUsuario.Edit1.Text := '';
   FInclusaoAlteracaoUsuario.ShowModal;
   FInclusaoAlteracaoUsuario.Free;
end;

procedure TFUsuarios.pnl_btnconfirmarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := clMenuHighlight;
end;

procedure TFUsuarios.pnl_fundoMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   pnl_btnconfirmar.Color := $00FFBE7D;
end;

procedure TFUsuarios.SpeedButton1Click(Sender: TObject);
var
  Tab: TTabSheet;
begin
  Tab := FPrincipal.PageControl1.ActivePage;
  if Tab <> nil then begin
    FPrincipal.PageControl1.ActivePageIndex := 0;
    Tab.Free;
  end;
end;

procedure TFUsuarios.SpeedButton2Click(Sender: TObject);
begin
   //faz a pesquisa pelo nome do usuario
   QLogin.Close;
   QLogin.SQL.Clear;
   QLogin.SQL.Add('SELECT * FROM CAD_USUARIO WHERE NOME_COMPLETO LIKE '+#39+'%'+Edit1.Text+'%'+#39);
   QLogin.Open;
end;

end.
