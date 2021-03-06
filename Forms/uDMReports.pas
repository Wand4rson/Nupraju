unit uDMReports;

interface

uses
  SysUtils, Classes, frxExportXLS, frxExportHTML, frxClass, frxExportPDF,
  FMTBcd, DB, SqlExpr, frxDBSet, DBClient, Provider, frxExportBaseDialog;

type
  TDMReports = class(TDataModule)
    frxReport: TfrxReport;
    frxPDFExport: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    qryOcorrencia: TSQLQuery;
    qryOcorrenciaocr_codigo: TIntegerField;
    qryOcorrenciaocr_datalancamento: TDateField;
    qryOcorrenciaocr_horalancamento: TStringField;
    qryOcorrenciaItem: TSQLQuery;
    qryOcorrenciaItemocr_codigo: TIntegerField;
    qryOcorrenciaItemocr_item_codigo: TIntegerField;
    qryOcorrenciaItemocr_item_datalancamento: TDateField;
    qryOcorrenciaItemcliente_codigo: TIntegerField;
    qryOcorrenciaItemcli_razao: TStringField;
    qryOcorrenciaItemtipo_codigo: TIntegerField;
    qryOcorrenciaItemtp_descricao: TStringField;
    qryOcorrenciaItemocr_item_nroprocesso: TStringField;
    qryOcorrenciaItemocr_item_observacao: TMemoField;
    qryOcorrenciaItemocr_item_cargahoraria: TFloatField;
    frxDBOcorrencia: TfrxDBDataset;
    frxDBOcorrenciaItem: TfrxDBDataset;
    cdsOcorrencia: TClientDataSet;
    cdsOcorrenciaItem: TClientDataSet;
    dspOcorrencia: TDataSetProvider;
    cdsOcorrenciaocr_codigo: TIntegerField;
    cdsOcorrenciaocr_datalancamento: TDateField;
    cdsOcorrenciaocr_horalancamento: TStringField;
    dsJoinOcorrencia: TDataSource;
    cdsOcorrenciaqryOcorrenciaItem: TDataSetField;
    cdsOcorrenciaItemocr_codigo: TIntegerField;
    cdsOcorrenciaItemocr_item_codigo: TIntegerField;
    cdsOcorrenciaItemocr_item_datalancamento: TDateField;
    cdsOcorrenciaItemcliente_codigo: TIntegerField;
    cdsOcorrenciaItemcli_razao: TStringField;
    cdsOcorrenciaItemtipo_codigo: TIntegerField;
    cdsOcorrenciaItemtp_descricao: TStringField;
    cdsOcorrenciaItemocr_item_nroprocesso: TStringField;
    cdsOcorrenciaItemocr_item_observacao: TMemoField;
    cdsOcorrenciaItemocr_item_cargahoraria: TFloatField;
    cdsOcorrenciaItemTOTALCARGAHORARIA: TAggregateField;
    qryOcorrenciaalu_nome: TStringField;
    cdsOcorrenciaalu_nome: TStringField;
    qryOcorrenciaalu_matricula: TLargeintField;
    cdsOcorrenciaalu_matricula: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMReports: TDMReports;

implementation

uses uDM;

{$R *.dfm}

end.
