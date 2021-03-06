unit From_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, IniFiles, Data.DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TFLogin = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Edt_Usuario: TEdit;
    Edt_Senha: TEdit;
    pnl_btnconfirmar: TPanel;
    Label1: TLabel;
    QLogin: TZQuery;
    procedure pnl_btnconfirmarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnl_btnconfirmarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure pnl_btnconfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function  LerIni: boolean;
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

uses Form_Principal, DataModulo, Form_CadastroUsuarios, Form_CadastroEmpresa;

procedure TFLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) then
   begin
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

function TFLogin.LerIni: boolean;
var
   iniConf: TIniFile;
   sCaminho, sIpServidor, sVMysql, sSenha, sPorta: String;
begin
   //come?a a configuracao do arquivo ini
   iniConf     := TIniFile.Create(ExtractFilePath(Application.ExeName)+'abm.ini');
   sIPServidor := iniConf.ReadString('Banco_Dados','IP_Servidor','');
   sCaminho    := iniConf.ReadString('Banco_Dados','Database','');
   sVMysql     := iniConf.ReadString('Banco_Dados','Driver','');
   sSenha      := iniConf.ReadString('Banco_Dados','Senha','');
   sPorta      := iniConf.ReadString('Banco_Dados','Porta','');
   //passa os dados para o datamodule
   try
     DM.Conexao.Connected := false;
     DM.Conexao.HostName  := sIpServidor;
     DM.Conexao.Database  := sCaminho;
     DM.Conexao.User      := 'root';
     DM.Conexao.Password  := sSenha;
     DM.Conexao.Port      := StrToInt(sPorta);
     DM.Conexao.Protocol  := sVMysql;
     DM.Conexao.Connected := True;
   except
       Application.MessageBox('Problemas de conex?o com o banco de dados, contate o Administrador.','Conex?o com banco de dados', MB_ICONERROR + MB_OK);
       abort;
   end;
end;

procedure TFLogin.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   pnl_btnconfirmar.Color := $00FFBE7D;

end;

procedure TFLogin.pnl_btnconfirmarClick(Sender: TObject);
begin
   //valida??o do banco de dados login e senha
   LerIni;
   //se validou a conex?o verifico os dados
   if Edt_Usuario.Text = '' then
   begin
      Application.MessageBox('Informe o nome do usu?rio.','Obrigat?rio', MB_ICONINFORMATION+MB_OK);
      Edt_Usuario.SetFocus;
      abort;
   end;

   if Edt_Senha.Text = '' then
   begin
      Application.MessageBox('Informe a senha de acesso.','Obrigat?rio', MB_ICONINFORMATION+MB_OK);
      Edt_Senha.SetFocus;
      abort;
   end;
   //se estiver preenchidos os campos vamos validar o acesso
   QLogin.Close;
   QLogin.SQL.Clear;
   QLogin.SQL.Add('SELECT * FROM CAD_USUARIO');
   QLogin.SQL.Add('WHERE LOGIN_ACESSO ='+#39+Edt_Usuario.Text+#39);
   QLogin.SQL.Add('AND SENHA_ACESSO = '+#39+Edt_Senha.Text+#39);
   QLogin.SQL.Add('AND ATIVO = '+#39+'N'+#39);
   QLogin.Open;
   //se n?o encontrar faz o alerta
   if QLogin.IsEmpty then
   begin
      Application.MessageBox('Usu?rio ou senha inv?lidos.','Login de acesso', MB_ICONWARNING+MB_OK);
      abort;
   end;
   Application.CreateForm(TFPrincipal, FPrincipal);
   FPrincipal.ShowModal;
   FPrincipal.Free;
   //
   Flogin.close;
end;

procedure TFLogin.pnl_btnconfirmarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   pnl_btnconfirmar.Color := clMenuHighlight;
end;

procedure TFLogin.pnl_btnconfirmarMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   pnl_btnconfirmar.Color := clMenuHighlight;
end;

end.
