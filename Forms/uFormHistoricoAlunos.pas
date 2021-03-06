unit uFormHistoricoAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, dxGDIPlusClasses, Mask, JvExMask,
  JvToolEdit, JvDBControls, FMTBcd, DBClient, Provider, DB, SqlExpr, frxClass,
  frxDBSet;

type
  TFormHistoricoAlunos = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    PanelCabecalho: TPanel;
    edt_nome_aluno: TEdit;
    Label32: TLabel;
    Label1: TLabel;
    JvComboCliente: TJvComboEdit;
    edt_nome_cliente: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    JvComboAcademico: TJvComboEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    JvDateFinal: TJvDateEdit;
    JvDateInicial: TJvDateEdit;
    pnlTopo: TPanel;
    Image1: TImage;
    Label2: TLabel;
    QryHistorico: TSQLQuery;
    dspHistorico: TDataSetProvider;
    cdsHistorico: TClientDataSet;
    QryHistoricoalu_nome: TStringField;
    QryHistoricoocr_datalancamento: TDateField;
    QryHistoricoocr_horalancamento: TStringField;
    QryHistoricoocr_codigo: TIntegerField;
    QryHistoricoocr_item_codigo: TIntegerField;
    QryHistoricoocr_item_datalancamento: TDateField;
    QryHistoricocliente_codigo: TIntegerField;
    QryHistoricocli_razao: TStringField;
    QryHistoricoocr_item_nroprocesso: TStringField;
    QryHistoricoocr_item_observacao: TMemoField;
    QryHistoricoocr_item_cargahoraria: TFloatField;
    QryHistoricotipo_codigo: TIntegerField;
    QryHistoricoocr_item_status: TStringField;
    QryHistoricotp_descricao: TStringField;
    cdsHistoricoalu_nome: TStringField;
    cdsHistoricoocr_datalancamento: TDateField;
    cdsHistoricoocr_horalancamento: TStringField;
    cdsHistoricoocr_codigo: TIntegerField;
    cdsHistoricoocr_item_codigo: TIntegerField;
    cdsHistoricoocr_item_datalancamento: TDateField;
    cdsHistoricocliente_codigo: TIntegerField;
    cdsHistoricocli_razao: TStringField;
    cdsHistoricoocr_item_nroprocesso: TStringField;
    cdsHistoricoocr_item_observacao: TMemoField;
    cdsHistoricoocr_item_cargahoraria: TFloatField;
    cdsHistoricotipo_codigo: TIntegerField;
    cdsHistoricoocr_item_status: TStringField;
    cdsHistoricotp_descricao: TStringField;
    frxDBDatasetHistoricoAcademico: TfrxDBDataset;
    QryHistoricoocr_item_dataconclusao: TDateField;
    QryHistoricoocr_item_horalancamento: TStringField;
    QryHistoricoocr_item_horaconclusao: TStringField;
    QryHistoricoSituacao: TStringField;
    cdsHistoricoocr_item_dataconclusao: TDateField;
    cdsHistoricoocr_item_horalancamento: TStringField;
    cdsHistoricoocr_item_horaconclusao: TStringField;
    cdsHistoricoSituacao: TStringField;
    RadioDataLcto: TRadioButton;
    RadioDataConcluido: TRadioButton;
    QryHistoricoalu_matricula: TLargeintField;
    cdsHistoricoalu_matricula: TLargeintField;
    procedure btnFecharClick(Sender: TObject);
    procedure JvComboClienteButtonClick(Sender: TObject);
    procedure JvComboClienteChange(Sender: TObject);
    procedure JvComboClienteExit(Sender: TObject);
    procedure JvComboAcademicoButtonClick(Sender: TObject);
    procedure JvComboAcademicoChange(Sender: TObject);
    procedure JvComboAcademicoExit(Sender: TObject);
    procedure Imprimir;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHistoricoAlunos: TFormHistoricoAlunos;

implementation

uses uFormLocAlunos, uFormLocClientes, uLibs, uDM, uDMReports;


{$R *.dfm}

procedure TFormHistoricoAlunos.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormHistoricoAlunos.btnImprimirClick(Sender: TObject);
begin
  Imprimir;
end;

procedure TFormHistoricoAlunos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormHistoricoAlunos.Imprimir;
var
  sSQL,sParametros,sCaminhoRel:string;
