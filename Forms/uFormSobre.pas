unit uFormSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, JvExControls, JvgLabel, Buttons, dxGDIPlusClasses;

type
  TFormSobre = class(TForm)
    PanelBotao: TPanel;
    btnClose: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSobre: TFormSobre;

implementation

{$R *.dfm}

procedure TFormSobre.btnCloseClick(Sender: TObject);
begin
  close;
end;

end.
