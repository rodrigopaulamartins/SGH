unit Form_InclusaoAlteracaoPortePrc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFInclusaoAlteracaoPortePrc = class(TForm)
    pnl_topo: TPanel;
    Label1: TLabel;
    btn_fechar: TSpeedButton;
    Panel4: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel2: TPanel;
    pnl_btnconfirmar: TPanel;
    pnl_btncancelar: TPanel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    ImageList1: TImageList;
    DPesqCategoria: TDataSource;
    QPesqCategoria: TZQuery;
    QPesqCategoriacodigo: TIntegerField;
    QPesqCategoriaidprestador: TIntegerField;
    QPesqCategoriadescricao: TWideStringField;
    QPesqCategoriainativo: TWideStringField;
    QPesqCategoriaidmodalidade: TIntegerField;
    QPesqCategoriaidtabsh: TIntegerField;
    QPesqCategoriaidtabsp: TIntegerField;
    QPesqCategoriaidtabsadt: TIntegerField;
    QPesqCategoriaidtabmedicamento: TIntegerField;
    QPesqCategoriaidtabemateriais: TIntegerField;
    QPesqCategoriabtn_alterar: TWideStringField;
    QPesqCategoriabtn_excluir: TWideStringField;
    procedure pnl_btncancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure pnl_btnconfirmarClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInclusaoAlteracaoPortePrc: TFInclusaoAlteracaoPortePrc;

implementation

{$R *.dfm}

uses Form_InclusaoAlteracaoConvenio, DataModulo;

procedure TFInclusaoAlteracaoPortePrc.btn_fecharClick(Sender: TObject);
begin
  close;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit10Enter(Sender: TObject);
begin
   DBEdit10.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit10Exit(Sender: TObject);
begin
   DBEdit10.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit1Enter(Sender: TObject);
begin
   DBEdit1.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit1Exit(Sender: TObject);
begin
   DBEdit1.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit2Enter(Sender: TObject);
begin
   DBEdit2.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit2Exit(Sender: TObject);
begin
   DBEdit2.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit3Enter(Sender: TObject);
begin
   DBEdit3.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit3Exit(Sender: TObject);
begin
   DBEdit3.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit4Enter(Sender: TObject);
begin
   DBEdit4.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit4Exit(Sender: TObject);
begin
   DBEdit4.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit5Enter(Sender: TObject);
begin
   DBEdit5.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit5Exit(Sender: TObject);
begin
   DBEdit5.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit6Enter(Sender: TObject);
begin
   DBEdit6.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit6Exit(Sender: TObject);
begin
   DBEdit6.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit7Enter(Sender: TObject);
begin
   DBEdit7.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit7Exit(Sender: TObject);
begin
   DBEdit1.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit8Enter(Sender: TObject);
begin
   DBEdit8.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit8Exit(Sender: TObject);
begin
   DBEdit8.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit9Enter(Sender: TObject);
begin
   DBEdit9.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPortePrc.DBEdit9Exit(Sender: TObject);
begin
   DBEdit9.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPortePrc.DBLookupComboBox1Enter(Sender: TObject);
begin
   DBLookupComboBox1.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPortePrc.DBLookupComboBox1Exit(Sender: TObject);
begin
   DBLookupComboBox1.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPortePrc.DBLookupComboBox2Enter(Sender: TObject);
begin
   DBLookupComboBox2.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPortePrc.DBLookupComboBox2Exit(Sender: TObject);
begin
   DBLookupComboBox2.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPortePrc.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) then
   begin
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFInclusaoAlteracaoPortePrc.pnl_btncancelarClick(Sender: TObject);
begin
   FInclusaoAlteracaoConvenio.QCadPortePrc.Cancel;
   close;
end;

procedure TFInclusaoAlteracaoPortePrc.pnl_btnconfirmarClick(Sender: TObject);
begin
   if Edit1.Text = 'INC' then
   begin
      if DBEdit3.Text = '  /  /    ' then
      begin
         Application.MessageBox('Informe a data da vig?ncia.','Obrigat?rio', MB_ICONEXCLAMATION+MB_OK);
         DBEdit1.SetFocus;
         abort;
      end;
      FInclusaoAlteracaoConvenio.QCadPortePrc.FindField('IDPRESTADOR').Value := FInclusaoAlteracaoConvenio.QCadConvenio.FindField('CODIGO').Value;
      FInclusaoAlteracaoConvenio.QCadPortePrc.Post;
   end;
   if Edit1.Text = 'ALT' then
   begin
      FInclusaoAlteracaoConvenio.QCadPortePrc.Post;
   end;

end;

end.
