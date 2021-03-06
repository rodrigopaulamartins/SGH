unit Form_InclusaoAlteracaoPrestador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFInclusaoAlteracaoPrestador = class(TForm)
    ImageList1: TImageList;
    pnl_topo: TPanel;
    Label1: TLabel;
    btn_fechar: TSpeedButton;
    Bevel1: TBevel;
    pnl_btnconfirmar: TPanel;
    pnl_btncancelar: TPanel;
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    QCadPrestador: TZQuery;
    DCadPrestador: TDataSource;
    QCadPrestadorcodigo: TIntegerField;
    QCadPrestadoridprestador: TIntegerField;
    QCadPrestadoridtpprestador: TIntegerField;
    QCadPrestadornum_cns: TWideStringField;
    QCadPrestadornum_cnes: TWideStringField;
    QCadPrestadoridtpconselho: TIntegerField;
    QCadPrestadoruf_conselho: TWideStringField;
    QCadPrestadornum_conselho: TWideStringField;
    QCadPrestadorbtn_alterar: TWideStringField;
    QCadPrestadorbtn_excluir: TWideStringField;
    QCadPrestadorinativo: TWideStringField;
    QDadosCliente: TZQuery;
    QDadosClientecodigo: TIntegerField;
    QDadosClientecpf_cnpj: TWideStringField;
    QDadosClienterazao_social: TWideStringField;
    QDadosClientenome_fantasia: TWideStringField;
    QDadosClienteidtplogradouro: TIntegerField;
    QDadosClienteendereco: TWideStringField;
    QDadosClientenumero: TWideStringField;
    QDadosClientecomplemento: TWideStringField;
    QDadosClientecep: TWideStringField;
    QDadosClientebairro: TWideStringField;
    QDadosClienteidcidade: TIntegerField;
    QDadosClienteuf: TWideStringField;
    QDadosClienteidpais: TIntegerField;
    QDadosClienteddd: TWideStringField;
    QDadosClientetelefone1: TWideStringField;
    QDadosClienteddd1: TWideStringField;
    QDadosClientetelefone2: TWideStringField;
    QDadosClienteemail: TWideStringField;
    QDadosClientesite: TWideStringField;
    QDadosClientecontato: TWideStringField;
    QDadosClienteidRamoatividade: TIntegerField;
    QDadosClientedt_cadastro: TDateField;
    QDadosClienteinativo: TWideStringField;
    QDadosClientecliente: TWideStringField;
    QDadosClientefornecedor: TWideStringField;
    QDadosClientepessoa_fisica: TWideStringField;
    QDadosClienteprestador_servico: TWideStringField;
    QDadosClientebtn_alterar: TWideStringField;
    QDadosClientebtn_excluir: TWideStringField;
    QCadPrestadorNomePrestador: TStringField;
    QCadPrestadorcpfCliente: TStringField;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DPesqTpPrestador: TDataSource;
    QPesqTpPrestador: TZQuery;
    QPesqTpPrestadorcodigo: TIntegerField;
    QPesqTpPrestadordescricao: TWideStringField;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    QCadPrestadorinsc_prefeitura: TWideStringField;
    QCadPrestadormotivo_finalizacao: TWideStringField;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QPesqRegConselho: TZQuery;
    DPesqRegConselho: TDataSource;
    QPesqRegConselhocodigo: TIntegerField;
    QPesqRegConselhodescricao: TWideStringField;
    QPesqRegConselhosigla_conselho: TWideStringField;
    QPesqRegConselhocond_tiss: TWideStringField;
    QPesqRegConselhoinativo: TWideStringField;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    QCadPrestadordt_admissao: TDateField;
    QCadPrestadordt_desligamento: TDateField;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    QCadEspec: TZQuery;
    DCadEspec: TDataSource;
    QCadEspeccodigo: TIntegerField;
    QCadEspecidespecialidade: TIntegerField;
    QCadEspecnum_cerificacao: TWideStringField;
    QCadEspecespec_principal: TWideStringField;
    QCadEspecidprestador: TIntegerField;
    QCadEspecbtn_alterar: TWideStringField;
    QCadEspecbtn_excluir: TWideStringField;
    QDescCBO: TZQuery;
    QDescCBOcodigo: TIntegerField;
    QDescCBOdescricao: TWideStringField;
    QDescCBOcod_cbo: TWideStringField;
    QDescCBOcod_cbosus: TWideStringField;
    QCadEspecDescricao: TStringField;
    ImageList2: TImageList;
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    QCadCredenciado: TZQuery;
    DCadCredenciado: TDataSource;
    QCadCredenciadocodigo: TIntegerField;
    QCadCredenciadoidprestador: TIntegerField;
    QCadCredenciadoidsetor: TIntegerField;
    QCadCredenciadoidconvenio: TIntegerField;
    QCadCredenciadonum_contrato: TIntegerField;
    QCadCredenciadobtn_alterar: TWideStringField;
    QCadCredenciadobtn_excluir: TWideStringField;
    DBEdit11: TDBEdit;
    ImageList3: TImageList;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QCadPrestadorAfterScroll(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure pnl_btncancelarClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInclusaoAlteracaoPrestador: TFInclusaoAlteracaoPrestador;

implementation

{$R *.dfm}

uses DataModulo, Form_AvisoExclusao, Form_InclusaAlteracaoEspecMed,
  Form_InclusaoAlteracaoCredenciado, Form_PesquisaCadastroPrestador;

procedure TFInclusaoAlteracaoPrestador.btn_fecharClick(Sender: TObject);
begin
   close;
end;

procedure TFInclusaoAlteracaoPrestador.DBEdit10Enter(Sender: TObject);
begin
   DBEdit10.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPrestador.DBEdit10Exit(Sender: TObject);
begin
   DBEdit10.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPrestador.DBEdit4Enter(Sender: TObject);
begin
   DBEdit4.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPrestador.DBEdit4Exit(Sender: TObject);
begin
   DBEdit4.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPrestador.DBEdit5Enter(Sender: TObject);
begin
   DBEdit5.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPrestador.DBEdit5Exit(Sender: TObject);
begin
   DBEdit5.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPrestador.DBEdit6Enter(Sender: TObject);
begin
   DBEdit6.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPrestador.DBEdit6Exit(Sender: TObject);
begin
   DBEdit6.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPrestador.DBEdit7Enter(Sender: TObject);
begin
   DBEdit7.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPrestador.DBEdit7Exit(Sender: TObject);
begin
   DBEdit7.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPrestador.DBEdit8Enter(Sender: TObject);
begin
   DBEdit8.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPrestador.DBEdit8Exit(Sender: TObject);
begin
   DBEdit8.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPrestador.DBEdit9Enter(Sender: TObject);
begin
   DBEdit9.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPrestador.DBEdit9Exit(Sender: TObject);
begin
   DBEdit9.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPrestador.DBGrid1CellClick(Column: TColumn);
var
  mensagem: string;
begin
     if Column.Index = 3 Then
     begin
        if QCadEspec.IsEmpty then
        begin
           Application.MessageBox('Nenhum registro selecionado.','Altera??o n?o permitida', MB_ICONWARNING+MB_OK);
           abort;
        end;
        //aqui vai o codigo do que fazer
        Application.CreateForm(TFInclusaoAlteracaoEspecMed, FInclusaoAlteracaoEspecMed);
        FInclusaoAlteracaoEspecMed.Edit1.Text := 'ALT';
        FInclusaoAlteracaoEspecMed.ShowModal;
        FInclusaoAlteracaoEspecMed.Free;
     end;

     if Column.Index = 4 Then
     begin
        //aqui vai o codigo do que fazer
        if not QCadEspec.IsEmpty then
        begin
           Application.CreateForm(TFAvisoExclusao, FAvisoExclusao);
           mensagem := 'Tem certeza que deseja excluir o prontu?rio: ' + QCadEspec.FieldByName('DESCRICAO').AsString + '?';
           FAvisoExclusao.Label1.Caption := 'ATEN??O - Exclus?o da Especialidade';
           FAvisoExclusao.Edit1.Text := QCadEspec.FindField('CODIGO').Value;
           FAvisoExclusao.RichEdit1.Lines.Add(mensagem);
           FAvisoExclusao.ShowModal;
           FAvisoExclusao.Free;
        end;
     end;
end;

procedure TFInclusaoAlteracaoPrestador.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Column.Field = QCadEspecbtn_alterar then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 1)
   end;

   if Column.Field = QCadEspecbtn_excluir then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 0);
   end;
