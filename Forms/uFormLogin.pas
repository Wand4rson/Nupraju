unit uFormLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, dxGDIPlusClasses;

type
  TFormLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edt_usuario: TEdit;
    edt_senha: TEdit;
    Label3: TLabel;
    Panel1: TPanel;
    btnCancelar: TBitBtn;
    btnOk: TBitBtn;
    Image1: TImage;
    Image2: TImage;
    Label4: TLabel;
    Image3: TImage;
    Shape1: TShape;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnOkClick(Sender: TObject);
    function fVerificaLogin(usuario, senha: string): Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses uDM;

{$R *.dfm}

procedure TFormLogin.btnCancelarClick(Sender: TObject);
begin

  Application.Terminate;
end;

procedure TFormLogin.btnOkClick(Sender: TObject);
begin
 if trim(edt_usuario.Text)= '' then
    begin
      Application.MessageBox('Usu?rio Obrigat?rio !','Aten??o',MB_OK+MB_ICONEXCLAMATION);
      Abort;
    end;


  if trim(edt_senha.Text)= '' then
    begin
      Application.MessageBox('Senha Obrigat?rio !','Aten??o',MB_OK+MB_ICONEXCLAMATION);
      Abort;
    end;

    if fVerificaLogin(edt_usuario.Text,edt_senha.Text) = False then
      begin
        Application.MessageBox('Usu?rio/Senha Incorreto !','Aten??o',MB_OK+MB_ICONEXCLAMATION);
        Abort;
      end;

      ModalResult := mrOk;
end;

procedure TFormLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(40, 0, 0);
  end;

  if Key = #27 then
  begin
    Key := #0;
  end;

end;

//Senha dos Usu?rios Verificar//
function TFormLogin.fVerificaLogin(usuario, senha: string): Boolean;
var
  sql: string;
  res: string;
begin

  if (usuario = 'ADMIN') and (senha = 'ADMIN')then
  begin
    Result := True;
    ModalResult := mrOk;
  end
  else
    begin
    Result := False;
  end;

end;

end.
