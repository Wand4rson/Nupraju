unit uFormLocOcorrencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, FMTBcd, DB, DBClient, Provider, SqlExpr, JvExStdCtrls,
  JvCombobox, Mask, JvExMask, JvToolEdit, ComCtrls;

type
  TFormLocOcorrencia = class(TForm)
    Panel1: TPanel;
    btnSelecionar: TBitBtn;
    btnFechar: TBitBtn;
    Panel2: TPanel;
    edt_busca: TEdit;
    PanelGridItem: TPanel;
    gridItem: TJvDBUltimGrid;
    PanelGrid: TPanel;
    grid: TJvDBUltimGrid;
    qry: TSQLQuery;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    qryItem: TSQLQuery;
    qryItemocr_codigo: TIntegerField;
    qryItemocr_item_codigo: TIntegerField;
    qryItemocr_item_datalancamento: TDateField;
    qryItemcliente_codigo: TIntegerField;
    qryItemcli_razao: TStringField;
    qryItemtipo_codigo: TIntegerField;
    qryItemtp_descricao: TStringField;
    qryItemocr_item_nroprocesso: TStringField;
    qryItemocr_item_observacao: TMemoField;
    qryItemocr_item_cargahoraria: TFloatField;
    dspItem: TDataSetProvider;
    cdsItem: TClientDataSet;
    cdsItemocr_codigo: TIntegerField;
    cdsItemocr_item_codigo: TIntegerField;
    cdsItemocr_item_datalancamento: TDateField;
    cdsItemcliente_codigo: TIntegerField;
    cdsItemcli_razao: TStringField;
    cdsItemtipo_codigo: TIntegerField;
    cdsItemtp_descricao: TStringField;
    cdsItemocr_item_nroprocesso: TStringField;
    cdsItemocr_item_observacao: TMemoField;
    cdsItemocr_item_cargahoraria: TFloatField;
    dsItem: TDataSource;
    JvComboFiltro: TJvComboBox;
    Label2: TLabel;
    Label1: TLabel;
    JvDateInicial: TJvDateEdit;
    JvDateFinal: TJvDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnPesquisar: TBitBtn;
    qryocr_codigo: TIntegerField;
    qryalu_nome: TStringField;
    qryocr_datalancamento: TDateField;
    qryocr_horalancamento: TStringField;
    qryocr_item_nroprocesso: TStringField;
    qrycliente_codigo: TIntegerField;
    cdsocr_codigo: TIntegerField;
    cdsalu_nome: TStringField;
    cdsocr_datalancamento: TDateField;
    cdsocr_horalancamento: TStringField;
    cdsocr_item_nroprocesso: TStringField;
    cdscliente_codigo: TIntegerField;
    edt_nome_cliente: TEdit;
    Label5: TLabel;
    Label32: TLabel;
    JvComboCliente: TJvComboEdit;
    status: TStatusBar;
    qryItemocr_item_status: TStringField;
    qryItemocr_item_dataconclusao: TDateField;
    qryItemocr_item_horalancamento: TStringField;
    qryItemocr_item_horaconclusao: TStringField;
    cdsItemocr_item_status: TStringField;
    cdsItemocr_item_dataconclusao: TDateField;
    cdsItemocr_item_horalancamento: TStringField;
    cdsItemocr_item_horaconclusao: TStringField;
    qryItemSituacao: TStringField;
    cdsItemSituacao: TStringField;
    qryalu_matricula: TLargeintField;
    cdsalu_matricula: TLargeintField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BuscaOcorrencia(str_busca: string);
    procedure btnSelecionarClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure btnFecharClick(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure JvComboClienteChange(Sender: TObject);
    procedure JvComboClienteExit(Sender: TObject);
    procedure JvComboClienteButtonClick(Sender: TObject);
    procedure cdsAfterOpen(DataSet: TDataSet);
    procedure gridItemDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    codigo_ocorrencia:integer;
  end;

var
  FormLocOcorrencia: TFormLocOcorrencia;

implementation

uses uDM, uFormLocClientes, uLibs;

{$R *.dfm}

procedure TFormLocOcorrencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cds.Close;
end;

procedure TFormLocOcorrencia.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormLocOcorrencia.FormShow(Sender: TObject);
begin
  cds.Open;
end;

procedure TFormLocOcorrencia.gridDblClick(Sender: TObject);
begin
  btnSelecionarClick(Self);
end;

procedure TFormLocOcorrencia.gridItemDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//Pintar Linha caso esteja - Finalizada//
 if not( gdSelected in State )then
  begin
    if cdsItemocr_item_status.AsString = 'con' then
    begin
      gridItem.Canvas.Brush.Color := $00A0F861;    //Define a Cor
      gridItem.Canvas.FillRect(Rect);             //Pinta o Quadrado da Linha

    end
    else if cdsItemocr_item_status.AsString = 'and' then
    begin
      gridItem.Canvas.Brush.Color := clWhite;
      gridItem.Canvas.FillRect(Rect);
    end;

    gridItem.DefaultDrawDataCell(Rect, Column.Field, State);
  end;
end;

procedure TFormLocOcorrencia.JvComboClienteButtonClick(Sender: TObject);
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

procedure TFormLocOcorrencia.JvComboClienteChange(Sender: TObject);
begin
 if trim(JvComboCliente.Text) <> EmptyStr then
      edt_nome_cliente.Text := show_nome_cliente(JvComboCliente.Text)
  else
      edt_nome_cliente.Clear
end;

procedure TFormLocOcorrencia.JvComboClienteExit(Sender: TObject);
begin
  if trim(JvComboCliente.Text) = EmptyStr then
    begin
      edt_nome_cliente.Clear;
    end;
end;

procedure TFormLocOcorrencia.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormLocOcorrencia.btnPesquisarClick(Sender: TObject);
begin
  BuscaOcorrencia(edt_busca.Text);
end;

procedure TFormLocOcorrencia.btnSelecionarClick(Sender: TObject);
begin
  if cds.RecordCount = 0 then
    Abort;

  codigo_ocorrencia := cds.Fields[0].AsInteger;
  ModalResult := mrOk;
end;

procedure TFormLocOcorrencia.BuscaOcorrencia(str_busca: string);
var
  sSQL : string;
begin

  sSQL := '';
  sSQL := sSQL + ' SELECT';
  sSQL := sSQL + ' oc.ocr_codigo,';
  sSQL := sSQL + ' oc.alu_matricula,';
  sSQL := sSQL + ' al.alu_nome,';
  sSQL := sSQL + ' oc.ocr_datalancamento,';
  sSQL := sSQL + ' oc.ocr_horalancamento,';
  sSQL := sSQL + ' oci.ocr_item_nroprocesso,';
  sSQL := sSQL + ' oci.cliente_codigo';
  sSQL := sSQL + ' FROM';
  sSQL := sSQL + ' ocorrencia oc';
  sSQL := sSQL + ' INNER JOIN alunos al ON(al.alu_matricula = oc.alu_matricula)';
  sSQL := sSQL + ' INNER JOIN ocorrencia_itens oci ON(oc.ocr_codigo = oci.ocr_codigo)';
  sSQL := sSQL + ' WHERE';
  sSQL := sSQL + ' oc.ocr_codigo<>0';

   if (valida_DateNoEmpty(JvDateInicial.Text)) and (valida_DateNoEmpty(JvDateFinal.Text)) then
       begin
          sSQL := sSQL + ' AND ((DATE_FORMAT(oc.ocr_datalancamento,"%d/%m/%Y") >= ' + QuotedStr(DateToStr(JvDateInicial.Date))
          + ')AND(DATE_FORMAT(oc.ocr_datalancamento,"%d/%m/%Y") <=' + QuotedStr(DateToStr(JvDateFinal.Date)) + '))';
       end;


  if trim(str_busca) <> EmptyStr then
  begin
     if JvComboFiltro.ItemIndex = 0 then
       //Nome do aluno
       sSQL := sSQL + '  AND al.alu_nome LIKE'+QuotedStr('%'+str_busca+'%')+''
     else if JvComboFiltro.ItemIndex = 1 then
       //Matricula Aluno
       sSQL := sSQL + '  AND oc.alu_matricula LIKE'+QuotedStr('%'+str_busca+'%')+''
     else if JvComboFiltro.ItemIndex = 2 then
       //Numero Ocorrencia
       sSQL := sSQL + '  AND oc.ocr_codigo LIKE'+QuotedStr('%'+str_busca+'%')+''
     else if JvComboFiltro.ItemIndex = 3 then
       //Numero Processo
       sSQL := sSQL + '  AND oci.ocr_item_nroprocesso LIKE'+QuotedStr('%'+str_busca+'%')+'';
  end;

   if (trim(JvComboCliente.Text) <> EmptyStr) and (trim(edt_nome_cliente.Text) <> EmptyStr) then
        sSQL := sSQL + '  AND oci.cliente_codigo ='+QuotedStr(JvComboCliente.Text)+'';


      sSQL := sSQL + '  GROUP BY oc.ocr_codigo ORDER BY oc.ocr_codigo DESC';

    cds.Close;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add(sSQL);
    //qry.SQL.SaveToFile('c:\sqlocorr.sql');
    cds.Open;

end;

procedure TFormLocOcorrencia.cdsAfterOpen(DataSet: TDataSet);
begin
 status.Panels[0].Text := 'Quantidade de Registro(s) Encontrado(s) ' + IntToStr(cds.RecordCount);
end;

procedure TFormLocOcorrencia.dsDataChange(Sender: TObject; Field: TField);
begin
  if cds.RecordCount = 0 then
    Abort;

    cdsItem.Close;
    cdsItem.Params[0].AsInteger := cdsocr_codigo.AsInteger;
    cdsItem.Open;
end;

end.
