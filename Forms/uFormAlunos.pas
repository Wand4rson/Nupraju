unit uFormAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, FMTBcd, DB, SqlExpr, DBClient, Provider,
  DBCtrls, Mask, ComCtrls, JvExMask, JvToolEdit, JvDBControls, JvDBCheckBox,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid;

type
  TFormAlunos = class(TForm)
    Panel1: TPanel;
    btnFechar: TBitBtn;
    btnNovo: TBitBtn;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnPesquisar: TBitBtn;
    qry: TSQLQuery;
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
    dsp: TDataSetProvider;
    cds: TClientDataSet;
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
    ds: TDataSource;
    pg: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    dbe_matricula: TDBEdit;
    Label2: TLabel;
    dbe_nome: TDBEdit;
    Label3: TLabel;
    dbe_email: TDBEdit;
    Label4: TLabel;
    dbe_fonefixo: TDBEdit;
    Label6: TLabel;
    dbe_endereco: TDBEdit;
    Label7: TLabel;
    dbe_bairro: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dbe_observacao: TDBMemo;
    Label11: TLabel;
    dbe_localnascimento: TDBEdit;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    dbe_fonecelular: TDBEdit;
    Label5: TLabel;
    JvDBDateNascimento: TJvDBDateEdit;
    JvDBDateCadastro: TJvDBDateEdit;
    JvDBDateAlteracao: TJvDBDateEdit;
    JvDBComboCidade: TJvDBComboEdit;
    edt_nome_cidade: TEdit;
    status: TStatusBar;
    JvDBComboEstado: TJvDBComboBox;
    Label13: TLabel;
    DBRadioGroupStatus: TDBRadioGroup;
    grid: TJvDBUltimGrid;
    QryHistorico: TSQLQuery;
    QryHistoricoocr_datalancamento: TDateField;
    QryHistoricoocr_horalancamento: TStringField;
    QryHistoricoocr_codigo: TIntegerField;
    QryHistoricoocr_item_codigo: TIntegerField;
    QryHistoricoocr_item_datalancamento: TDateField;
    QryHistoricocliente_codigo: TIntegerField;
    QryHistoricocli_razao: TStringField;
    QryHistoricotipo_codigo: TIntegerField;
    QryHistoricoocr_item_nroprocesso: TStringField;
    QryHistoricoocr_item_observacao: TMemoField;
    QryHistoricoocr_item_cargahoraria: TFloatField;
    dspHistorico: TDataSetProvider;
    dsHistorico: TDataSource;
    cdsHistorico: TClientDataSet;
    cdsHistoricoocr_datalancamento: TDateField;
    cdsHistoricoocr_horalancamento: TStringField;
    cdsHistoricoocr_codigo: TIntegerField;
    cdsHistoricoocr_item_codigo: TIntegerField;
    cdsHistoricoocr_item_datalancamento: TDateField;
    cdsHistoricocliente_codigo: TIntegerField;
    cdsHistoricocli_razao: TStringField;
    cdsHistoricotipo_codigo: TIntegerField;
    cdsHistoricoocr_item_nroprocesso: TStringField;
    cdsHistoricoocr_item_observacao: TMemoField;
    cdsHistoricoocr_item_cargahoraria: TFloatField;
    QryHistoricotp_descricao: TStringField;
    cdsHistoricotp_descricao2: TStringField;
    QryHistoricoocr_item_status: TStringField;
    QryHistoricoocr_item_dataconclusao: TDateField;
    QryHistoricoocr_item_horalancamento: TStringField;
    QryHistoricoocr_item_horaconclusao: TStringField;
    QryHistoricoSituacao: TStringField;
    cdsHistoricoocr_item_status: TStringField;
    cdsHistoricoocr_item_dataconclusao: TDateField;
    cdsHistoricoocr_item_horalancamento: TStringField;
    cdsHistoricoocr_item_horaconclusao: TStringField;
    cdsHistoricoSituacao: TStringField;
    qryalu_matricula: TLargeintField;
    cdsalu_matricula: TLargeintField;
    QryHistoricoalu_matricula: TLargeintField;
    cdsHistoricoalu_matricula: TLargeintField;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dsStateChange(Sender: TObject);
    procedure EntraFoco(Sender : TObject);
    procedure SaiFoco(Sender : TObject);
    procedure CarregaComponentesCor();
    procedure FormCreate(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure JvDBComboCidadeChange(Sender: TObject);
    procedure JvDBComboCidadeButtonClick(Sender: TObject);
    procedure JvDBComboCidadeExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesquisarClick(Sender: TObject);
    procedure cdsAfterOpen(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure TotalRegistros;
    procedure cdsAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure cdsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAlunos: TFormAlunos;

implementation

uses uDM, uLibs, uFormLocCidades, uFormLocAlunos;

{$R *.dfm}

procedure TFormAlunos.btnCancelarClick(Sender: TObject);
begin
  cds.Cancel;
end;

procedure TFormAlunos.btnExcluirClick(Sender: TObject);
begin

  if cds.RecordCount = 0 then
  begin
    Application.MessageBox('Nenhum Registro Encontrado na Base de Dados.','Aten??o',MB_OK+MB_ICONINFORMATION);
    Abort;
  end;

  if Application.MessageBox('Confirma a exclus?o do registro selecionado ?','Aten??o',MB_YESNO+MB_ICONQUESTION) = mrNo then
  begin
    Abort;
  end;

   try
    cds.Delete;
    cds.ApplyUpdates(0);
   except on e:Exception do
    begin
        Application.MessageBox(pchar('Erro ao Excluir Registro do Banco de Dados. Erro.:'+e.Message+''),'Aten??o',MB_OK+MB_ICONERROR);
    end;
   end;

end;

procedure TFormAlunos.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormAlunos.btnNovoClick(Sender: TObject);
begin
  cds.Append;
  dbe_matricula.SetFocus;
end;

procedure TFormAlunos.btnPesquisarClick(Sender: TObject);
begin
   try
      FormLocAlunos := TFormLocAlunos.Create(self);
      FormLocAlunos.ShowModal;

      if FormLocAlunos.ModalResult = mrOk then
      begin
        cds.Close;
        cds.Params[0].AsLargeInt :=FormLocAlunos.nro_matricula;
        cds.Open;
      end;

   finally
      FreeAndNil(FormLocAlunos);
   end;

end;

procedure TFormAlunos.btnSalvarClick(Sender: TObject);
begin

 if cdsalu_matricula.AsString = EmptyStr then
   begin
    Application.MessageBox('Campo N?mero Matricula Obrigat?rio !','Aten??o',MB_OK+MB_ICONERROR);
    Abort;
   end;


 if cdsalu_nome.AsString = EmptyStr then
   begin
    Application.MessageBox('Campo Nome do Aluno Obrigat?rio !','Aten??o',MB_OK+MB_ICONERROR);
    Abort;
   end;

   try
    cds.Post;
    cds.ApplyUpdates(0);
    //ShowMessage(DM.sqlMonitor.TraceList.Text)
   except on e:Exception do
    begin
        Application.MessageBox(pchar('Erro ao Inserir Registro no Banco de Dados. Erro.:'+e.Message+''),'Aten??o',MB_OK+MB_ICONERROR);
    end;
   end;
end;

procedure TFormAlunos.CarregaComponentesCor();
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

procedure TFormAlunos.cdsAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  TotalRegistros;
end;

procedure TFormAlunos.cdsAfterOpen(DataSet: TDataSet);
begin
  if cds.RecordCount > 0 then
  begin
    cdsHistorico.Close;
    cdsHistorico.Params[0].AsLargeInt := cdsalu_matricula.AsLargeInt;
    cdsHistorico.Open;
  end;

  TotalRegistros;

end;

procedure TFormAlunos.cdsBeforePost(DataSet: TDataSet);
begin
  cdsalu_dataalterado.Value := Date;
end;

procedure TFormAlunos.cdsNewRecord(DataSet: TDataSet);
begin
  pg.ActivePage := TabSheet1;
  cdsalu_datacadastro.AsDateTime := Date;
  cdsalu_ativo.AsString := 'sim';
  cdsHistorico.Close;
end;

procedure TFormAlunos.cdsReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin

   // if UpdateKind=ukDelete then
  //  begin
      ShowMessage(e.Message);
  //  end;


end;

procedure TFormAlunos.dsStateChange(Sender: TObject);
begin
  btnNovo.Enabled := not(ds.State in dsEditModes);     //N?o esta em Edicao Ativa
  btnSalvar.Enabled := (ds.State in dsEditModes);      //Esta em Edicao Ativa
  btnCancelar.Enabled := (ds.State in dsEditModes);    //Esta em Edicao Ativa
  btnExcluir.Enabled := not(ds.State in dsEditModes);  //Esta em Edicao Ativa
end;

procedure TFormAlunos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (cds.State in dsEditModes) then
   begin
    Application.MessageBox('A T E N ? ? O :  SALVAR ou CANCELAR as Altera??es ?','Registro em Edi??o',MB_OK + MB_ICONWARNING);
    Abort;
   end;
   cds.Close;
end;

procedure TFormAlunos.FormCreate(Sender: TObject);
begin
  CarregaComponentesCor();
end;

procedure TFormAlunos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormAlunos.FormShow(Sender: TObject);
begin
  cds.Open;
end;

procedure TFormAlunos.JvDBComboCidadeButtonClick(Sender: TObject);
begin

  if (cds.State in dsEditModes) or (cds.RecordCount > 0) then
  begin

    try
      FormLocCidades := TFormLocCidades.Create(self);
      FormLocCidades.ShowModal;

      if FormLocCidades.ModalResult = mrOk then
      begin
        JvDBComboCidade.Text := IntToStr(FormLocCidades.cidade_codigo);
      end;

    finally
      FreeAndNil(FormLocCidades);
    end;

  end;

  end;

procedure TFormAlunos.JvDBComboCidadeChange(Sender: TObject);
begin


   if trim(JvDBComboCidade.Text) <> EmptyStr then
        edt_nome_cidade.Text := show_nome_cidade(JvDBComboCidade.Text)
      else
         edt_nome_cidade.Text :=''
end;

procedure TFormAlunos.JvDBComboCidadeExit(Sender: TObject);
begin
    if (cds.State in dsEditModes) or (cds.RecordCount > 0) then
      if Trim(edt_nome_cidade.Text) = '' then
          edt_nome_cidade.Clear;

end;

procedure TFormAlunos.SaiFoco(Sender: TObject);
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

procedure TFormAlunos.TotalRegistros;
var
    sql: string;
begin
    sql := 'SELECT COUNT(*) FROM alunos';
    status.Panels[0].Text := VarToStr(fExecuteScalar(sql)) + ' Registro(s)';
end;

procedure TFormAlunos.EntraFoco(Sender: TObject);
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



end.
