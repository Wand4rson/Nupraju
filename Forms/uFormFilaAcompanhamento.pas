unit uFormFilaAcompanhamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, JvDBUltimGrid, ExtCtrls, StdCtrls, Buttons, DBCtrls, ComCtrls, Menus;

type
  TFormFilaAcompanhamento = class(TForm)
    PanelGridItem: TPanel;
    gridItem: TJvDBUltimGrid;
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
    Panel1: TPanel;
    btnAtualizar: TBitBtn;
    btnFechar: TBitBtn;
    qryItemocr_item_status: TStringField;
    cdsItemocr_item_status: TStringField;
    GroupBoxHistorico: TGroupBox;
    DBMemoHistorico: TDBMemo;
    qryItemalu_nome: TStringField;
    cdsItemalu_nome: TStringField;
    qryItemocr_item_horalancamento: TStringField;
    cdsItemocr_item_horalancamento: TStringField;
    status: TStatusBar;
    PopupMenu: TPopupMenu;
    ConcluirProcesso1: TMenuItem;
    qryItemalu_matricula: TLargeintField;
    cdsItemalu_matricula: TLargeintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure cdsItemAfterOpen(DataSet: TDataSet);
    procedure ConcluirProcesso1Click(Sender: TObject);
    procedure cdsItemAfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFilaAcompanhamento: TFormFilaAcompanhamento;

implementation

uses uDM, uLibs;

{$R *.dfm}

procedure TFormFilaAcompanhamento.btnAtualizarClick(Sender: TObject);
begin
  cdsItem.Refresh;
end;

procedure TFormFilaAcompanhamento.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormFilaAcompanhamento.cdsItemAfterOpen(DataSet: TDataSet);
begin
  status.Panels[0].Text := 'Quantidade de Registro(s) Encontrado(s) ' + IntToStr(cdsItem.RecordCount);
end;

procedure TFormFilaAcompanhamento.cdsItemAfterRefresh(DataSet: TDataSet);
begin
 status.Panels[0].Text := 'Quantidade de Registro(s) Encontrado(s) ' + IntToStr(cdsItem.RecordCount);
end;

procedure TFormFilaAcompanhamento.ConcluirProcesso1Click(Sender: TObject);
begin
  if cdsItem.RecordCount <= 0 then
    Abort;

  if Application.MessageBox('Deseja realmente concluir o Processo Selecionado ?','Atenção',MB_YESNO+MB_ICONQUESTION)=mrNo then
    Abort;

  //Chama o Metodo//
  ConcluirProcesso(cdsItemocr_codigo.AsInteger,cdsItemocr_item_codigo.AsInteger);
  cdsItem.Refresh;
end;

procedure TFormFilaAcompanhamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsItem.Close;
end;

procedure TFormFilaAcompanhamento.FormShow(Sender: TObject);
begin
  cdsItem.Open;
end;

end.
