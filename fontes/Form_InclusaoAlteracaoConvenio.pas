unit Form_InclusaoAlteracaoConvenio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFInclusaoAlteracaoConvenio = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    PageControl1: TPageControl;
    pnl_topo: TPanel;
    Label1: TLabel;
    btn_fechar: TSpeedButton;
    Bevel1: TBevel;
    pnl_btnconfirmar: TPanel;
    pnl_btncancelar: TPanel;
    Panel4: TPanel;
    DCadConvenio: TDataSource;
    QCadConvenio: TZQuery;
    QDescRazaoSocial: TZQuery;
    QDescRazaoSocialcodigo: TIntegerField;
    QDescRazaoSocialcpf_cnpj: TWideStringField;
    QDescRazaoSocialrazao_social: TWideStringField;
    QDescRazaoSocialnome_fantasia: TWideStringField;
    QDescRazaoSocialidtplogradouro: TIntegerField;
    QDescRazaoSocialendereco: TWideStringField;
    QDescRazaoSocialnumero: TWideStringField;
    QDescRazaoSocialcomplemento: TWideStringField;
    QDescRazaoSocialcep: TWideStringField;
    QDescRazaoSocialbairro: TWideStringField;
    QDescRazaoSocialidcidade: TIntegerField;
    QDescRazaoSocialuf: TWideStringField;
    QDescRazaoSocialidpais: TIntegerField;
    QDescRazaoSocialddd: TWideStringField;
    QDescRazaoSocialtelefone1: TWideStringField;
    QDescRazaoSocialddd1: TWideStringField;
    QDescRazaoSocialtelefone2: TWideStringField;
    QDescRazaoSocialemail: TWideStringField;
    QDescRazaoSocialsite: TWideStringField;
    QDescRazaoSocialcontato: TWideStringField;
    QDescRazaoSocialidRamoatividade: TIntegerField;
    QDescRazaoSocialdt_cadastro: TDateField;
    QDescRazaoSocialinativo: TWideStringField;
    QDescRazaoSocialcliente: TWideStringField;
    QDescRazaoSocialfornecedor: TWideStringField;
    QDescRazaoSocialpessoa_fisica: TWideStringField;
    QDescRazaoSocialprestador_servico: TWideStringField;
    QDescRazaoSocialbtn_alterar: TWideStringField;
    QDescRazaoSocialbtn_excluir: TWideStringField;
    QCadConveniocodigo: TIntegerField;
    QCadConvenioidprestador: TIntegerField;
    QCadConvenionum_cns: TWideStringField;
    QCadConvenionum_cnes_sih_sus: TWideStringField;
    QCadConvenionum_susep: TWideStringField;
    QCadConvenionum_reg_ans: TWideStringField;
    QCadConveniocod_sus_regional: TWideStringField;
    QCadConveniovlr_autorizacao_matmed: TFloatField;
    QCadConvenioidentfica_prest_proprio: TWideStringField;
    QCadConvenioprof_autonomo_cessao_uso: TWideStringField;
    QCadConvenioconvenio_contratualizado: TWideStringField;
    QCadConveniocod_contrato: TWideStringField;
    QCadConvenionum_caracter_cart: TWideStringField;
    QCadConvenioobrigatorio_carterinha: TWideStringField;
    QCadConveniosenha_autorizacao_obrigatorio: TWideStringField;
    QCadConvenioobrigatorio_med_solicitante: TWideStringField;
    QCadConveniotiss_idutilizaguiAOperadora: TIntegerField;
    QCadConveniotiis_disc_matmed: TIntegerField;
    QCadConveniotiss_versaoimp: TWideStringField;
    QCadConveniotiss_tabelamed: TIntegerField;
    QCadConveniotiss_tabelamat: TIntegerField;
    QCadConveniotiss_resumo_mat: TWideStringField;
    QCadConveniotiss_resumo_med: TWideStringField;
    QCadConveniotiss_sentis: TIntegerField;
    QCadConveniotiss_procedimento_data: TIntegerField;
    QCadConveniotiss_versao: TWideStringField;
    QCadConveniotiss_maxguia: TWideStringField;
    QCadConveniotiss_pastagravacao: TWideStringField;
    QCadConveniotiss_margem_comer: TFloatField;
    QCadConveniotiss_hospprofexec: TWideStringField;
    QCadConveniotiss_filmematmed: TWideStringField;
    QCadConveniotiss_mesmotpatendimento: TWideStringField;
    QCadConveniotiss_geraguiaprincipal: TWideStringField;
    QCadConveniotiss_hashnomearquivo: TWideStringField;
    QCadConveniodsc_emitesomentespdireto: TWideStringField;
    QCadConveniodsc_imprimivalorchcolvlruni: TWideStringField;
    QCadConveniodsc_spseparado: TWideStringField;
    QCadConveniodsc_imprimiservcredenciado: TWideStringField;
    QCadConvenioinativo: TWideStringField;
    QCadConvenioidmodconv: TIntegerField;
    QCadConveniobtn_alterar: TWideStringField;
    QCadConveniobtn_excluir: TWideStringField;
    QCadConvenioDescRazaoSocial: TStringField;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    QCadConvenioDescCnpj: TStringField;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DPesqModConvenio: TDataSource;
    QPesqModConvenio: TZQuery;
    QPesqModConveniocodigo: TIntegerField;
    QPesqModConveniodescricao: TWideStringField;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    QCadConveniocod_conve_same: TWideStringField;
    QCadConveniodt_cadastro: TDateField;
    TabSheet2: TTabSheet;
    DBLookupComboBox2: TDBLookupComboBox;
    Label14: TLabel;
    QPesqUtilizaAtGuiaOperadora: TZQuery;
    DPesqUtilizarAtGuiaOperadora: TDataSource;
    QPesqUtilizaAtGuiaOperadoracodigo: TIntegerField;
    QPesqUtilizaAtGuiaOperadoradescricao: TWideStringField;
    QPesqUtilizaAtGuiaOperadoracod_guitis: TWideStringField;
    Label15: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    QPesqFormDscMatMed: TZQuery;
    DPesqFormDscMatMed: TDataSource;
    QPesqFormDscMatMedcodigo: TIntegerField;
    QPesqFormDscMatMedcod_distis: TWideStringField;
    QPesqFormDscMatMeddescricao: TWideStringField;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    Label17: TLabel;
    QPesqTipoTabelaTISSMed: TZQuery;
    DPesqTipoTabelaTISSMed: TDataSource;
    QPesqTipoTabelaTISSMedcodigo: TIntegerField;
    QPesqTipoTabelaTISSMedcod_tabela: TWideStringField;
    QPesqTipoTabelaTISSMeddescricao: TWideStringField;
    QPesqTipoTabelaTISSMedcod_tis302: TWideStringField;
    Label18: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    QPesqTipoTabelaTISSMat: TZQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    DPesqTipoTabelaTISSMat: TDataSource;
    Label19: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    QPesqSenhaGuiaTISS: TZQuery;
    DPesqSenhaGuiaTISS: TDataSource;
    QPesqSenhaGuiaTISScodigo: TIntegerField;
    QPesqSenhaGuiaTISSdescricao: TWideStringField;
    QPesqSenhaGuiaTISScod_tis: TWideStringField;
    Label20: TLabel;
    DBEdit13: TDBEdit;
    Label21: TLabel;
    DBEdit14: TDBEdit;
    DBLookupComboBox7: TDBLookupComboBox;
    Label22: TLabel;
    QPesqPrcDataTISS: TZQuery;
    DPesqPrcDataTISS: TDataSource;
    QPesqPrcDataTISScodigo: TIntegerField;
    QPesqPrcDataTISSdescricao: TWideStringField;
    QPesqPrcDataTISScod_tis: TWideStringField;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    Label24: TLabel;
    DBEdit16: TDBEdit;
    Label25: TLabel;
    DBEdit17: TDBEdit;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    TabSheet3: TTabSheet;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    TabSheet4: TTabSheet;
    Panel3: TPanel;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    DCadPortePrc: TDataSource;
    QCadPortePrc: TZQuery;
    QCadPortePrccodigo: TIntegerField;
    QCadPortePrcidprestador: TIntegerField;
    QCadPortePrcidcategoria: TIntegerField;
    QCadPortePrccod_inicial: TWideStringField;
    QCadPortePrccod_final: TWideStringField;
    QCadPortePrcdescricao: TWideStringField;
    QCadPortePrcvlr_sh: TFloatField;
    QCadPortePrcvlr_sp: TFloatField;
    QCadPortePrcvlr_sp_credenciado: TFloatField;
    QCadPortePrcvlr_sadt: TFloatField;
    QCadPortePrcvlr_sadt_credenciado: TFloatField;
    QCadPortePrcvlr_filme: TFloatField;
    QCadPortePrcbtn_alterar: TWideStringField;
    QCadPortePrcbtn_excluir: TWideStringField;
    QCadPortePrcdt_vigencia: TDateField;
    TabSheet5: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    QCadCategoria: TZQuery;
    DCadCategoria: TDataSource;
    QCadCategoriacodigo: TIntegerField;
    QCadCategoriaidprestador: TIntegerField;
    QCadCategoriadescricao: TWideStringField;
    QCadCategoriainativo: TWideStringField;
    QCadCategoriaidmodalidade: TIntegerField;
    QCadCategoriaidtabsh: TIntegerField;
    QCadCategoriaidtabsp: TIntegerField;
    QCadCategoriaidtabsadt: TIntegerField;
    QCadCategoriaidtabmedicamento: TIntegerField;
    QCadCategoriaidtabemateriais: TIntegerField;
    QCadCategoriabtn_alterar: TWideStringField;
    QCadCategoriabtn_excluir: TWideStringField;
    QDescModalidade: TZQuery;
    QDescModalidadecodigo: TIntegerField;
    QDescModalidadecod_mod: TWideStringField;
    QDescModalidadedescricao: TWideStringField;
    QCadCategoriaDescModalidade: TStringField;
    procedure btn_fecharClick(Sender: TObject);
    procedure pnl_btncancelarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure DBLookupComboBox5Exit(Sender: TObject);
    procedure DBLookupComboBox5Enter(Sender: TObject);
    procedure DBLookupComboBox6Enter(Sender: TObject);
    procedure DBLookupComboBox6Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBLookupComboBox7Enter(Sender: TObject);
    procedure DBLookupComboBox7Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Panel5Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInclusaoAlteracaoConvenio: TFInclusaoAlteracaoConvenio;

