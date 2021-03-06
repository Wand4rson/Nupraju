unit uFormLocAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, StdCtrls,
  Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Provider, DBClient, JvExStdCtrls,
  JvCombobox, DBCtrls, ComCtrls;

type
  TFormLocAlunos = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    edt_busca: TEdit;
    Panel1: TPanel;
    btnSelecionar: TBitBtn;
    btnFechar: TBitBtn;
    grid: TJvDBUltimGrid;
    qry: TSQLQuery;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    JvComboFiltro: TJvComboBox;
    Label2: TLabel;
    qryalu_nome: TStringField;
    qryalu_email: TStringField;
    qryalu_telfixo: TStringField;
    qryalu_telcelular: TStringField;
    qryalu_endereco: TStringField;
    qryalu_bairro: TStringField;
    qryestado_codigo: TStringField;
    qrycidade_codigo: TStringField;
    qryalu_observacao: TMemoField;
    qryalu_datanascimento: TDateField;
    qryalu_localnascimento: TStringField;
    qryalu_ativo: TStringField;
    qryalu_datacadastro: TDateField;
    qryalu_dataalterado: TDateField;
    cdsalu_nome: TStringField;
    cdsalu_email: TStringField;
    cdsalu_telfixo: TStringField;
    cdsalu_telcelular: TStringField;
    cdsalu_endereco: TStringField;
    cdsalu_bairro: TStringField;
    cdsestado_codigo: TStringField;
    cdscidade_codigo: TStringField;
    cdsalu_observacao: TMemoField;
    cdsalu_datanascimento: TDateField;
    cdsalu_localnascimento: TStringField;
    cdsalu_ativo: TStringField;
    cdsalu_datacadastro: TDateField;
    cdsalu_dataalterado: TDateField;
    paneldetalhes: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbtextendereco: TDBText;
    dbtextbairro: TDBText;
    dbtextemail: TDBText;
    status: TStatusBar;
    qryalu_matricula: TLargeintField;
    cdsalu_matricula: TLargeintField;
    procedure btnFecharClick(Sender: TObject);
    procedure BuscaAlunos(str_busca:string);
    procedure edt_buscaExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure cdsAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    nro_matricula:Largeint;
  end;

var
  FormLocAlunos: TFormLocAlunos;

implementation

uses uDM;

{$R *.dfm}

procedure TFormLocAlunos.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormLocAlunos.btnSelecionarClick(Sender: TObject);
begin
  if cds.RecordCount = 0 then
    abort;

  nro_matricula:= cds.Fields[0].AsLargeInt;
  ModalResult := mrOk;

end;

procedure TFormLocAlunos.BuscaAlunos(str_busca: string);
var
  sSQL : string;
begin

  sSQL := '';
  sSQL := sSQL + ' SELECT';
  sSQL := sSQL + '  *';
  sSQL := sSQL + ' FROM';
  sSQL := sSQL + '  alunos';
  sSQL := sSQL + ' WHERE';

  if JvComboFiltro.ItemIndex = 0 then
      sSQL := sSQL + '  alu_nome LIKE'+QuotedStr('%'+str_busca+'%')+''
  else
      sSQL := sSQL + '  alu_matricula LIKE'+QuotedStr('%'+str_busca+'%')+'';


  try
    cds.Close;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add(sSQL);
    cds.Open;
  except on e : Exception do
      begin
        Application.MessageBox(pchar('Erro ao concluir pesquisa de Alunos. Erro.: '+e.Message+''),'Aten??o',MB_OK+MB_ICONERROR);
      end;
  end;
end;

procedure TFormLocAlunos.cdsAfterOpen(DataSet: TDataSet);
begin
 status.Panels[0].Text := 'Quantidade de Registro(s) Encontrado(s) ' + IntToStr(cds.RecordCount);
end;

procedure TFormLocAlunos.edt_buscaExit(Sender: TObject);
begin
 if trim(edt_busca.Text) <> EmptyStr then
    BuscaAlunos(edt_busca.Text);
end;

procedure TFormLocAlunos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cds.Close;
end;

procedure TFormLocAlunos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormLocAlunos.FormShow(Sender: TObject);
begin
  cds.Open;
end;

procedure TFormLocAlunos.gridDblClick(Sender: TObject);
begin
  btnSelecionarClick(Self);
end;

end.
