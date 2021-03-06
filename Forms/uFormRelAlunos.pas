unit uFormRelAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, frxClass, frxDBSet, DBClient, Provider, StdCtrls, Buttons,
  DB, SqlExpr, JvExStdCtrls, JvCombobox, Mask, JvExMask, JvToolEdit, ExtCtrls,
  dxGDIPlusClasses;

type
  TFormRelAlunos = class(TForm)
    PanelCabecalho: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    JvDateFinal: TJvDateEdit;
    JvDateInicial: TJvDateEdit;
    JvComboFiltroAtivo: TJvComboBox;
    qryrelaluno: TSQLQuery;
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    dsprelaluno: TDataSetProvider;
    cdsrelaluno: TClientDataSet;
    frxDBDatasetRelAlunos: TfrxDBDataset;
    qryrelalunoalu_nome: TStringField;
    qryrelalunoalu_email: TStringField;
    qryrelalunoalu_telfixo: TStringField;
    qryrelalunoalu_telcelular: TStringField;
    qryrelalunoalu_endereco: TStringField;
    qryrelalunoalu_bairro: TStringField;
    qryrelalunoestado_codigo: TStringField;
    qryrelalunocidade_codigo: TStringField;
    qryrelalunoalu_observacao: TMemoField;
    qryrelalunoalu_datanascimento: TDateField;
    qryrelalunoalu_localnascimento: TStringField;
    qryrelalunoalu_ativo: TStringField;
    qryrelalunoalu_datacadastro: TDateField;
    qryrelalunoalu_dataalterado: TDateField;
    cdsrelalunoalu_nome: TStringField;
    cdsrelalunoalu_email: TStringField;
    cdsrelalunoalu_telfixo: TStringField;
    cdsrelalunoalu_telcelular: TStringField;
    cdsrelalunoalu_endereco: TStringField;
    cdsrelalunoalu_bairro: TStringField;
    cdsrelalunoestado_codigo: TStringField;
    cdsrelalunocidade_codigo: TStringField;
    cdsrelalunoalu_observacao: TMemoField;
    cdsrelalunoalu_datanascimento: TDateField;
    cdsrelalunoalu_localnascimento: TStringField;
    cdsrelalunoalu_ativo: TStringField;
    cdsrelalunoalu_datacadastro: TDateField;
    cdsrelalunoalu_dataalterado: TDateField;
    pnlTopo: TPanel;
    Image1: TImage;
    Label2: TLabel;
    qryrelalunoalu_matricula: TLargeintField;
    cdsrelalunoalu_matricula: TLargeintField;
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
  FormRelAlunos: TFormRelAlunos;

implementation

uses uDM, uDMReports, uLibs;

{$R *.dfm}

procedure TFormRelAlunos.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormRelAlunos.btnImprimirClick(Sender: TObject);
begin
  Imprimir;
end;

procedure TFormRelAlunos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormRelAlunos.Imprimir;
  var
  sSQL,sParametros,sCaminhoRel:string;
begin
    sParametros := '';

    sSQL := '';
    sSQL := sSQL + ' SELECT';
    sSQL := sSQL + ' alu_matricula,';
    sSQL := sSQL + ' alu_nome,';
    sSQL := sSQL + ' alu_email,';
    sSQL := sSQL + ' alu_telfixo,';
    sSQL := sSQL + ' alu_telcelular,';
    sSQL := sSQL + ' alu_endereco,';
    sSQL := sSQL + ' alu_bairro,';
    sSQL := sSQL + ' estado_codigo,';
    sSQL := sSQL + ' cidade_codigo,';
    sSQL := sSQL + ' alu_observacao,';
    sSQL := sSQL + ' alu_datanascimento,';
    sSQL := sSQL + ' alu_localnascimento,';
    sSQL := sSQL + ' alu_ativo,';
    sSQL := sSQL + ' alu_datacadastro,';
    sSQL := sSQL + ' alu_dataalterado';
    sSQL := sSQL + ' FROM';
    sSQL := sSQL + '  alunos';
    sSQL := sSQL + ' WHERE alu_matricula<>0';

    //Filtro Data de Cadastro
    if (valida_DateNoEmpty(JvDateInicial.Text)) and (valida_DateNoEmpty(JvDateFinal.Text)) then
       begin
        sSQL := sSQL + ' AND ((alu_datacadastro >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', JvDateInicial.Date)) + ')';
        sSQL := sSQL + ' AND (alu_datacadastro <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', JvDateFinal.Date)) + '))';

         sParametros := 'Data de Cadastro de ' + JvDateInicial.Text + ' at? ' + JvDateFinal.Text;

       end;

    //Filtro Status
    //Ambos
    //Ativo
    //Inativo

    sParametros := sParametros + '  Situa??o Acad?micos : ' + JvComboFiltroAtivo.Text +'';

    if (JvComboFiltroAtivo.ItemIndex = 1) then
      sSQL := sSQL + ' AND alu_ativo = ' + QuotedStr('sim')+''
    else if (JvComboFiltroAtivo.ItemIndex = 2) then
      sSQL := sSQL + ' AND alu_ativo = ' + QuotedStr('nao')+'';


    qryrelaluno.Close;
    qryrelaluno.SQL.Clear;
    qryrelaluno.SQL.Add(sSQL);
    //qryrelcliente.SQL.SaveToFile('c:\relcli.sql');
    cdsrelaluno.Close;
    cdsrelaluno.Open;

   sCaminhoRel := 'C:\Nupraju\Reports\';
   DMReports.frxReport.Clear;
   DMReports.frxReport.LoadFromFile(sCaminhoRel + 'rellistaalunos.fr3');
   DMReports.frxReport.Variables.Variables['parametros'] := QuotedStr(sParametros);
   DMReports.frxReport.ShowReport;

end;

end.