implementation

{$R *.dfm}

uses DataModulo, Form_PesquisaCadastroPrestador, Form_InclusaoAlteracaoPortePrc,
  Form_AvisoExclusao, Form_InclusaoAlteracaoCategoria;

procedure TFInclusaoAlteracaoConvenio.btn_fecharClick(Sender: TObject);
begin
   close;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit10Enter(Sender: TObject);
begin
   DBEdit10.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit10Exit(Sender: TObject);
begin
   DBEdit10.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit11Enter(Sender: TObject);
begin
   DBEdit11.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit11Exit(Sender: TObject);
begin
   DBEdit11.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit12Enter(Sender: TObject);
begin
   DBEdit12.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit12Exit(Sender: TObject);
begin
   DBEdit12.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit13Enter(Sender: TObject);
begin
   DBEdit13.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit13Exit(Sender: TObject);
begin
   DBEdit13.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit14Enter(Sender: TObject);
begin
   DBEdit14.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit14Exit(Sender: TObject);
begin
   DBEdit14.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit15Enter(Sender: TObject);
begin
   DBEdit15.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit15Exit(Sender: TObject);
begin
   DBEdit15.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit16Enter(Sender: TObject);
begin
   DBEdit15.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit16Exit(Sender: TObject);
begin
   DBEdit16.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit17Enter(Sender: TObject);
