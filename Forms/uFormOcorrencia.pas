unit uFormOcorrencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, FMTBcd, DB, SqlExpr, DBClient, Provider, Mask, DBCtrls,
  JvExMask, JvToolEdit, JvDBControls, ComCtrls;

type
  TFormOcorrencia = class(TForm)
    PanelCabecalho: TPanel;
    PanelRodape: TPanel;
    btnFechar: TBitBtn;
    btnNovo: TBitBtn;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnPesquisar: TBitBtn;
    PanelItens: TPanel;
    grid: TJvDBUltimGrid;
    PanelItensBotao: TPanel;
    btnItemRemover: TBitBtn;
    btnItemNovo: TBitBtn;
    qry: TSQLQuery;
    qryocr_codigo: TIntegerField;
    qryocr_datalancamento: TDateField;
    qryocr_horalancamento: TStringField;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsocr_codigo: TIntegerField;
    cdsocr_datalancamento: TDateField;
    cdsocr_horalancamento: TStringField;
    Label1: TLabel;
    dbe_codigo: TDBEdit;
    ds: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbe_hora: TDBEdit;
    JvDBDateLancto: TJvDBDateEdit;
    JvDBComboAluno: TJvDBComboEdit;
    Label32: TLabel;
    edt_nome_aluno: TEdit;
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
    dsItem: TDataSource;
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
    dsJoin: TDataSource;
    cdsqryItem: TDataSetField;
    BitBtn1: TBitBtn;
    GroupBoxHistorico: TGroupBox;
    DBMemoHistorico: TDBMemo;
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
    ShapeStatus: TShape;
    Shape1: TShape;
    Label5: TLabel;
    Label6: TLabel;
    qryalu_matricula: TLargeintField;
    cdsalu_matricula: TLargeintField;
    procedure dsStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure btnItemNovoClick(Sender: TObject);
    procedure btnItemRemoverClick(Sender: TObject);
    procedure JvDBComboAlunoButtonClick(Sender: TObject);
    procedure JvDBComboAlunoChange(Sender: TObject);
    procedure JvDBComboAlunoExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CarregaComponentesCor();
    procedure EntraFoco(Sender: TObject);
    procedure SaiFoco(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TotalRegistros;
    procedure cdsAfterOpen(DataSet: TDataSet);
    procedure cdsAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure gridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    function ExcluirOcorrencia:Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOcorrencia: TFormOcorrencia;

implementation

uses uDM, uLibs, uFormOcorrenciaItens, uFormLocClientes, uFormLocAlunos,
  uFormLocOcorrencia, uDMReports;

{$R *.dfm}

procedure TFormOcorrencia.BitBtn1Click(Sender: TObject);
var
  sCaminhoRel : string;
begin
   sCaminhoRel := 'C:\Nupraju\Reports\';

   DMReports.qryOcorrencia.Close;
   DMReports.cdsOcorrencia.Close;
   DMReports.cdsOcorrencia.Params[0].AsInteger := cdsocr_codigo.AsInteger;
   DMReports.cdsOcorrencia.Open;
   DMReports.frxReport.LoadFromFile(sCaminhoRel + 'relocorrencia.fr3');
   DMReports.frxReport.PrepareReport(true);
   DMReports.frxReport.ShowReport;
end;

procedure TFormOcorrencia.btnCancelarClick(Sender: TObject);
begin
  cds.Cancel;
end;

procedure TFormOcorrencia.btnExcluirClick(Sender: TObject);
begin


  if fTemProcessoConcluido(cdsocr_codigo.AsInteger) then
    begin
      Application.MessageBox('Existem Processos Conclu?dos Neste Lan?amento. Imposs?vel Excluir.','Aten??o',MB_OK+MB_ICONERROR);
      Abort;
    end;

   if Application.MessageBox('Confirma a Exclus?o da Ocorr?ncia selecionada ?','Aten??o',MB_YESNO+MB_ICONQUESTION) = mrYes then
    begin
        //Excluir os Itens da Ocorr?ncia//
         ExcluirOcorrencia;
         cds.Refresh;
    end;

 end;

procedure TFormOcorrencia.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormOcorrencia.btnItemNovoClick(Sender: TObject);
  var
  codigo_ocorrencia:integer;
begin

 if (cds.State in dsEditModes) or (cds.RecordCount > 0) then
 begin


   if (cdsalu_matricula.AsString = EmptyStr) then
    begin
      Application.MessageBox('Acad?mico Obrigat?rio !!!','Aten??o',MB_OK+MB_ICONWARNING);
      Abort;
    end;

    if (edt_nome_aluno.Text = EmptyStr) then
    begin
      Application.MessageBox('Acad?mico Obrigat?rio !!!','Aten??o',MB_OK+MB_ICONWARNING);
      Abort;
    end;

   //Abrir Tela de Itens
    try

      //ANTES DE INSERIR O PRIMEIRO ITEM - VERIFICAR C?DIGO OCORRENCIA//
      if (cds.State in [dsInsert]) then
      begin
        cdsocr_codigo.AsInteger := fSEQUENCIAL('ocorrencia','ocr_codigo');
        cds.Post;
      end;
      //-------------------------------------------------------------//

      FormOcorrenciaItens := TFormOcorrenciaItens.Create(self);
      FormOcorrenciaItens.cdsItem.Params[0].AsInteger := cdsocr_codigo.AsInteger;
      FormOcorrenciaItens.Caption := 'Lan?ar Ocorr?ncia Itens [NOVO  REGISTRO]';
      FormOcorrenciaItens.NovoRegistro;


       cds.ApplyUpdates(0);
       codigo_ocorrencia := cdsocr_codigo.AsInteger;

       //Carrega Lista//
       cds.Close;
       cds.Params[0].AsInteger := codigo_ocorrencia;
       cds.Open;

    finally
        FreeAndNil(FormOcorrenciaItens);
    end;

 end;

 end;

procedure TFormOcorrencia.btnItemRemoverClick(Sender: TObject);
begin
  if (cds.State in dsEditModes) or (cds.RecordCount > 0) then
 begin

   if cdsitem.RecordCount <= 0 then
   begin
     Application.MessageBox('Aten??o Nenhuma Ocorr?ncia Encontrada na Lista !!','Aten??o',MB_OK+MB_ICONERROR);
     abort;
   end;

   if Application.MessageBox(pChar('Confirma a Exclus?o do Item selecionado '+cdsItemocr_item_codigo.AsString+'?'),'Aten??o',MB_YESNO+MB_ICONQUESTION) = mrNo then
    Abort;

    try
       cdsItem.Delete;
       cds.ApplyUpdates(0);
   except on e:Exception do
    begin
        Application.MessageBox(pChar('Erro ao excluir Item da Ocorr?ncia. erro.: '+e.Message+''),'Aten??o',MB_OK+MB_ICONERROR);
    end;
   end;
 end;

end;

procedure TFormOcorrencia.btnNovoClick(Sender: TObject);
begin
  cds.Append;
  JvDBComboAluno.SetFocus;
end;

procedure TFormOcorrencia.btnPesquisarClick(Sender: TObject);
begin

     try
        FormLocOcorrencia := TFormLocOcorrencia.Create(self);
        FormLocOcorrencia.ShowModal;

        if FormLocOcorrencia.ModalResult = mrOk then
        begin
          cds.Close;
          cds.Params[0].AsInteger :=FormLocOcorrencia.codigo_ocorrencia;
          cds.Open;
        end;

     finally
        FreeAndNil(FormLocClientes);
     end;

end;

procedure TFormOcorrencia.btnSalvarClick(Sender: TObject);
begin

 if cdsitem.RecordCount <= 0 then
 begin
   Application.MessageBox('Aten??o Nenhuma Ocorr?ncia Encontrada na Lista !!','Aten??o',MB_OK+MB_ICONERROR);
   abort;
 end;

 try
    cds.Post;
    cds.ApplyUpdates(0);
   except on e:Exception do
    begin
        Application.MessageBox(pChar('Erro ao confirmar dados da Ocorr?ncia. erro.: '+e.Message+''),'Aten??o',MB_OK+MB_ICONERROR);
    end;
   end;

end;

procedure TFormOcorrencia.cdsAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  TotalRegistros;
end;

procedure TFormOcorrencia.cdsAfterOpen(DataSet: TDataSet);
begin
  TotalRegistros;
end;

procedure TFormOcorrencia.cdsNewRecord(DataSet: TDataSet);
begin
   cdsocr_codigo.AsInteger := fSEQUENCIAL('ocorrencia','ocr_codigo');
   cdsocr_datalancamento.AsDateTime := Date;
   cdsocr_horalancamento.AsString := FormatDateTime('HH:MM',Time);
end;

procedure TFormOcorrencia.dsStateChange(Sender: TObject);
begin
  btnNovo.Enabled := not(ds.State in dsEditModes);     //N?o esta em Edicao Ativa
  btnSalvar.Enabled := (ds.State in dsEditModes);      //Esta em Edicao Ativa
  btnCancelar.Enabled := (ds.State in dsEditModes);    //Esta em Edicao Ativa
  btnExcluir.Enabled := not(ds.State in dsEditModes);  //Esta em Edicao Ativa
end;

procedure TFormOcorrencia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FormOcorrencia := nil;
end;

procedure TFormOcorrencia.FormCreate(Sender: TObject);
begin
  CarregaComponentesCor;
end;

procedure TFormOcorrencia.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormOcorrencia.FormShow(Sender: TObject);
begin
  cds.Open;
end;

procedure TFormOcorrencia.JvDBComboAlunoButtonClick(Sender: TObject);
begin

 if (cds.State in dsEditModes) or (cds.RecordCount > 0) then
  begin

    try
      FormLocAlunos := TFormLocAlunos.Create(self);
      FormLocAlunos.ShowModal;

      if FormLocAlunos.ModalResult = mrOk then
      begin
        JvDBComboAluno.Text := IntToStr(FormLocAlunos.nro_matricula);
      end;

    finally
      FreeAndNil(FormLocAlunos);
    end;

  end;

end;

procedure TFormOcorrencia.JvDBComboAlunoChange(Sender: TObject);
begin
 if trim(JvDBComboAluno.Text) <> EmptyStr then
        edt_nome_aluno.Text := show_nome_aluno(JvDBComboAluno.Text)
      else
        edt_nome_aluno.Clear;
end;

procedure TFormOcorrencia.JvDBComboAlunoExit(Sender: TObject);
begin
if (cds.State in dsEditModes) or (cds.RecordCount > 0) then
      if Trim(edt_nome_aluno.Text) = '' then
          edt_nome_aluno.Clear;
end;


procedure TFormOcorrencia.gridDblClick(Sender: TObject);
var
  codigo_ocorrencia:integer;
begin

   if (cds.State in dsEditModes) or (cds.RecordCount > 0) then
   begin

      if cdsItem.RecordCount = 0 then
        Abort;

       //Abrir Tela de Itens
        try
          FormOcorrenciaItens := TFormOcorrenciaItens.Create(self);
          FormOcorrenciaItens.ocorrencia_codigo := cdsocr_codigo.AsInteger;
          FormOcorrenciaItens.ocorrencia_item_codigo := cdsItemocr_item_codigo.AsInteger;
           FormOcorrenciaItens.Caption := 'Lan?ar Ocorr?ncia Itens [ALTERAR  REGISTRO]';
          FormOcorrenciaItens.AlterarRegistro;

          codigo_ocorrencia := cdsocr_codigo.AsInteger;

         //Carrega Lista//
         cds.Close;
         cds.Params[0].AsInteger := codigo_ocorrencia;
         cds.Open;

        finally
            FreeAndNil(FormOcorrenciaItens);
        end;
   end;

end;

procedure TFormOcorrencia.gridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

//Pintar Linha caso esteja - Finalizada//
 if not( gdSelected in State )then
  begin
    if cdsItemocr_item_status.AsString = 'con' then
    begin
      grid.Canvas.Brush.Color := $00A0F861;    //Define a Cor
      grid.Canvas.FillRect(Rect);             //Pinta o Quadrado da Linha

    end
    else if cdsItemocr_item_status.AsString = 'and' then
    begin
      grid.Canvas.Brush.Color := clWhite;
      grid.Canvas.FillRect(Rect);
    end;

    grid.DefaultDrawDataCell(Rect, Column.Field, State);
  end;

end;

procedure TFormOcorrencia.CarregaComponentesCor();
var
  I:integer;
begin

  for I := 0 to ComponentCount -1 do
    begin

    if (Components[I] is TDBEdit) then
      begin
        TDBEdit(Components[I]).OnEnter := EntraFoco;
        TDBEdit(Components[I]).OnExit := SaiFoco;
      end;

     if (Components[I] is TJvDBComboEdit) then
      begin
        TJvDBComboEdit(Components[I]).OnEnter := EntraFoco;
        TJvDBComboEdit(Components[I]).OnExit := SaiFoco;
      end;

      if (Components[I] is TJvDBDateEdit) then
      begin
        TJvDBDateEdit(Components[I]).OnEnter := EntraFoco;
        TJvDBDateEdit(Components[I]).OnExit := SaiFoco;
      end;


    end;
end;

procedure TFormOcorrencia.EntraFoco(Sender: TObject);
begin
  //Cor Quando Entra no Campo
  if Sender is TDBEdit then
    begin
      TDBEdit(Sender).Color := clYellow ;
    end;

  if Sender is TJvDBComboEdit then
  begin
    TJvDBComboEdit(Sender).Color := clYellow;
  end;

  if Sender is TJvDBDateEdit then
  begin
    TJvDBDateEdit(Sender).Color := clYellow;
  end;

end;

function TFormOcorrencia.ExcluirOcorrencia: Boolean;
var
  sSQL:string;
begin

  sSQL := '';
  sSQL := sSQL  + ' DELETE FROM ocorrencia_itens ';
  sSQL := sSQL  + ' WHERE';
  sSQL := sSQL  + '  ocr_codigo='+cdsocr_codigo.AsString+'';

  if ExecuteNonQuery(sSQL) then
    begin

      sSQL := '';
      sSQL := sSQL  + ' DELETE FROM ocorrencia';
      sSQL := sSQL  + ' WHERE';
      sSQL := sSQL  + '  ocr_codigo='+cdsocr_codigo.AsString+'';
      Result := ExecuteNonQuery(sSQL);
    end;

end;

procedure TFormOcorrencia.SaiFoco(Sender: TObject);
begin
  //Cor Quando Sai do Campo
  if Sender is TDBEdit then
    begin
      TDBEdit(Sender).Color := clWhite;
    end;

  if Sender is TJvDBComboEdit then
  begin
    TJvDBComboEdit(Sender).Color := clWhite;
  end;

  if Sender is TJvDBDateEdit then
  begin
    TJvDBDateEdit(Sender).Color := clWhite;
  end;

end;

procedure TFormOcorrencia.TotalRegistros;
var
    sql: string;
begin
    sql := 'SELECT COUNT(*) FROM ocorrencia';
    status.Panels[0].Text := VarToStr(fExecuteScalar(sql)) + ' Registro(s)';
end;

end.