end;

procedure TFInclusaoAlteracaoPrestador.DBGrid2CellClick(Column: TColumn);
var
  mensagem: string;
begin
     if Column.Index = 4 Then
     begin
        if QCadCredenciado.IsEmpty then
        begin
           Application.MessageBox('Nenhum registro selecionado.','Altera??o n?o permitida', MB_ICONWARNING+MB_OK);
           abort;
        end;
        //aqui vai o codigo do que fazer
        Application.CreateForm(TFIncluscaoAlteracaoCredenciado, FIncluscaoAlteracaoCredenciado);
        FIncluscaoAlteracaoCredenciado.Edit1.Text := 'ALT';
        FIncluscaoAlteracaoCredenciado.ShowModal;
        FIncluscaoAlteracaoCredenciado.Free;
     end;

     if Column.Index = 5 Then
     begin
        //aqui vai o codigo do que fazer
        if not QCadEspec.IsEmpty then
        begin
           Application.CreateForm(TFAvisoExclusao, FAvisoExclusao);
           mensagem := 'Tem certeza que deseja excluir o contrato do prestador credenciado? ' + QCadEspec.FieldByName('DESCRICAO').AsString + '?';
           FAvisoExclusao.Label1.Caption := 'ATEN??O - Exclus?o da Credenciamento';
           FAvisoExclusao.Edit1.Text := QCadCredenciado.FindField('CODIGO').Value;
           FAvisoExclusao.RichEdit1.Lines.Add(mensagem);
           FAvisoExclusao.ShowModal;
           FAvisoExclusao.Free;
        end;
     end;