begin
   DBEdit17.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit17Exit(Sender: TObject);
begin
   DBEdit17.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit4Enter(Sender: TObject);
begin
   DBEdit4.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit4Exit(Sender: TObject);
begin
   DBEdit4.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit5Enter(Sender: TObject);
begin
   DBEdit5.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit5Exit(Sender: TObject);
begin
   DBEdit5.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit6Enter(Sender: TObject);
begin
   DBEdit6.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit6Exit(Sender: TObject);
begin
   DBEdit6.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit7Enter(Sender: TObject);
begin
   DBEdit7.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit7Exit(Sender: TObject);
begin
   DBEdit7.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit8Enter(Sender: TObject);
begin
   DBEdit8.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit8Exit(Sender: TObject);
begin
   DBEdit8.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit9Enter(Sender: TObject);
begin
   DBEdit9.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBEdit9Exit(Sender: TObject);
begin
   DBEdit9.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBGrid1CellClick(Column: TColumn);
var
  mensagem: string;
begin
     if Column.Index = 3 Then
     begin
        if QCadCategoria.IsEmpty then
        begin
           Application.MessageBox('Nenhum registro selecionado.','Altera??o n?o permitida', MB_ICONWARNING+MB_OK);
           abort;
        end;
        //aqui vai o codigo do que fazer
        Application.CreateForm(TFInclusaoAlteracaoCategoria, FInclusaoAlteracaoCategoria);
        FInclusaoAlteracaoCategoria.Edit1.Text := 'ALT';
        FInclusaoAlteracaoCategoria.ShowModal;
        FInclusaoAlteracaoCategoria.Free;
     end;

     if Column.Index = 4 Then
     begin
        //aqui vai o codigo do que fazer
        if not QCadPortePrc.IsEmpty then
        begin
           Application.CreateForm(TFAvisoExclusao, FAvisoExclusao);
           mensagem := 'Tem certeza que deseja excluir a categoria de atendimento? ' + QCadCategoria.FieldByName('DESCRICAO').AsString + '?';
           FAvisoExclusao.Label1.Caption := 'ATEN??O - Exclus?o categoria de atendimento';
           FAvisoExclusao.Edit1.Text := QCadCategoria.FindField('CODIGO').Value;
           FAvisoExclusao.RichEdit1.Lines.Add(mensagem);
           FAvisoExclusao.ShowModal;
           FAvisoExclusao.Free;
        end;
     end;

