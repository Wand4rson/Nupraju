unit uFormLocClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, DB, SqlExpr, Provider, DBClient, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ExtCtrls, JvExStdCtrls,
  JvCombobox, DBCtrls, ComCtrls;

type
  TFormLocClientes = class(TForm)
    Panel2: TPanel;
    edt_busca: TEdit;
    grid: TJvDBUltimGrid;
    ds: TDataSource;
    cds: TClientDataSet;
    dsp: TDataSetProvider;
    qry: TSQLQuery;
    Panel1: TPanel;
    btnSelecionar: TBitBtn;
    btnFechar: TBitBtn;
    JvComboFiltro: TJvComboBox;
    Label2: TLabel;
    Label1: TLabel;
    paneldetalhes: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    qrycli_codigo: TIntegerField;
    qrycli_razao: TStringField;
    qrycli_fantasia: TStringField;
    qrycli_cep: TStringField;
    qryest_codigo: TStringField;
    qrycid_codigo: TStringField;
    qrycli_bairro: TStringField;
    qrycli_logradouro: TStringField;
    qrycli_enderecoreferencia: TStringField;
    qrycli_numero: TStringField;
    qrycli_fisicajuridica: TStringField;
    qrycli_cpfcnpj: TStringField;
    qrycli_rgie: TStringField;
    qrycli_telfixo: TStringField;
    qrycli_telfax: TStringField;
    qrycli_telcelular: TStringField;
    qrycli_contato: TStringField;
    qrycli_email: TStringField;
    qrycli_ativo: TStringField;
    qrycli_datacadastro: TDateField;
    qrycli_dataalterado: TDateField;
    qrycli_nomepai: TStringField;
    qrycli_nomemae: TStringField;
    qrycli_naturalidade: TStringField;
    qrycli_sexo: TStringField;
    qrycli_estadocivil: TStringField;
    qrycli_datanascimento: TDateField;
    qrycli_nomeconj: TStringField;
    cdscli_codigo: TIntegerField;
    cdscli_razao: TStringField;
    cdscli_fantasia: TStringField;
    cdscli_cep: TStringField;
    cdsest_codigo: TStringField;
    cdscid_codigo: TStringField;
    cdscli_bairro: TStringField;
    cdscli_logradouro: TStringField;
    cdscli_enderecoreferencia: TStringField;
    cdscli_numero: TStringField;
    cdscli_fisicajuridica: TStringField;
    cdscli_cpfcnpj: TStringField;
    cdscli_rgie: TStringField;
    cdscli_telfixo: TStringField;
    cdscli_telfax: TStringField;
    cdscli_telcelular: TStringField;
    cdscli_contato: TStringField;
    cdscli_email: TStringField;
    cdscli_ativo: TStringField;
    cdscli_datacadastro: TDateField;
    cdscli_dataalterado: TDateField;
    cdscli_nomepai: TStringField;
    cdscli_nomemae: TStringField;
    cdscli_naturalidade: TStringField;
    cdscli_sexo: TStringField;
    cdscli_estadocivil: TStringField;
    cdscli_datanascimento: TDateField;
    cdscli_nomeconj: TStringField;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dbtextnomefantasia: TDBText;
    dbtextcpfcnpj: TDBText;
    dbtextrgie: TDBText;
    dbtextendereco: TDBText;
    dbtextbairro: TDBText;
    qrycli_observacao: TMemoField;
    cdscli_observacao: TMemoField;
    status: TStatusBar;
    procedure btnFecharClick(Sender: TObject);
    procedure BuscaClientes(str_busca: string);
    procedure edt_buscaExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSelecionarClick(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cdsAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    codigo_cliente : integer;
  end;

var
  FormLocClientes: TFormLocClientes;

implementation

uses uDM;

{$R *.dfm}

procedure TFormLocClientes.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormLocClientes.btnSelecionarClick(Sender: TObject);
begin
  if cds.RecordCount = 0 then
    Abort;

  codigo_cliente := cds.Fields[0].AsInteger;
  ModalResult := mrOk;

end;

procedure TFormLocClientes.BuscaClientes(str_busca: string);
var
  sSQL : string;
begin

  sSQL := '';
  sSQL := sSQL + ' SELECT';
  sSQL := sSQL + '  *';
  sSQL := sSQL + ' FROM';
  sSQL := sSQL + '  clientes';
  sSQL := sSQL + ' WHERE';


  if JvComboFiltro.ItemIndex = 0 then
  //Nome Cliente//
    sSQL := sSQL + '  cli_razao LIKE'+QuotedStr('%'+str_busca+'%')+''
  else if JvComboFiltro.ItemIndex = 1 then
  //Codigo Cliente//
    sSQL := sSQL + '  cli_codigo LIKE'+QuotedStr('%'+str_busca+'%')+''
  else if JvComboFiltro.ItemIndex = 2 then
  //CPF/CNPJ//
    sSQL := sSQL + '  cli_cpfcnpj LIKE'+QuotedStr('%'+str_busca+'%')+''
  else if JvComboFiltro.ItemIndex = 3 then
  //Fone Fixo//
    sSQL := sSQL + '  cli_telfixo LIKE'+QuotedStr('%'+str_busca+'%')+''
  else if JvComboFiltro.ItemIndex = 3 then
   //Fone Celular//
    sSQL := sSQL + '  cli_telfixo LIKE'+QuotedStr('%'+str_busca+'%')+'';


  try
    cds.Close;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add(sSQL);
    cds.Open;
  except on e : Exception do
      begin
        Application.MessageBox(pchar('Erro ao concluir pesquisa de Clientes. Erro.: '+e.Message+''),'Aten??o',MB_OK+MB_ICONERROR);
      end;
  end;
end;

procedure TFormLocClientes.cdsAfterOpen(DataSet: TDataSet);
begin
  status.Panels[0].Text := 'Quantidade de Registro(s) Encontrado(s) ' + IntToStr(cds.RecordCount);
end;

procedure TFormLocClientes.edt_buscaExit(Sender: TObject);
begin
  if trim(edt_busca.Text) <> EmptyStr then
    BuscaClientes(edt_busca.Text);

end;

procedure TFormLocClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cds.Close;
end;

procedure TFormLocClientes.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormLocClientes.FormShow(Sender: TObject);
begin
  cds.Open;
end;

procedure TFormLocClientes.gridDblClick(Sender: TObject);
begin
  btnSelecionarClick(Self);
end;

end.


