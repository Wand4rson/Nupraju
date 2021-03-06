unit uFormRelClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Provider, DBClient,
  Mask, JvExMask, JvToolEdit, JvExStdCtrls, JvCombobox, frxClass, frxDBSet,
  dxGDIPlusClasses;

type
  TFormRelClientes = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    PanelCabecalho: TPanel;
    qryrelcliente: TSQLQuery;
    qryrelclientecli_codigo: TIntegerField;
    qryrelclientecli_razao: TStringField;
    qryrelclientecli_fantasia: TStringField;
    qryrelclientecli_cep: TStringField;
    qryrelclienteest_codigo: TStringField;
    qryrelclientecid_codigo: TStringField;
    qryrelclientecli_bairro: TStringField;
    qryrelclientecli_logradouro: TStringField;
    qryrelclientecli_enderecoreferencia: TStringField;
    qryrelclientecli_numero: TStringField;
    qryrelclientecli_fisicajuridica: TStringField;
    qryrelclientecli_cpfcnpj: TStringField;
    qryrelclientecli_rgie: TStringField;
    qryrelclientecli_telfixo: TStringField;
    qryrelclientecli_telfax: TStringField;
    qryrelclientecli_telcelular: TStringField;
    qryrelclientecli_contato: TStringField;
    qryrelclientecli_email: TStringField;
    qryrelclientecli_ativo: TStringField;
    qryrelclientecli_datacadastro: TDateField;
    qryrelclientecli_dataalterado: TDateField;
    qryrelclientecli_nomepai: TStringField;
    qryrelclientecli_nomemae: TStringField;
    qryrelclientecli_naturalidade: TStringField;
    qryrelclientecli_sexo: TStringField;
    qryrelclientecli_estadocivil: TStringField;
    qryrelclientecli_datanascimento: TDateField;
    qryrelclientecli_nomeconj: TStringField;
    qryrelclientecli_observacao: TMemoField;
    dsprelcliente: TDataSetProvider;
    cdsrelcliente: TClientDataSet;
    cdsrelclientecli_codigo: TIntegerField;
    cdsrelclientecli_razao: TStringField;
    cdsrelclientecli_fantasia: TStringField;
    cdsrelclientecli_cep: TStringField;
    cdsrelclienteest_codigo: TStringField;
    cdsrelclientecid_codigo: TStringField;
    cdsrelclientecli_bairro: TStringField;
    cdsrelclientecli_logradouro: TStringField;
    cdsrelclientecli_enderecoreferencia: TStringField;
    cdsrelclientecli_numero: TStringField;
    cdsrelclientecli_fisicajuridica: TStringField;
    cdsrelclientecli_cpfcnpj: TStringField;
    cdsrelclientecli_rgie: TStringField;
    cdsrelclientecli_telfixo: TStringField;
    cdsrelclientecli_telfax: TStringField;
    cdsrelclientecli_telcelular: TStringField;
    cdsrelclientecli_contato: TStringField;
    cdsrelclientecli_email: TStringField;
    cdsrelclientecli_ativo: TStringField;
    cdsrelclientecli_datacadastro: TDateField;
    cdsrelclientecli_dataalterado: TDateField;
    cdsrelclientecli_nomepai: TStringField;
    cdsrelclientecli_nomemae: TStringField;
    cdsrelclientecli_naturalidade: TStringField;
    cdsrelclientecli_sexo: TStringField;
    cdsrelclientecli_estadocivil: TStringField;
    cdsrelclientecli_datanascimento: TDateField;
    cdsrelclientecli_nomeconj: TStringField;
    cdsrelclientecli_observacao: TMemoField;
    GroupBox1: TGroupBox;
    JvDateFinal: TJvDateEdit;
    JvDateInicial: TJvDateEdit;
    Label4: TLabel;
    Label3: TLabel;
    JvComboFiltroAtivo: TJvComboBox;
    Label1: TLabel;
    frxDBDatasetRelClientes: TfrxDBDataset;
    pnlTopo: TPanel;
    Image1: TImage;
    Label2: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure Imprimir;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelClientes: TFormRelClientes;