end;

procedure TFInclusaoAlteracaoConvenio.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Column.Field = QCadCategoriabtn_alterar then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList3.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 1)
   end;

   if Column.Field = QCadCategoriabtn_excluir then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList3.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 0);
   end;

end;

procedure TFInclusaoAlteracaoConvenio.DBGrid2CellClick(Column: TColumn);
var
  mensagem: string;
begin
     if Column.Index = 4 Then
     begin
        if QCadPortePrc.IsEmpty then
        begin
           Application.MessageBox('Nenhum registro selecionado.','Altera??o n?o permitida', MB_ICONWARNING+MB_OK);
           abort;
        end;
        //aqui vai o codigo do que fazer
        Application.CreateForm(TFInclusaoAlteracaoPortePrc, FInclusaoAlteracaoPortePrc);
        FInclusaoAlteracaoPortePrc.Edit1.Text := 'ALT';
        FInclusaoAlteracaoPortePrc.ShowModal;
        FInclusaoAlteracaoPortePrc.Free;
     end;

     if Column.Index = 5 Then
     begin
        //aqui vai o codigo do que fazer
        if not QCadPortePrc.IsEmpty then
        begin
           Application.CreateForm(TFAvisoExclusao, FAvisoExclusao);
           mensagem := 'Tem certeza que deseja excluir o porte de procedimento? ' + QCadPortePrc.FieldByName('DESCRICAO').AsString + '?';
           FAvisoExclusao.Label1.Caption := 'ATEN??O - Exclus?o porte procedimento';
           FAvisoExclusao.Edit1.Text := QCadPortePrc.FindField('CODIGO').Value;
           FAvisoExclusao.RichEdit1.Lines.Add(mensagem);
           FAvisoExclusao.ShowModal;
           FAvisoExclusao.Free;
        end;
     end;


