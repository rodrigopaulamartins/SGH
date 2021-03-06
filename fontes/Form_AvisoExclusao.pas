unit Form_AvisoExclusao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Imaging.pngimage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFAvisoExclusao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel1: TBevel;
    Panel2: TPanel;
    Image1: TImage;
    Label2: TLabel;
    RichEdit1: TRichEdit;
    pnl_btnconfirmar: TPanel;
    pnl_btncancelar: TPanel;
    QDelete: TZQuery;
    Edit1: TEdit;
    procedure pnl_btnconfirmarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnl_btncancelarClick(Sender: TObject);
    procedure pnl_btnconfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAvisoExclusao: TFAvisoExclusao;

implementation

{$R *.dfm}

uses Form_CadastroUsuarios, DataModulo;

procedure TFAvisoExclusao.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   pnl_btnconfirmar.Color := $0052A400;
end;

procedure TFAvisoExclusao.Panel2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   pnl_btnconfirmar.Color := $0052A400;
end;

procedure TFAvisoExclusao.pnl_btncancelarClick(Sender: TObject);
begin
   //fecha o formulario
   close;
end;

procedure TFAvisoExclusao.pnl_btnconfirmarClick(Sender: TObject);
begin
   if Label1.Caption = 'ATEN??O - Exclus?o de Usu?rio' then
   begin
      QDelete.Close;
      QDelete.SQL.Clear;
      QDelete.SQL.Add('DELETE FROM CAD_USUARIO WHERE CODIGO = '+#39+Edit1.Text+#39);
      QDelete.ExecSQL;
   end;

   if Label1.Caption = 'ATEN??O - Exclus?o de Prontu?rio' then
   begin
      QDelete.Close;
      QDelete.SQL.Clear;
      QDelete.SQL.Add('DELETE FROM CAD_PRONTUARIO WHERE CODIGO = '+#39+Edit1.Text+#39);
      QDelete.ExecSQL;
   end;
   //
   if Label1.Caption = 'ATEN??O - Exclus?o de Cliente/Fornecedor' then
   begin
      QDelete.Close;
      QDelete.SQL.Clear;
      QDelete.SQL.Add('DELETE FROM CAD_CLIENTES WHERE CODIGO = '+#39+Edit1.Text+#39);
      QDelete.ExecSQL;
   end;

   if Label1.Caption = 'ATEN??O - Exclus?o da Especialidade' then
   begin
      QDelete.Close;
      QDelete.SQL.Clear;
      QDelete.SQL.Add('DELETE FROM CAD_ESPEC_MED WHERE CODIGO = '+#39+Edit1.Text+#39);
      QDelete.ExecSQL;
   end;

   if Label1.Caption = 'ATEN??O - Exclus?o de Prestador de Servi?os' then
   begin
      QDelete.Close;
      QDelete.SQL.Clear;
      QDelete.SQL.Add('DELETE FROM CAD_PRESTADORSERVICO WHERE CODIGO = '+#39+Edit1.Text+#39);
      QDelete.ExecSQL;
   end;

   if Label1.Caption = 'ATEN??O - Exclus?o da Credenciamento' then
   begin
      QDelete.Close;
      QDelete.SQL.Clear;
      QDelete.SQL.Add('DELETE FROM CAD_CRED_MED WHERE CODIGO = '+#39+Edit1.Text+#39);
      QDelete.ExecSQL;
   end;

   if Label1.Caption = 'ATEN??O - Exclus?o de conv?nio' then
   begin
      QDelete.Close;
      QDelete.SQL.Clear;
      QDelete.SQL.Add('DELETE FROM CAD_CONVENIO WHERE CODIGO = '+#39+Edit1.Text+#39);
      QDelete.ExecSQL;
   end;

   if Label1.Caption = 'ATEN??O - Exclus?o porte procedimento' then
   begin
      QDelete.Close;
      QDelete.SQL.Clear;
      QDelete.SQL.Add('DELETE FROM CAD_CONVENIO_PORTEPRC WHERE CODIGO = '+#39+Edit1.Text+#39);
      QDelete.ExecSQL;
   end;

   if Label1.Caption = 'ATEN??O - Exclus?o categoria de atendimento' then
   begin
      QDelete.Close;
      QDelete.SQL.Clear;
      QDelete.SQL.Add('DELETE FROM CAD_CONVENIO_CATEGORIA WHERE CODIGO = '+#39+Edit1.Text+#39);
      QDelete.ExecSQL;
   end;

   if Label1.Caption = 'ATEN??O - Exclus?o de Diagn?stico CID-10' then
   begin
      QDelete.Close;
      QDelete.SQL.Clear;
      QDelete.SQL.Add('DELETE FROM ARQ_DIAGNOSTICO WHERE CODIGO = '+#39+Edit1.Text+#39);
      QDelete.ExecSQL;
   end;

   if Label1.Caption = 'ATEN??O - Exclus?o de ato m?dico' then
   begin
      QDelete.Close;
      QDelete.SQL.Clear;
      QDelete.SQL.Add('DELETE FROM ARQ_ATOMEDICO WHERE CODIGO = '+#39+Edit1.Text+#39);
      QDelete.ExecSQL;
   end;

   if Label1.Caption = 'ATEN??O - Exclus?o de especialidade m?dica' then
   begin
      QDelete.Close;
      QDelete.SQL.Clear;
      QDelete.SQL.Add('DELETE FROM ARQ_ESPECIALIDADE WHERE CODIGO = '+#39+Edit1.Text+#39);
      QDelete.ExecSQL;
   end;

   if Label1.Caption = 'ATEN??O - Exclus?o de Procedimento' then
   begin
      QDelete.Close;
      QDelete.SQL.Clear;
      QDelete.SQL.Add('DELETE FROM ARQ_PROCEDIMENTO WHERE CODIGO = '+#39+Edit1.Text+#39);
      QDelete.ExecSQL;
   end;
   close;
end;

procedure TFAvisoExclusao.pnl_btnconfirmarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := $00408000;

end;

end.