implementation

uses uDM, uDMReports, uLibs;

{$R *.dfm}

procedure TFormRelClientes.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormRelClientes.btnImprimirClick(Sender: TObject);
begin
  Imprimir;
end;

procedure TFormRelClientes.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormRelClientes.Imprimir;
  var
  sSQL:string;
  sCaminhoRel,sParametros:string;
begin

    sParametros := '';

    sSQL := '';
    sSQL := sSQL + ' SELECT';
    sSQL := sSQL + ' cli_codigo,';
    sSQL := sSQL + ' cli_razao,';
    sSQL := sSQL + ' cli_fantasia,';
    sSQL := sSQL + ' cli_cep,';
    sSQL := sSQL + ' est_codigo,';
    sSQL := sSQL + ' cid_codigo,';
    sSQL := sSQL + ' cli_bairro,';
    sSQL := sSQL + ' cli_logradouro,';
    sSQL := sSQL + ' cli_enderecoreferencia,';
    sSQL := sSQL + ' cli_numero,';
    sSQL := sSQL + ' cli_fisicajuridica,';
    sSQL := sSQL + ' cli_cpfcnpj,';
    sSQL := sSQL + ' cli_rgie,';
    sSQL := sSQL + ' cli_telfixo,';
    sSQL := sSQL + ' cli_telfax,';
    sSQL := sSQL + ' cli_telcelular,';
    sSQL := sSQL + ' cli_contato,';
    sSQL := sSQL + ' cli_email,';
    sSQL := sSQL + ' cli_ativo,';
    sSQL := sSQL + ' cli_datacadastro,';
    sSQL := sSQL + ' cli_dataalterado,';
    sSQL := sSQL + ' cli_nomepai,';
    sSQL := sSQL + ' cli_nomemae,';
    sSQL := sSQL + ' cli_naturalidade,';
    sSQL := sSQL + ' cli_sexo,';
    sSQL := sSQL + ' cli_estadocivil,';
    sSQL := sSQL + ' cli_datanascimento,';
    sSQL := sSQL + ' cli_nomeconj,';
    sSQL := sSQL + ' cli_observacao';
    sSQL := sSQL + ' FROM';
    sSQL := sSQL + ' clientes';
    sSQL := sSQL + ' WHERE cli_codigo<>0';

    //Filtro Data de Cadastro
    if (valida_DateNoEmpty(JvDateInicial.Text)) and (valida_DateNoEmpty(JvDateFinal.Text)) then
       begin
        sSQL := sSQL + ' AND ((cli_datacadastro >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', JvDateInicial.Date)) + ')';
        sSQL := sSQL + ' AND (cli_datacadastro <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', JvDateFinal.Date)) + '))';

         sParametros := 'Data de Cadastro de ' + JvDateInicial.Text + ' at? ' + JvDateFinal.Text;

       end;

    //Filtro Status
    //Ambos
    //Ativo
    //Inativo

    sParametros := sParametros + '  Situa??o Clientes : ' + JvComboFiltroAtivo.Text +'';

    if (JvComboFiltroAtivo.ItemIndex = 1) then
      sSQL := sSQL + ' AND cli_ativo = ' + QuotedStr('sim')+''
    else if (JvComboFiltroAtivo.ItemIndex = 2) then
      sSQL := sSQL + ' AND cli_ativo = ' + QuotedStr('nao')+'';


    qryrelcliente.Close;
    qryrelcliente.SQL.Clear;
    qryrelcliente.SQL.Add(sSQL);
    //qryrelcliente.SQL.SaveToFile('c:\relcli.sql');
    cdsrelcliente.Close;
    cdsrelcliente.Open;

   sCaminhoRel := 'C:\Nupraju\Reports\';
   DMReports.frxReport.Clear;
   DMReports.frxReport.LoadFromFile(sCaminhoRel + 'rellistaclientes.fr3');
   DMReports.frxReport.Variables.Variables['parametros'] := QuotedStr(sParametros);
   DMReports.frxReport.ShowReport;

end;

end.
