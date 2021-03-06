unit uFormLocCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, DBClient, Provider, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, JvDBUltimGrid, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TFormLocCidades = class(TForm)
    qry: TSQLQuery;
    qrycid_codigo: TStringField;
    qrycid_nome: TStringField;
    qryest_nome: TStringField;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdscid_codigo: TStringField;
    cdscid_nome: TStringField;
    cdsest_nome: TStringField;
    grid: TJvDBUltimGrid;
    ds: TDataSource;
    Panel1: TPanel;
    btnSelecionar: TBitBtn;
    btnFechar: TBitBtn;
    Panel2: TPanel;
    edt_busca: TEdit;
    Label1: TLabel;
    status: TStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BuscaCidade(str_busca:string);
    procedure edt_buscaExit(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure cdsAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    cidade_codigo:integer;
  end;

var
  FormLocCidades: TFormLocCidades;

implementation

uses uDM;

{$R *.dfm}

procedure TFormLocCidades.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormLocCidades.btnSelecionarClick(Sender: TObject);
begin
  if cds.RecordCount = 0  then
    Abort;

  cidade_codigo := cds.Fields[0].AsInteger;
  ModalResult :=mrOk;

end;

procedure TFormLocCidades.BuscaCidade(str_busca: string);
var
  sSQL : string;
begin

  sSQL := '';
  sSQL := sSQL + ' SELECT';
  sSQL := sSQL + '  ci.cid_codigo,';
  sSQL := sSQL + '  ci.cid_nome,';
  sSQL := sSQL + '  est.est_nome';
  sSQL := sSQL + ' FROM';
  sSQL := sSQL + '  cidade ci';
  sSQL := sSQL + ' INNER JOIN estado est ON(est.est_codigo=ci.est_codigo)';
  sSQL := sSQL + ' WHERE';
  sSQL := sSQL + ' ci.cid_nome LIKE'+QuotedStr('%'+str_busca+'%')+'';

  try
    cds.Close;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add(sSQL);
    cds.Open;
  except on e : Exception do
      begin
        Application.MessageBox(pchar('Erro ao concluir pesquisa de cidade. Erro.: '+e.Message+''),'Aten??o',MB_OK+MB_ICONERROR);
      end;
  end;
end;

procedure TFormLocCidades.cdsAfterOpen(DataSet: TDataSet);
begin
   status.Panels[0].Text := 'Quantidade de Registro(s) Encontrado(s) ' + IntToStr(cds.RecordCount);
end;

procedure TFormLocCidades.edt_buscaExit(Sender: TObject);
begin
  if trim(edt_busca.Text) <> EmptyStr then
    BuscaCidade(edt_busca.Text);

end;

procedure TFormLocCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cds.Close;
end;

procedure TFormLocCidades.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormLocCidades.FormShow(Sender: TObject);
begin
  cds.Open;
end;

procedure TFormLocCidades.gridDblClick(Sender: TObject);
begin
  btnSelecionarClick(Self);
end;

end.