end;

procedure TFInclusaoAlteracaoConvenio.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if Column.Field = QCadPortePrcbtn_alterar then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 1)
   end;

   if Column.Field = QCadPortePrcbtn_excluir then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +10,Rect.Top + 1, 0);
   end;
end;

procedure TFInclusaoAlteracaoConvenio.DBLookupComboBox1Enter(Sender: TObject);
begin
   DBLookupComboBox1.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBLookupComboBox1Exit(Sender: TObject);
begin
   DBLookupComboBox1.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBLookupComboBox2Enter(Sender: TObject);
begin
   DBLookupComboBox2.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBLookupComboBox2Exit(Sender: TObject);
begin
   DBLookupComboBox2.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBLookupComboBox3Enter(Sender: TObject);
begin
   DBLookupComboBox3.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBLookupComboBox3Exit(Sender: TObject);
begin
   DBLookupComboBox3.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBLookupComboBox4Enter(Sender: TObject);
begin
   DBLookupComboBox4.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBLookupComboBox4Exit(Sender: TObject);
begin
   DBLookupComboBox4.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBLookupComboBox5Enter(Sender: TObject);
begin
   DBLookupComboBox5.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBLookupComboBox5Exit(Sender: TObject);
begin
   DBLookupComboBox5.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.DBLookupComboBox6Enter(Sender: TObject);
begin
   DBLookupComboBox6.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBLookupComboBox6Exit(Sender: TObject);
begin
   DBLookupComboBox6.Color := clWindow;

end;

procedure TFInclusaoAlteracaoConvenio.DBLookupComboBox7Enter(Sender: TObject);
begin
   DBLookupComboBox6.Color := clInfoBk;
end;

procedure TFInclusaoAlteracaoConvenio.DBLookupComboBox7Exit(Sender: TObject);
begin
   DBLookupComboBox7.Color := clWindow;
end;

procedure TFInclusaoAlteracaoConvenio.Panel2Click(Sender: TObject);
begin
   if DBEdit11.Text <> '' then
   begin
      Application.CreateForm(TFInclusaoAlteracaoCategoria, FInclusaoAlteracaoCategoria);
      QCadCategoria.Append;
      FInclusaoAlteracaoCategoria.Edit1.Text := 'INC';
      FInclusaoAlteracaoCategoria.ShowModal;
      FInclusaoAlteracaoCategoria.Free;
   end;
end;

procedure TFInclusaoAlteracaoConvenio.Panel5Click(Sender: TObject);
begin
   if DBEdit11.Text <> '' then
   begin
      Application.CreateForm(TFInclusaoAlteracaoPortePrc, FInclusaoAlteracaoPortePrc);
      QCadPortePrc.Append;
      FInclusaoAlteracaoPortePrc.Edit1.Text := 'INC';
      FInclusaoAlteracaoPortePrc.ShowModal;
      FInclusaoAlteracaoPortePrc.Free;
   end;

end;

procedure TFInclusaoAlteracaoConvenio.pnl_btncancelarClick(Sender: TObject);
begin
   QCadConvenio.Cancel;
   close;
end;

procedure TFInclusaoAlteracaoConvenio.SpeedButton2Click(Sender: TObject);
begin
   Application.CreateForm(TFPesquisaCadastroPestrador, FPesquisaCadastroPestrador);
   FPesquisaCadastroPestrador.Tag := 1;
   FPesquisaCadastroPestrador.ShowModal;
   FPesquisaCadastroPestrador.Free;

end;

end.
