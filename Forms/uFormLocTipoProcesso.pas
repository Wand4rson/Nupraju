unit uFormLocTipoProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TFormLocTipoProcesso = class(TForm)
    grid: TJvDBUltimGrid;
    Panel2: TPanel;
    Label1: TLabel;
    edt_busca: TEdit;
    Panel1: TPanel;
    btnSelecionar: TBitBtn;
    btnFechar: TBitBtn;
    qry: TSQLQuery;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    qrytp_codigo: TIntegerField;
    qrytp_descricao: TStringField;
    qrytp_ativo: TStringField;
    cdstp_codigo: TIntegerField;
    cdstp_descricao: TStringField;
    cdstp_ativo: TStringField;
    procedure btnSelecionarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BuscaProcesso(str_busca: string);
    procedure edt_buscaExit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tipoprocesso_codigo : integer;
  end;

var
  FormLocTipoProcesso: TFormLocTipoProcesso;

implementation

uses uDM;

{$R *.dfm}

procedure TFormLocTipoProcesso.btnFecharClick(Sender: TObject);
begin
    close;
end;

procedure TFormLocTipoProcesso.btnSelecionarClick(Sender: TObject);
begin
if cds.RecordCount = 0  then
    Abort;

  tipoprocesso_codigo := cds.Fields[0].AsInteger;
  ModalResult :=mrOk;
end;

procedure TFormLocTipoProcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cds.Close;
end;

procedure TFormLocTipoProcesso.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormLocTipoProcesso.FormShow(Sender: TObject);
begin
  cds.Open;
end;


procedure TFormLocTipoProcesso.gridDblClick(Sender: TObject);
begin
  btnSelecionarClick(Self);
end;

procedure TFormLocTipoProcesso.BuscaProcesso(str_busca: string);
var
  sSQL : string;
begin

  sSQL := '';
  sSQL := sSQL + ' SELECT';
  sSQL := sSQL + '  tp_codigo,';
  sSQL := sSQL + '  tp_descricao,';
  sSQL := sSQL + '  tp_ativo';
  sSQL := sSQL + ' FROM';
  sSQL := sSQL + '  tipo_processo';
  sSQL := sSQL + ' WHERE';
  ssql := ssql + ' tp_ativo=''sim''';
  sSQL := sSQL + ' AND tp_descricao LIKE'+QuotedStr('%'+str_busca+'%')+'';

  try
    cds.Close;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add(sSQL);
    cds.Open;
  except on e : Exception do
      begin
        Application.MessageBox(pchar('Erro ao concluir pesquisa. Erro.: '+e.Message+''),'Aten??o',MB_OK+MB_ICONERROR);
      end;
  end;
end;


procedure TFormLocTipoProcesso.edt_buscaExit(Sender: TObject);
begin
if trim(edt_busca.Text) <> EmptyStr then
    BuscaProcesso(edt_busca.Text);

end;

end.
