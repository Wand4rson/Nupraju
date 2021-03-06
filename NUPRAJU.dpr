program NUPRAJU;

uses
  SysUtils,
  Controls,
  //Novos//
  Forms,
  uFormPrincipal in 'Forms\uFormPrincipal.pas' {FormPrincipal},
  uDM in 'Forms\uDM.pas' {DM: TDataModule},
  uLibs in 'Libs\uLibs.pas',
  uBanco in 'Libs\uBanco.pas',
  uFormRelUsuario in 'Forms\uFormRelUsuario.pas' {FormRelUsuario},
  uFormLogin in 'Forms\uFormLogin.pas' {FormLogin},
  uFormSobre in 'Forms\uFormSobre.pas' {FormSobre},
  uFormAlunos in 'Forms\uFormAlunos.pas' {FormAlunos},
  uFormLocCidades in 'Forms\uFormLocCidades.pas' {FormLocCidades},
  uFormLocAlunos in 'Forms\uFormLocAlunos.pas' {FormLocAlunos},
  uFormClientes in 'Forms\uFormClientes.pas' {FormClientes},
  uFormLocClientes in 'Forms\uFormLocClientes.pas' {FormLocClientes},
  uFormTipoProcessos in 'Forms\uFormTipoProcessos.pas' {FormTipoProcessos},
  uFormOcorrencia in 'Forms\uFormOcorrencia.pas' {FormOcorrencia},
  uFormOcorrenciaItens in 'Forms\uFormOcorrenciaItens.pas' {FormOcorrenciaItens},
  uFormLocTipoProcesso in 'Forms\uFormLocTipoProcesso.pas' {FormLocTipoProcesso},
  uFormLocOcorrencia in 'Forms\uFormLocOcorrencia.pas' {FormLocOcorrencia},
  uFormFilaAcompanhamento in 'Forms\uFormFilaAcompanhamento.pas' {FormFilaAcompanhamento},
  uFormHistoricoAlunos in 'Forms\uFormHistoricoAlunos.pas' {FormHistoricoAlunos},
  uDMReports in 'Forms\uDMReports.pas' {DMReports: TDataModule},
  uFormRelClientes in 'Forms\uFormRelClientes.pas' {FormRelClientes},
  uFormRelAlunos in 'Forms\uFormRelAlunos.pas' {FormRelAlunos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'N?cleo de Pr?ticas Jur?dicas';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMReports, DMReports);
  Application.CreateForm(TFormLogin, FormLogin);
  //Application.Run;

  if FormLogin.ShowModal = mrOk then
        begin
            FreeAndNil(FormLogin);
            Application.CreateForm(TFormPrincipal, FormPrincipal);
            Application.Run;
        end
        else
        begin
            DM.conn.Close;
            FreeAndNil(FormLogin);
            Application.Terminate;
        end;
end.