end;

procedure TFInclusaoAlteracaoPrestador.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Column.Field = QCadCredenciadobtn_alterar then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList3.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 1)
   end;

   if Column.Field = QCadCredenciadobtn_excluir then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList3.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 0);
   end;
end;

procedure TFInclusaoAlteracaoPrestador.DBLookupComboBox1Enter(Sender: TObject);
begin
   DBLookupComboBox1.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPrestador.DBLookupComboBox1Exit(Sender: TObject);
begin
   DBLookupComboBox1.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPrestador.DBLookupComboBox2Enter(Sender: TObject);
begin
   DBLookupComboBox2.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoPrestador.DBLookupComboBox2Exit(Sender: TObject);
begin
   DBLookupComboBox2.Color := clWindow;
end;

procedure TFInclusaoAlteracaoPrestador.FormActivate(Sender: TObject);
begin
   QPesqTpPrestador.Open;
   QPesqRegConselho.Open;
end;

procedure TFInclusaoAlteracaoPrestador.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) then
   begin
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFInclusaoAlteracaoPrestador.FormShow(Sender: TObject);
begin
   if Edit1.Text <> '' then
   begin
      QCadPrestador.Close;
      QCadPrestador.SQL.Clear;
      QCadPrestador.SQL.Add('SELECT * FROM CAD_PRESTADORSERVICO');
      QCadPrestador.SQL.Add('WHERE CODIGO ='+#39+Edit1.Text+#39);
      QCadPrestador.Open;
      //
      QCadPrestador.Open;
      QCadPrestador.Edit;
   end;

   if Edit1.Text = '' then
   begin
      QCadPrestador.Open;
      QCadEspec.Open;
      //
      QCadPrestador.Append;
      QCadPrestador.FieldByName('INATIVO'    ).AsString   := 'N';
      DBLookupComboBox1.SetFocus;
   end;

end;

procedure TFInclusaoAlteracaoPrestador.Panel2Click(Sender: TObject);
begin
   if DBEdit11.Text <> '' then
   begin
      Application.CreateForm(TFInclusaoAlteracaoEspecMed, FInclusaoAlteracaoEspecMed);
      QCadEspec.Append;
      FInclusaoAlteracaoEspecMed.Edit1.Text := 'INC';
      FInclusaoAlteracaoEspecMed.ShowModal;
      FInclusaoAlteracaoEspecMed.Free;
   end;
end;

procedure TFInclusaoAlteracaoPrestador.Panel5Click(Sender: TObject);
begin
   if DBEdit11.Text <> '' then
   begin
      Application.CreateForm(TFIncluscaoAlteracaoCredenciado, FIncluscaoAlteracaoCredenciado);
      QCadCredenciado.Append;
      FIncluscaoAlteracaoCredenciado.Edit1.Text := 'INC';
      FIncluscaoAlteracaoCredenciado.ShowModal;
      FIncluscaoAlteracaoCredenciado.Free;
   end;
end;

procedure TFInclusaoAlteracaoPrestador.pnl_btncancelarClick(Sender: TObject);
begin
   QCadPrestador.Cancel;
   close;
end;

procedure TFInclusaoAlteracaoPrestador.QCadPrestadorAfterScroll(
  DataSet: TDataSet);
begin
   //
   QCadEspec.Close;
   QCadEspec.SQL.Clear;
   QCadEspec.SQL.Add('SELECT * FROM CAD_ESPEC_MED');
   QCadEspec.SQL.Add('WHERE IDPRESTADOR ='+#39+QCadPrestador.FieldByName('CODIGO').Text+#39);
   QCadEspec.Open;
   //
   QCadCredenciado.Close;
   QCadCredenciado.SQL.Clear;
   QCadCredenciado.SQL.Add('SELECT * FROM CAD_CRED_MED');
   QCadCredenciado.SQL.Add('WHERE IDPRESTADOR ='+#39+QCadPrestador.FieldByName('CODIGO').Text+#39);
   QCadCredenciado.Open;
end;

procedure TFInclusaoAlteracaoPrestador.SpeedButton2Click(Sender: TObject);
begin
   //faz a pesquisa dos dados do prestador cadastrado
   Application.CreateForm(TFPesquisaCadastroPestrador, FPesquisaCadastroPestrador);
   FPesquisaCadastroPestrador.ShowModal;
   FPesquisaCadastroPestrador.Free;

end;

end.
