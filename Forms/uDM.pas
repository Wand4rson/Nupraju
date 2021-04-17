unit uDM;

interface

uses
  Windows,SysUtils, Classes, WideStrings, DBXMySql, DB, SqlExpr,Forms,Dialogs,Messages,
  frxClass, frxExportPDF, frxExportXLS, frxExportHTML;

type
  TDM = class(TDataModule)
    conn: TSQLConnection;
    sqlMonitor: TSQLMonitor;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
  var
  sConfBanco : string;
begin
  try
      sConfBanco :=  ExtractFilePath(Application.ExeName) + 'dbxconnections.ini';
      conn.Close;
      conn.LoadParamsFromIniFile(sConfBanco);
      conn.Open;
      //sqlMonitor.Active := True;
  except
    On e : Exception do
    begin
      Application.MessageBox(pchar('Erro ao Conectar no Banco de Dados .:  '+e.Message),'Atenção',MB_OK+MB_ICONERROR);
      Application.Terminate;
    end;
  end;






end;

end.
