unit uFormOcorrenciaItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvToolEdit, Mask, JvExMask, JvBaseEdits,
  FMTBcd, DB, DBClient, Provider, SqlExpr, JvDBControls, DBCtrls, JvExStdCtrls,
  JvCombobox, JvDBCombobox;

type
  TFormOcorrenciaItens = class(TForm)
    PanelBotoes: TPanel;
    btnFechar: TBitBtn;
    btnSalvar: TBitBtn;
    PanelItens: TPanel;
    edt_nome_cliente: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edt_nome_tipoprocesso: TEdit;
    Label6: TLabel;
    Label32: TLabel;
    Label7: TLabel;
    qryItem: TSQLQuery;
    dspItem: TDataSetProvider;
    cdsItem: TClientDataSet;
    dsItem: TDataSource;
    qryItemocr_codigo: TIntegerField;
    qryItemocr_item_codigo: TIntegerField;
    qryItemocr_item_datalancamento: TDateField;
    qryItemcliente_codigo: TIntegerField;
    qryItemtipo_codigo: TIntegerField;
    qryItemocr_item_nroprocesso: TStringField;
    qryItemocr_item_observacao: TMemoField;
    qryItemocr_item_cargahoraria: TFloatField;
    cdsItemocr_codigo: TIntegerField;
    cdsItemocr_item_codigo: TIntegerField;
    cdsItemocr_item_datalancamento: TDateField;
    cdsItemcliente_codigo: TIntegerField;
    cdsItemtipo_codigo: TIntegerField;
    cdsItemocr_item_nroprocesso: TStringField;
    cdsItemocr_item_observacao: TMemoField;
    cdsItemocr_item_cargahoraria: TFloatField;
    dbe_nroprocesso: TDBEdit;
    DBMemoOBS: TDBMemo;
    JvDBCalcCargaHoraria: TJvDBCalcEdit;
    JvDBComboTipoProcesso: TJvDBComboEdit;
    JvDBComboCliente: TJvDBComboEdit;
    JvDBDateLcto: TJvDBDateEdit;
    qryItemocr_item_status: TStringField;
    cdsItemocr_item_status: TStringField;
    Label8: TLabel;
    JvDBComboBoxStatus: TJvDBComboBox;
    qryItemocr_item_dataconclusao: TDateField;
    qryItemocr_item_horalancamento: TStringField;
    qryItemocr_item_horaconclusao: TStringField;
    cdsItemocr_item_dataconclusao: TDateField;
    cdsItemocr_item_horalancamento: TStringField;
    cdsItemocr_item_horaconclusao: TStringField;
    Label9: TLabel;
    Label10: TLabel;
    JvDBDateConclusao: TJvDBDateEdit;
    dbe_horaconclusao: TDBEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CarregaComponentesCor();
    procedure EntraFoco(Sender: TObject);
    procedure SaiFoco(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function fValidarCampos : Boolean;
    procedure JvDBComboTipoProcessoButtonClick(Sender: TObject);
    procedure JvDBComboTipoProcessoChange(Sender: TObject);
    procedure JvDBComboTipoProcessoExit(Sender: TObject);
    procedure JvDBComboClienteButtonClick(Sender: TObject);
    procedure JvDBComboClienteChange(Sender: TObject);
    procedure JvDBComboClienteExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NovoRegistro;
    procedure AlterarRegistro;
    procedure cdsItemNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    ocorrencia_codigo:integer;
    ocorrencia_item_codigo:integer;
  end;

var
  FormOcorrenciaItens: TFormOcorrenciaItens;

implementation

uses uLibs, uFormLocClientes, uFormLocTipoProcesso, uDM;

{$R *.dfm}

procedure TFormOcorrenciaItens.AlterarRegistro;
begin
  cdsItem.Params[0].AsInteger := ocorrencia_codigo;
  cdsItem.Params[1].AsInteger := ocorrencia_item_codigo;
  cdsItem.Open;
  cdsItem.Edit;
  ShowModal;
end;

procedure TFormOcorrenciaItens.btnFecharClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFormOcorrenciaItens.btnSalvarClick(Sender: TObject);
begin

   //Valida Campos
   if fValidarCampos = False then
    begin
      Application.MessageBox('Aten??o Campos Obrigat?rios n?o preenchidos !!','Aten??o',MB_OK+MB_ICONWARNING);
      Abort;
    end;


    if not (cdsItem.State in [dsEdit]) then
     begin
      //Mensagem Confirma??o para Conclus?o do Processo//       )
       if Application.MessageBox('DESEJA CONCLUIR O LAN?AMENTO DO PROCESSO COM A DATA ATUAL ?','A T E N ? ? O',MB_YESNO + MB_ICONQUESTION) = mrYes then
       begin
          cdsItemocr_item_dataconclusao.AsDateTime := Date;
          cdsItemocr_item_horaconclusao.AsString   := FormatDateTime('HH:MM',Time);
          cdsItemocr_item_status.AsString := 'con';
       end;
     end;

    //Se selecionou o status do processo concluido obrigar preencher data/hora conclus?o//
    if (cdsItemocr_item_status.AsString = 'con') then
    begin

      //Adiciona a Hora do Evento//
      cdsItemocr_item_horaconclusao.AsString   := FormatDateTime('HH:MM',Time);
      //------------------------//

      if (cdsItemocr_item_dataconclusao.AsString) = EmptyStr then
      begin
        Application.MessageBox('Campos [Data Conclus?o] s?o obrigat?rios !!!','Aten??o',MB_OK+MB_ICONWARNING);
        JvDBDateConclusao.SetFocus;
        Abort;
      end;

    end;

   try
      cdsItem.Post;
      cdsItem.ApplyUpdates(0);
     except on e:Exception do
      begin
          Application.MessageBox(pChar('Erro ao confirmar dados do Item da Ocorr?ncia. erro.: '+e.Message+''),'Aten??o',MB_OK+MB_ICONERROR);
      end;
     end;

    //Fecha o Formul?rio
    ModalResult := mrOk;

end;

procedure TFormOcorrenciaItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsItem.Close;
end;

procedure TFormOcorrenciaItens.FormCreate(Sender: TObject);
begin
  CarregaComponentesCor;
end;

procedure TFormOcorrenciaItens.FormKeyPress(Sender: TObject; var Key: Char);
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

function TFormOcorrenciaItens.fValidarCampos: Boolean;
begin
  if
    (JvDBComboCliente.Text = EmptyStr) or
    (JvDBDateLcto.Text = EmptyStr) or
    (dbe_nroprocesso.Text = EmptyStr) or
    (JvDBCalcCargaHoraria.AsInteger <= 0) or
    (JvDBComboTipoProcesso.Text = EmptyStr) or
    (edt_nome_cliente.Text = EmptyStr) or
    (edt_nome_tipoprocesso.Text = EmptyStr) then
        Result := False
  else
        Result := True;

end;

procedure TFormOcorrenciaItens.JvDBComboClienteButtonClick(Sender: TObject);
begin
 try
    FormLocClientes := TFormLocClientes.Create(self);
    FormLocClientes.ShowModal;

    if FormLocClientes.ModalResult  = mrOk then
      begin
        JvdbComboCliente.Text := inttostr(FormLocClientes.codigo_cliente);
      end;

  finally
     FreeAndNil(FormLocClientes);
  end;
end;

procedure TFormOcorrenciaItens.JvDBComboClienteChange(Sender: TObject);
begin

  if trim(JvdbComboCliente.Text) <> EmptyStr then
      edt_nome_cliente.Text := show_nome_cliente(JvdbComboCliente.Text)
  else
      edt_nome_cliente.Clear

end;

procedure TFormOcorrenciaItens.JvDBComboClienteExit(Sender: TObject);
begin
  if trim(JvdbComboCliente.Text) = EmptyStr then
    begin
      edt_nome_cliente.Clear;
    end;
end;

procedure TFormOcorrenciaItens.JvDBComboTipoProcessoButtonClick(Sender: TObject);
begin

  try
    FormLocTipoProcesso := TFormLocTipoProcesso.Create(self);
    FormLocTipoProcesso.ShowModal;

    if FormLocTipoProcesso.ModalResult  = mrOk then
      begin
        JvDBComboTipoProcesso.Text := inttostr(FormLocTipoProcesso.tipoprocesso_codigo);
      end;

  finally
     FreeAndNil(FormLocTipoProcesso);
  end;
end;

procedure TFormOcorrenciaItens.JvDBComboTipoProcessoChange(Sender: TObject);
begin
  if trim(JvDBComboTipoProcesso.Text) <> EmptyStr then
      edt_nome_tipoprocesso.Text := show_nome_tipo_processo(JvDBComboTipoProcesso.Text)
  else
    edt_nome_tipoprocesso.Clear

end;

procedure TFormOcorrenciaItens.JvDBComboTipoProcessoExit(Sender: TObject);
begin
  if trim(JvDBComboTipoProcesso.Text) = EmptyStr then
    begin
      edt_nome_tipoprocesso.Clear;
    end;
end;

procedure TFormOcorrenciaItens.NovoRegistro;
begin
  cdsItem.Open;
  cdsItem.Append;
  ShowModal;
end;

procedure TFormOcorrenciaItens.CarregaComponentesCor();
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

     if (Components[I] is TDBMemo) then
      begin
        TDBMemo(Components[I]).OnEnter := EntraFoco;
        TDBMemo(Components[I]).OnExit := SaiFoco;
      end;

     if (Components[I] is TJvdbCalcEdit) then
      begin
        TJvdbCalcEdit(Components[I]).OnEnter := EntraFoco;
        TJvdbCalcEdit(Components[I]).OnExit := SaiFoco;
      end;


    end;
end;

procedure TFormOcorrenciaItens.cdsItemNewRecord(DataSet: TDataSet);
begin
  cdsItemocr_codigo.AsInteger := cdsItem.Params[0].AsInteger;
  cdsItemocr_item_codigo.AsInteger := fSEQUENCIALItem('ocorrencia_itens','ocr_item_codigo',cdsItem.Params[0].AsInteger);
  cdsItemocr_item_datalancamento.AsDateTime := Date;
  cdsItemocr_item_horalancamento.AsString   := FormatDateTime('HH:MM',Time);
  cdsItemocr_item_status.AsString := 'and';
end;

procedure TFormOcorrenciaItens.EntraFoco(Sender: TObject);
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

  if Sender is TDBMemo then
  begin
    TDBMemo(Sender).Color := clYellow;
  end;

  if Sender is TJvDBCalcEdit then
  begin
    TJvDBCalcEdit(Sender).Color := clYellow;
  end;

end;


procedure TFormOcorrenciaItens.SaiFoco(Sender: TObject);
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

  if Sender is TDBMemo then
  begin
    TDBMemo(Sender).Color := clWhite;
  end;

  if Sender is TJvDBCalcEdit then
  begin
    TJvDBCalcEdit(Sender).Color := clWhite;
  end;

end;

end.
