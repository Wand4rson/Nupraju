unit uFormPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, Buttons, ExtCtrls, jpeg, dxGDIPlusClasses, StdCtrls,
  JvExControls, JvgLabel, ImgList;

type
  TFormPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    PanelMenu: TPanel;
    btnClientes: TBitBtn;
    btnOcorrencia: TBitBtn;
    MainMenu: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes: TMenuItem;
    Usurios1: TMenuItem;
    Alunos: TMenuItem;
    N3: TMenuItem;
    TipoProcesso: TMenuItem;
    Movimentos1: TMenuItem;
    LctoOcorrencia: TMenuItem;
    N1: TMenuItem;
    FilaAcompanhamento: TMenuItem;
    Relatrios1: TMenuItem;
    Utilitrio1: TMenuItem;
    Sobre1: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    PanelFundo: TPanel;
    Timer1: TTimer;
    JvgLabelFundo: TJvgLabel;
    btnFilaAcompanhamento: TBitBtn;
    btnFechar: TBitBtn;
    HistricoAcadmicos1: TMenuItem;
    HistricoClientes1: TMenuItem;
    N4: TMenuItem;
    CadastrodeClientes1: TMenuItem;
    CadastrodeAcadmicos1: TMenuItem;
    Ajuda1: TMenuItem;
    N5: TMenuItem;
    JvgLabel1: TJvgLabel;
    procedure Sair1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure AlunosClick(Sender: TObject);
    procedure ClientesClick(Sender: TObject);
    procedure TipoProcessoClick(Sender: TObject);
    procedure LctoOcorrenciaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnOcorrenciaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnFilaAcompanhamentoClick(Sender: TObject);
    procedure HistricoAcadmicos1Click(Sender: TObject);
    procedure FilaAcompanhamentoClick(Sender: TObject);
    procedure CadastrodeClientes1Click(Sender: TObject);
    procedure CadastrodeAcadmicos1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses uFormRelUsuario, uFormSobre, uFormAlunos, uFormClientes,
  uFormTipoProcessos, uFormOcorrencia, uDM, uFormFilaAcompanhamento,
  uFormHistoricoAlunos, uFormRelClientes, uFormRelAlunos;

{$R *.dfm}


procedure TFormPrincipal.AlunosClick(Sender: TObject);
begin
    try
      FormAlunos := TFormAlunos.Create(self);
      FormAlunos.ShowModal;
    finally
      FreeAndNil(FormAlunos);
    end;
end;

procedure TFormPrincipal.btnClientesClick(Sender: TObject);
begin
  ClientesClick(self);
end;

procedure TFormPrincipal.btnFecharClick(Sender: TObject);
begin
  Sair1Click(self);
end;

procedure TFormPrincipal.btnFilaAcompanhamentoClick(Sender: TObject);
begin
  try
    FormFilaAcompanhamento := TFormFilaAcompanhamento.Create(self);
    FormFilaAcompanhamento.Show;
  Except
    FreeAndNil(FormFilaAcompanhamento);
  end;
end;

procedure TFormPrincipal.btnOcorrenciaClick(Sender: TObject);
begin
  LctoOcorrenciaClick(self);
end;

procedure TFormPrincipal.CadastrodeAcadmicos1Click(Sender: TObject);
begin
  try
    FormRelAlunos := TFormRelAlunos.Create(self);
    FormRelAlunos.ShowModal;
  finally
    FreeAndNil(FormRelAlunos);
  end;
end;

procedure TFormPrincipal.CadastrodeClientes1Click(Sender: TObject);
begin
 try
    FormRelClientes := TFormRelClientes.Create(self);
    FormRelClientes.ShowModal;
  finally
    FreeAndNil(FormRelClientes);
  end;
end;

procedure TFormPrincipal.ClientesClick(Sender: TObject);
begin
  try
    FormClientes := TFormClientes.Create(self);
    FormClientes.ShowModal;
  finally
    FreeAndNil(FormClientes);
  end;
end;

procedure TFormPrincipal.FilaAcompanhamentoClick(Sender: TObject);
begin
  try
    FormFilaAcompanhamento := TFormFilaAcompanhamento.Create(self);
    FormFilaAcompanhamento.Show;
  Except
    FreeAndNil(FormFilaAcompanhamento);
  end;
end;

procedure TFormPrincipal.HistricoAcadmicos1Click(Sender: TObject);
begin
  try
    FormHistoricoAlunos := TFormHistoricoAlunos.Create(self);
    FormHistoricoAlunos.ShowModal;
  finally
    FreeAndNil(FormHistoricoAlunos);
  end;
end;

procedure TFormPrincipal.TipoProcessoClick(Sender: TObject);
begin
  try
    FormTipoProcessos := TFormTipoProcessos.Create(self);
    FormTipoProcessos.ShowModal;
  finally
    FreeAndNil(FormTipoProcessos);
  end;
end;

procedure TFormPrincipal.LctoOcorrenciaClick(Sender: TObject);
begin
  //try
    FormOcorrencia := TFormOcorrencia.Create(self);
    FormOcorrencia.Show;
  //finally
    //FreeAndNil(FormOcorrencia);
 // end;
end;

procedure TFormPrincipal.Sair1Click(Sender: TObject);
begin

  if Application.MessageBox('Deseja encerrar a Aplica??o ?','Aten??o',MB_YESNO+MB_ICONQUESTION) = mrNo then
    Abort;

  DM.conn.Close;
  Application.Terminate;

end;

procedure TFormPrincipal.Sobre1Click(Sender: TObject);
begin

  try
    FormSobre := TFormSobre.Create(self);
    FormSobre.ShowModal;
  finally
    FreeAndNil(FormSobre);
  end;


end;

procedure TFormPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := 'Software N?cleo de Pr?ticas Jur?dicas';
  StatusBar1.Panels[1].Text := 'Hora .: ' + TimeToStr(time);
  StatusBar1.Panels[2].Text := 'Data .: ' + datetostr(date);
end;

end.
