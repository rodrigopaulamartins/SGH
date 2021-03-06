program ABM;

uses
  Vcl.Forms,
  Form_Principal in 'Form_Principal.pas' {FPrincipal},
  Form_CadastroEmpresa in 'Form_CadastroEmpresa.pas' {FCadastroEmpresa},
  Form_ProntuarioPaciente in 'Form_ProntuarioPaciente.pas' {FProntuario_Paciente},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  From_Login in 'From_Login.pas' {FLogin},
  Form_CadastroUsuarios in 'Form_CadastroUsuarios.pas' {FUsuarios},
  Form_AvisoExclusao in 'Form_AvisoExclusao.pas' {FAvisoExclusao},
  FromAvisoConfirmacao in 'FromAvisoConfirmacao.pas' {FAvisoConfirmacao},
  Form_InclusaoAlteracaoUsuario in 'Form_InclusaoAlteracaoUsuario.pas' {FInclusaoAlteracaoUsuario},
  Form_PesquisaProntuario in 'Form_PesquisaProntuario.pas' {FPesquisaProntuario},
  Form_CadastroClienteFornecedor in 'Form_CadastroClienteFornecedor.pas' {FCadastroClienteFornecedor},
  Form_InclusaoAlteracaoCleinte in 'Form_InclusaoAlteracaoCleinte.pas' {FInclusaoAlteracaoCliente},
  Form_CadastroPrestadorServico in 'Form_CadastroPrestadorServico.pas' {FPesquisaPrestadorServico},
  Form_InclusaoAlteracaoPrestador in 'Form_InclusaoAlteracaoPrestador.pas' {FInclusaoAlteracaoPrestador},
  Form_InclusaAlteracaoEspecMed in 'Form_InclusaAlteracaoEspecMed.pas' {FInclusaoAlteracaoEspecMed},
  Form_PesquisaCadastroPrestador in 'Form_PesquisaCadastroPrestador.pas' {FPesquisaCadastroPestrador},
  Form_InclusaoAlteracaoCredenciado in 'Form_InclusaoAlteracaoCredenciado.pas' {FIncluscaoAlteracaoCredenciado},
  Form_PesquisaCadastroConvenio in 'Form_PesquisaCadastroConvenio.pas' {FPesquisaCadastroConvenio},
  Form_InclusaoAlteracaoConvenio in 'Form_InclusaoAlteracaoConvenio.pas' {FInclusaoAlteracaoConvenio},
  Form_InclusaoAlteracaoPortePrc in 'Form_InclusaoAlteracaoPortePrc.pas' {FInclusaoAlteracaoPortePrc},
  Form_InclusaoAlteracaoCategoria in 'Form_InclusaoAlteracaoCategoria.pas' {FInclusaoAlteracaoCategoria},
  Form_PequisaDiagnosticoCid10 in 'Form_PequisaDiagnosticoCid10.pas' {FPesquisaDiagnostico},
  Form_InclusaAlteracaoDiagnostico in 'Form_InclusaAlteracaoDiagnostico.pas' {FInclusaoAlteracaoDiagnostico},
  Form_PesquisaCadastroAtoMedico in 'Form_PesquisaCadastroAtoMedico.pas' {FPesqAtoMedico},
  Form_InclusaAlteracaoAtoMedico in 'Form_InclusaAlteracaoAtoMedico.pas' {FInclusaoAlteracaoAtoMedico},
  Form_PesquisaEspecialidade in 'Form_PesquisaEspecialidade.pas' {FPesquisaEspecialidade},
  Form_InclusaoAlteracaoEspecialidade in 'Form_InclusaoAlteracaoEspecialidade.pas' {FInclusaoAlteracaoEspecialidade},
  Form_PesquisaProcedimento in 'Form_PesquisaProcedimento.pas' {FPesquisaProcedimento},
  Form_InclusaoAlteracaoProcedimento in 'Form_InclusaoAlteracaoProcedimento.pas' {FInclusaoAlteracaoProcedimento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFLogin, FLogin);
  Application.Run;
end.
