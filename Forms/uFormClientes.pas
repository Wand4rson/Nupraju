unit uFormClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, DBClient,
  Provider, Mask, DBCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, JvExMask,
  JvToolEdit, JvDBControls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  frxClass, frxDBSet, JvMaskEdit;

type
  TFormClientes = class(TForm)
    pg: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PanelBotoes: TPanel;
    btnFechar: TBitBtn;
    btnNovo: TBitBtn;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnPesquisar: TBitBtn;
    status: TStatusBar;
    qry: TSQLQuery;
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
    dsp: TDataSetProvider;
    cds: TClientDataSet;
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
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dbe_codigo: TDBEdit;
    ds: TDataSource;
    Label2: TLabel;
    dbe_razao: TDBEdit;
    Label3: TLabel;
    dbe_fantasia: TDBEdit;
    Label4: TLabel;
    JvDBComboBoxTipoPessoa: TJvDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    dbe_rgie: TDBEdit;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dbe_endereco: TDBEdit;
    dbe_bairro: TDBEdit;
    dbe_nro: TDBEdit;
    dbe_pontoref: TDBEdit;
    dbe_cep: TDBEdit;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    dbe_fonefixo: TDBEdit;
    Label15: TLabel;
    dbe_fonefax: TDBEdit;
    Label16: TLabel;
    dbe_fonecelular: TDBEdit;
    Label17: TLabel;
    dbe_contato: TDBEdit;
    Label18: TLabel;
    dbe_email: TDBEdit;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    dbe_nomepai: TDBEdit;
    Label23: TLabel;
    dbe_nomemae: TDBEdit;
    Label24: TLabel;
    dbe_naturalidade: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    dbe_nomeconjuge: TDBEdit;
    JvDBComboBoxSexo: TJvDBComboBox;
    JvDBComboBoxEstadoCivil: TJvDBComboBox;
    JvDBComboEstado: TJvDBComboBox;
    JvDBComboCidade: TJvDBComboEdit;
    edt_nome_cidade: TEdit;
    Label32: TLabel;
    JvDBDateNascimento: TJvDBDateEdit;
    GroupBox5: TGroupBox;
    Label29: TLabel;
    DBRadioGroup: TDBRadioGroup;
    grid: TJvDBUltimGrid;
    QryHistorico: TSQLQuery;
    dspHistorico: TDataSetProvider;
    cdsHistorico: TClientDataSet;
    dsHistorico: TDataSource;
    QryHistoricocliente_codigo: TIntegerField;
    QryHistoricoocr_datalancamento: TDateField;
    QryHistoricoocr_horalancamento: TStringField;
    QryHistoricoocr_codigo: TIntegerField;
    QryHistoricoocr_item_codigo: TIntegerField;
    QryHistoricoocr_item_datalancamento: TDateField;
    QryHistoricoalu_nome: TStringField;
    QryHistoricotipo_codigo: TIntegerField;
    QryHistoricoocr_item_nroprocesso: TStringField;
    QryHistoricoocr_item_observacao: TMemoField;
    QryHistoricoocr_item_cargahoraria: TFloatField;
    QryHistoricotp_descricao: TStringField;
    cdsHistoricocliente_codigo: TIntegerField;
    cdsHistoricoocr_datalancamento: TDateField;
    cdsHistoricoocr_horalancamento: TStringField;
    cdsHistoricoocr_codigo: TIntegerField;
    cdsHistoricoocr_item_codigo: TIntegerField;
    cdsHistoricoocr_item_datalancamento: TDateField;
    cdsHistoricoalu_nome: TStringField;
    cdsHistoricotipo_codigo: TIntegerField;
    cdsHistoricoocr_item_nroprocesso: TStringField;
    cdsHistoricoocr_item_observacao: TMemoField;
    cdsHistoricoocr_item_cargahoraria: TFloatField;
    cdsHistoricotp_descricao: TStringField;
    qrycli_observacao: TMemoField;
    cdscli_observacao: TMemoField;
    DBMemoOBS: TDBMemo;
    BitBtn1: TBitBtn;
    frxDBDatasetClienteFicha: TfrxDBDataset;
    dbmask_cpfcnpj: TJvDBMaskEdit;
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
    QryHistoricoalu_matricula: TLargeintField;
    cdsHistoricoalu_matricula: TLargeintField;
    qrycli_observacao_diario: TMemoField;
    cdscli_observacao_diario: TMemoField;
    dbmemo_obsdiario: TDBMemo;
    Label19: TLabel;
    JvDBDateCadastro: TJvDBDateEdit;
    Label20: TLabel;
    Label21: TLabel;
    JvDBDateAlterado: TJvDBDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CarregaComponentesCor();
    procedure EntraFoco(Sender : TObject);
    procedure SaiFoco(Sender : TObject);
    procedure dsStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure JvDBComboCidadeButtonClick(Sender: TObject);
    procedure JvDBComboCidadeChange(Sender: TObject);
    procedure JvDBComboCidadeExit(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure cdsAfterOpen(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBComboBoxTipoPessoaChange(Sender: TObject);
    procedure TotalRegistros;
    procedure cdsAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientes: TFormClientes;
  iCodigo:integer; //Codigo para abrir busca quando for inserido um novo registro para relatorio exibir sem pesquisar

implementation

uses uDM, uLibs, uFormLocCidades, uFormLocClientes, uDMReports;

{$R *.dfm}

procedure TFormClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (cds.State in dsEditModes) then
   begin
    Application.MessageBox('A T E N ? ? O :  SALVAR ou CANCELAR as Altera??es ?','Registro em Edi??o',MB_OK + MB_ICONWARNING);
    Abort;
   end;
   cds.Close;
end;

procedure TFormClientes.FormCreate(Sender: TObject);
begin
   CarregaComponentesCor();
end;

procedure TFormClientes.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormClientes.FormShow(Sender: TObject);
begin
  cds.Open;
end;


procedure TFormClientes.JvDBComboBoxTipoPessoaChange(Sender: TObject);
begin
  case JvDBComboBoxTipoPessoa.ItemIndex  of
    0:
    begin
      cdscli_cpfcnpj.Clear;
      dbmask_cpfcnpj.EditMask := '###.###.###-##'; //Fisica
    end;
    1:
    begin
      cdscli_cpfcnpj.Clear;
      dbmask_cpfcnpj.EditMask := '##.###.###/####-##'; // Jur?dica
    end;
  end;


end;

procedure TFormClientes.JvDBComboCidadeButtonClick(Sender: TObject);
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

procedure TFormClientes.JvDBComboCidadeChange(Sender: TObject);
begin
      if trim(JvDBComboCidade.Text) <> EmptyStr then
        edt_nome_cidade.Text := show_nome_cidade(JvDBComboCidade.Text)
      else
         edt_nome_cidade.Text :=''
end;

procedure TFormClientes.JvDBComboCidadeExit(Sender: TObject);
begin
    if (cds.State in dsEditModes) or (cds.RecordCount > 0) then
      if Trim(edt_nome_cidade.Text) = '' then
          edt_nome_cidade.Clear;
end;

procedure TFormClientes.BitBtn1Click(Sender: TObject);
var
  sCaminhoRel : string;
begin

if cds.RecordCount <= 0 then
  Abort;


   //-- Recarrega o Cadastro para Relatorio//
   cds.Close;
   cds.Params[0].AsInteger := iCodigo;
   cds.Open;

   sCaminhoRel := 'C:\Nupraju\Reports\';
   DMReports.frxReport.LoadFromFile(sCaminhoRel + 'relfichacliente.fr3');
   DMReports.frxReport.ShowReport;
end;

procedure TFormClientes.btnCancelarClick(Sender: TObject);
begin
  cds.Cancel;
end;

procedure TFormClientes.btnExcluirClick(Sender: TObject);
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

procedure TFormClientes.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormClientes.btnNovoClick(Sender: TObject);
begin
  cds.Append;
  dbe_razao.SetFocus;
end;

procedure TFormClientes.btnPesquisarClick(Sender: TObject);
begin

   try
        FormLocClientes := TFormLocClientes.Create(self);
        FormLocClientes.ShowModal;

        if FormLocClientes.ModalResult = mrOk then
        begin
          cds.Close;
          cds.Params[0].AsInteger :=FormLocClientes.codigo_cliente;
          iCodigo                 :=FormLocClientes.codigo_cliente;
          cds.Open;
        end;

     finally
        FreeAndNil(FormLocClientes);
     end;

end;

procedure TFormClientes.btnSalvarClick(Sender: TObject);
begin

  if cdscli_codigo.AsString = EmptyStr then
   begin
    Application.MessageBox('Campo C?digo do Cliente Obrigat?rio !','Aten??o',MB_OK+MB_ICONERROR);
    Abort;
   end;

 if cdscli_razao.AsString = EmptyStr then
   begin
    Application.MessageBox('Campo Nome do Cliente Obrigat?rio !','Aten??o',MB_OK+MB_ICONERROR);
    Abort;
   end;

 if cdscli_fantasia.AsString = EmptyStr then
   begin
    Application.MessageBox('Campo Nome do Cliente Obrigat?rio !','Aten??o',MB_OK+MB_ICONERROR);
    Abort;
   end;

   //Antes de Inserir o Registro - Verifica o Sequencial p/ Evitar Duplicidade//
   if (cds.State in [dsInsert]) then
   begin
     cdscli_codigo.AsInteger := fSEQUENCIAL('clientes','cli_codigo');
   end;

   //Armazena o Codigo no Campo//
   iCodigo := cdscli_codigo.AsInteger;

   try
    cds.Post;
    cds.ApplyUpdates(0);
   except on e:Exception do
    begin
        Application.MessageBox(pchar('Erro ao Inserir Registro no Banco de Dados. Erro.:'+e.Message+''),'Aten??o',MB_OK+MB_ICONERROR);
    end;
   end;
end;

procedure TFormClientes.CarregaComponentesCor();
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


      if (Components[I] is TJvDBMaskEdit) then
      begin
        TJvDBMaskEdit(Components[I]).OnEnter := EntraFoco;
        TJvDBMaskEdit(Components[I]).OnExit := SaiFoco;
      end;

      if(Components[I] is TDBMemo) then
      begin
        TDBMemo(Components[I]).OnEnter := EntraFoco;
        TDBMemo(Components[I]).OnExit := SaiFoco;
      end;

    end;

end;


procedure TFormClientes.cdsAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
    TotalRegistros;
end;

procedure TFormClientes.cdsAfterOpen(DataSet: TDataSet);
begin
  if cds.RecordCount > 0 then
    begin
      cdsHistorico.Close;
      cdsHistorico.Params[0].AsInteger := cdscli_codigo.AsInteger;
      cdsHistorico.Open;
    end;

    TotalRegistros;

  end;

procedure TFormClientes.cdsBeforePost(DataSet: TDataSet);
begin
  cdscli_dataalterado.Value := Date;
end;

procedure TFormClientes.cdsNewRecord(DataSet: TDataSet);
begin
   pg.ActivePage := TabSheet1;
   cdscli_codigo.AsInteger := fSEQUENCIAL('clientes','cli_codigo');
   iCodigo := 0;
   cdscli_datacadastro.AsDateTime := Date;
   cdscli_fisicajuridica.AsString := 'fis';
   dbmask_cpfcnpj.EditMask := '###.###.###-##'; //Fisica
   cdscli_ativo.AsString :='sim';
   cdsHistorico.Close;
end;

procedure TFormClientes.SaiFoco(Sender: TObject);
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

  if Sender is TJvDBMaskEdit then
  begin
    TJvDBMaskEdit(Sender).Color := clWhite;
  end;

  if Sender is TDBMemo then
  begin
    TDBMemo(Sender).Color := clWhite;
  end;

end;

procedure TFormClientes.dsStateChange(Sender: TObject);
begin
  btnNovo.Enabled := not(ds.State in dsEditModes);     //N?o esta em Edicao Ativa
  btnSalvar.Enabled := (ds.State in dsEditModes);      //Esta em Edicao Ativa
  btnCancelar.Enabled := (ds.State in dsEditModes);    //Esta em Edicao Ativa
  btnExcluir.Enabled := not(ds.State in dsEditModes);  //Esta em Edicao Ativa
end;

procedure TFormClientes.TotalRegistros;
var
    sql: string;
begin
    sql := 'SELECT COUNT(*) FROM clientes';
    status.Panels[0].Text := VarToStr(fExecuteScalar(sql)) + ' Registro(s)';
end;

procedure TFormClientes.EntraFoco(Sender: TObject);
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

  if Sender is TJvDBMaskEdit then
  begin
    TJvDBMaskEdit(Sender).Color := clYellow;
  end;

  if Sender is TDBMemo then
  begin
    TDBMemo(Sender).Color := clYellow;
  end;

end;


end.
