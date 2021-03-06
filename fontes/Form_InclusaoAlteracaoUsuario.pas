unit Form_InclusaoAlteracaoUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.ComCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFInclusaoAlteracaoUsuario = class(TForm)
    ImageList1: TImageList;
    pnl_topo: TPanel;
    Label1: TLabel;
    btn_fechar: TSpeedButton;
    Bevel1: TBevel;
    pnl_btnconfirmar: TPanel;
    pnl_btncancelar: TPanel;
    Panel4: TPanel;
    DUsuario: TDataSource;
    QUsuario: TZQuery;
    QUsuariocodigo: TIntegerField;
    QUsuarionome_completo: TWideStringField;
    QUsuariologin_acesso: TWideStringField;
    QUsuariodata_inclusao: TDateField;
    QUsuariodata_exclusao: TDateField;
    QUsuarioativo: TWideStringField;
    QUsuariosenha_acesso: TWideStringField;
    QUsuariobtn_alterar: TWideStringField;
    QUsuariobtn_excluir: TWideStringField;
    QUsuarioemail: TWideStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Edit1: TEdit;
    procedure btn_fecharClick(Sender: TObject);
    procedure pnl_btnconfirmarClick(Sender: TObject);
    procedure pnl_btncancelarClick(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure pnl_btnconfirmarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInclusaoAlteracaoUsuario: TFInclusaoAlteracaoUsuario;

implementation

{$R *.dfm}

uses DataModulo, Form_CadastroUsuarios, FromAvisoConfirmacao, Form_Principal;

procedure TFInclusaoAlteracaoUsuario.btn_fecharClick(Sender: TObject);
begin
   close;
end;

procedure TFInclusaoAlteracaoUsuario.DBEdit2Enter(Sender: TObject);
begin
   DBEdit2.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoUsuario.DBEdit2Exit(Sender: TObject);
begin
   DBEdit2.Color := clWindow;
end;

procedure TFInclusaoAlteracaoUsuario.DBEdit3Enter(Sender: TObject);
begin
   DBEdit3.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoUsuario.DBEdit3Exit(Sender: TObject);
begin
   DBEdit3.Color := clWindow;
end;

procedure TFInclusaoAlteracaoUsuario.DBEdit4Enter(Sender: TObject);
begin
   DBEdit4.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoUsuario.DBEdit4Exit(Sender: TObject);
begin
   DBEdit4.Color := clWindow;
end;

procedure TFInclusaoAlteracaoUsuario.DBEdit5Enter(Sender: TObject);
begin
   DBEdit5.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoUsuario.DBEdit5Exit(Sender: TObject);
begin
   DBEdit5.Color := clWindow;
end;

procedure TFInclusaoAlteracaoUsuario.DBEdit6Enter(Sender: TObject);
begin
   DBEdit6.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoUsuario.DBEdit6Exit(Sender: TObject);
begin
   DBEdit6.Color := clWindow;

end;

procedure TFInclusaoAlteracaoUsuario.DBEdit7Enter(Sender: TObject);
begin
   DBEdit7.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoUsuario.DBEdit7Exit(Sender: TObject);
begin
   DBEdit7.Color := clWindow;
end;

procedure TFInclusaoAlteracaoUsuario.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) then
   begin
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFInclusaoAlteracaoUsuario.FormShow(Sender: TObject);
begin
   if Edit1.Text <> '' then
   begin
      QUsuario.Close;
      QUsuario.SQL.Clear;
      QUsuario.SQL.Add('SELECT * FROM CAD_USUARIO');
      QUsuario.SQL.Add('WHERE CODIGO ='+#39+Edit1.Text+#39);
      QUsuario.Open;
      //
      QUsuario.Edit;
   end;

   if Edit1.Text = '' then
   begin
      QUsuario.Open;
      //
      QUsuario.Append;
      QUsuario.FieldByName('DATA_INCLUSAO').AsDateTime := Date;
      DBEdit2.SetFocus;
   end;
end;

procedure TFInclusaoAlteracaoUsuario.pnl_btncancelarClick(Sender: TObject);
begin
   //
   QUsuario.Cancel;
   close;
end;

procedure TFInclusaoAlteracaoUsuario.pnl_btnconfirmarClick(Sender: TObject);
begin
   if DBEdit2.Text = '' then
   begin
      Application.MessageBox('Informe o nome completo do usu?rio.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBEdit2.SetFocus;
      abort;
   end;

   if DBEdit4.Text = '' then
   begin
      Application.MessageBox('Informe o login para acesso ao sistema.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBEdit4.SetFocus;
      abort;
   end;

   if DBEdit5.Text = '' then
   begin
      Application.MessageBox('Informe a senha de acesso ao sistema.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBEdit5.SetFocus;
      abort;
   end;

   if Length(DBEdit5.Text) < 3 then
   begin
      Application.MessageBox('Senha deve conter mais que tr?s caracteres.','N?mero de Caracteres', MB_ICONEXCLAMATION+MB_OK);
      DBEdit5.SetFocus;
      abort;
   end;

   if DBEdit6.Text <> '' then
   begin
      Application.MessageBox('Informe o e-mail.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
      DBEdit6.SetFocus;
      abort;
   end;

   if Pos('@', DBEdit6.text) > 0 then
   begin
      Application.MessageBox('E-mail inv?lido.','E-mail Inv?lido', MB_ICONEXCLAMATION+MB_OK);
      DBEdit6.SetFocus;
      abort;
   end;
   //
   QUsuario.Post;
   //
   Application.CreateForm(TFAvisoConfirmacao, FAvisoConfirmacao);
   FAvisoConfirmacao.ShowModal;
   FAvisoConfirmacao.Free;
   //
   QUsuario.Edit;

end;

procedure TFInclusaoAlteracaoUsuario.pnl_btnconfirmarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := $00FFBE7D;
end;

end.
