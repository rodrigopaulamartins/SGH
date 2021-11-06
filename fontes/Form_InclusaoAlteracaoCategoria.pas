unit Form_InclusaoAlteracaoCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFInclusaoAlteracaoCategoria = class(TForm)
    pnl_topo: TPanel;
    Label1: TLabel;
    btn_fechar: TSpeedButton;
    Panel4: TPanel;
    Panel1: TPanel;
    Edit1: TEdit;
    Panel2: TPanel;
    pnl_btnconfirmar: TPanel;
    pnl_btncancelar: TPanel;
    ImageList1: TImageList;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    QPesqModalidade: TZQuery;
    DPesqModalidadeAte: TDataSource;
    QPesqModalidadecodigo: TIntegerField;
    QPesqModalidadecod_mod: TWideStringField;
    QPesqModalidadedescricao: TWideStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label6: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label7: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label8: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    procedure btn_fecharClick(Sender: TObject);
    procedure pnl_btncancelarClick(Sender: TObject);
    procedure pnl_btnconfirmarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox5Enter(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
    procedure DBLookupComboBox6Exit(Sender: TObject);
    procedure DBLookupComboBox6Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInclusaoAlteracaoCategoria: TFInclusaoAlteracaoCategoria;

implementation

{$R *.dfm}

uses Form_InclusaoAlteracaoConvenio, DataModulo;

procedure TFInclusaoAlteracaoCategoria.btn_fecharClick(Sender: TObject);
begin
   close;
end;

procedure TFInclusaoAlteracaoCategoria.DBEdit1Enter(Sender: TObject);
begin
   DBEdit1.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCategoria.DBEdit1Exit(Sender: TObject);
begin
   DBEdit1.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCategoria.DBLookupComboBox1Enter(Sender: TObject);
begin
   DBLookupComboBox1.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCategoria.DBLookupComboBox1Exit(Sender: TObject);
begin
   DBLookupComboBox1.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCategoria.DBLookupComboBox2Enter(Sender: TObject);
begin
   DBLookupComboBox2.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCategoria.DBLookupComboBox2Exit(Sender: TObject);
begin
   DBLookupComboBox2.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCategoria.DBLookupComboBox3Enter(Sender: TObject);
begin
   DBLookupComboBox3.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCategoria.DBLookupComboBox3Exit(Sender: TObject);
begin
   DBLookupComboBox3.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCategoria.DBLookupComboBox4Enter(Sender: TObject);
begin
   DBLookupComboBox4.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCategoria.DBLookupComboBox4Exit(Sender: TObject);
begin
   DBLookupComboBox4.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCategoria.DBLookupComboBox5Enter(Sender: TObject);
begin
   DBLookupComboBox5.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCategoria.DBLookupComboBox5Exit(Sender: TObject);
begin
   DBLookupComboBox5.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCategoria.DBLookupComboBox6Enter(Sender: TObject);
begin
   DBLookupComboBox6.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoCategoria.DBLookupComboBox6Exit(Sender: TObject);
begin
   DBLookupComboBox6.Color := clWindow;
end;

procedure TFInclusaoAlteracaoCategoria.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) then
   begin
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFInclusaoAlteracaoCategoria.pnl_btncancelarClick(Sender: TObject);
begin
   FInclusaoAlteracaoConvenio.QCadCategoria.Cancel;
   close;
end;

procedure TFInclusaoAlteracaoCategoria.pnl_btnconfirmarClick(Sender: TObject);
begin
   if Edit1.Text = 'INC' then
   begin
      FInclusaoAlteracaoConvenio.QCadCategoria.FindField('IDPRESTADOR').Value := FInclusaoAlteracaoConvenio.QCadConvenio.FindField('CODIGO').Value;
      FInclusaoAlteracaoConvenio.QCadCategoria.FindField('INATIVO'    ).Value  := 'S';
      FInclusaoAlteracaoConvenio.QCadCategoria.Post;
   end;
   if Edit1.Text = 'ALT' then
   begin
      FInclusaoAlteracaoConvenio.QCadCategoria.Post;
   end;

end;

end.