begin
  sSQL := '';
  sSQL := sSQL + ' SELECT';
  sSQL := sSQL + '  oc.alu_matricula,';
  sSQL := sSQL + '  alu.alu_nome,';
  sSQL := sSQL + '  oc.ocr_datalancamento,';
  sSQL := sSQL + '  oc.ocr_horalancamento,';
  sSQL := sSQL + '  oci.ocr_codigo,';
  sSQL := sSQL + '  oci.ocr_item_codigo,';
  sSQL := sSQL + '  oci.ocr_item_datalancamento,';
  sSQL := sSQL + '  oci.cliente_codigo,';
  sSQL := sSQL + '  c.cli_razao,';
  sSQL := sSQL + '  oci.ocr_item_nroprocesso,';
  sSQL := sSQL + '  oci.ocr_item_observacao,';
  sSQL := sSQL + '  oci.ocr_item_cargahoraria,';
  sSQL := sSQL + '  oci.tipo_codigo,';
  sSQL := sSQL + '  oci.ocr_item_status,';
  sSQL := sSQL + '  tp.tp_descricao,';
  sSQL := sSQL + '  oci.ocr_item_dataconclusao,';
  sSQL := sSQL + '  oci.ocr_item_horalancamento,';
  sSQL := sSQL + '  oci.ocr_item_horaconclusao,';
  sSQL := sSQL + '   CASE WHEN oci.ocr_item_status = "con" THEN "CONCLUIDO" ELSE "ANDAMENTO" END AS "Situacao"';
  sSQL := sSQL + ' FROM';
  sSQL := sSQL + '  ocorrencia_itens oci';
  sSQL := sSQL + ' INNER JOIN ocorrencia oc ON(oc.ocr_codigo=oci.ocr_codigo)';
  sSQL := sSQL + ' INNER JOIN alunos alu ON (alu.alu_matricula = oc.alu_matricula)';
  sSQL := sSQL + ' INNER JOIN clientes c ON(c.cli_codigo=oci.cliente_codigo)';
  sSQL := sSQL + ' INNER JOIN tipo_processo tp ON(tp.tp_codigo=oci.tipo_codigo)';
  sSQL := sSQL + ' WHERE oc.alu_matricula<>0';

  //Filtro Data de Movimento do Item//
  if (valida_DateNoEmpty(JvDateInicial.Text)) and (valida_DateNoEmpty(JvDateFinal.Text)) then
     begin

       if (RadioDataLcto.Checked = True) then
       begin
            sSQL := sSQL + ' AND ((oci.ocr_item_datalancamento >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', JvDateInicial.Date)) + ')';
            sSQL := sSQL + ' AND (oci.ocr_item_datalancamento <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', JvDateFinal.Date)) + '))';
            sParametros := 'Data de Movimento [Lan?amento] de ' + JvDateInicial.Text + ' at? ' + JvDateFinal.Text +'';
       end
       else
       begin
            sSQL := sSQL + ' AND ((oci.ocr_item_dataconclusao >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', JvDateInicial.Date)) + ')';
            sSQL := sSQL + ' AND (oci.ocr_item_dataconclusao <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', JvDateFinal.Date)) + '))';
            sParametros := 'Data de Movimento [Conclus?o] de ' + JvDateInicial.Text + ' at? ' + JvDateFinal.Text +'';
       end;
     end;

  //Cliente//
  if (JvComboCliente.Text <> EmptyStr) or (edt_nome_cliente.Text <> EmptyStr) then
  begin
       sSQL := sSQL + '  AND oci.cliente_codigo='+QuotedStr(JvComboCliente.Text)+'';
       sParametros := 'Cliente : ' + JvComboCliente.Text + ' - ' + edt_nome_cliente.Text;
  end;

  //Aluno//
  if (JvComboAcademico.Text <> EmptyStr) or (edt_nome_aluno.Text <> EmptyStr) then
  begin
       sSQL := sSQL + '  AND oc.alu_matricula='+QuotedStr(JvComboAcademico.Text)+'';
       sParametros := 'Acad?mico : ' + JvComboAcademico.Text + ' - ' + edt_nome_aluno.Text;
  end;

  sSQL := sSQL + ' ORDER BY';
  sSQL := sSQL + '  oc.ocr_codigo DESC, oci.ocr_item_codigo ASC';


  QryHistorico.Close;
  QryHistorico.SQL.Clear;
  QryHistorico.SQL.Add(sSQL);
  cdsHistorico.Close;
  cdsHistorico.Open;

   sCaminhoRel := 'C:\Nupraju\Reports\';
   DMReports.frxReport.Clear;
   DMReports.frxReport.LoadFromFile(sCaminhoRel + 'relhistoricoaluno.fr3');
   DMReports.frxReport.Variables.Variables['parametros'] := QuotedStr(sParametros);
   DMReports.frxReport.ShowReport;

end;

procedure TFormHistoricoAlunos.JvComboAcademicoButtonClick(Sender: TObject);
begin
 try
      FormLocAlunos := TFormLocAlunos.Create(self);
      FormLocAlunos.ShowModal;

      if FormLocAlunos.ModalResult = mrOk then
      begin
        JvComboAcademico.Text := IntToStr(FormLocAlunos.nro_matricula);
      end;

    finally
      FreeAndNil(FormLocAlunos);
    end;
end;

procedure TFormHistoricoAlunos.JvComboAcademicoChange(Sender: TObject);
begin
 if trim(JvComboAcademico.Text) <> EmptyStr then
        edt_nome_aluno.Text := show_nome_aluno(JvComboAcademico.Text)
      else
        edt_nome_aluno.Clear;
end;

procedure TFormHistoricoAlunos.JvComboAcademicoExit(Sender: TObject);
begin

   if trim(JvComboAcademico.Text) = EmptyStr then
    begin
      edt_nome_aluno.Clear;
    end;
end;

procedure TFormHistoricoAlunos.JvComboClienteButtonClick(Sender: TObject);
begin
  try
      FormLocClientes := TFormLocClientes.Create(self);
      FormLocClientes.ShowModal;

      if FormLocClientes.ModalResult  = mrOk then
        begin
          JvComboCliente.Text := inttostr(FormLocClientes.codigo_cliente);
        end;

    finally
       FreeAndNil(FormLocClientes);
    end;
end;

procedure TFormHistoricoAlunos.JvComboClienteChange(Sender: TObject);
begin
 if trim(JvComboCliente.Text) <> EmptyStr then
      edt_nome_cliente.Text := show_nome_cliente(JvComboCliente.Text)
  else
      edt_nome_cliente.Clear
end;

procedure TFormHistoricoAlunos.JvComboClienteExit(Sender: TObject);
begin
  if trim(JvComboCliente.Text) = EmptyStr then
    begin
      edt_nome_cliente.Clear;
    end;
end;

end.
