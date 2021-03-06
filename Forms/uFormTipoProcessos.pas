unit uFormTipoProcessos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, DBClient, Provider,
  Mask, DBCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ComCtrls;

type
  TFormTipoProcessos = class(TForm)
    Panel1: TPanel;
    btnFechar: TBitBtn;
    btnNovo: TBitBtn;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    qry: TSQLQuery;
    qrytp_codigo: TIntegerField;
    qrytp_descricao: TStringField;
    qrytp_ativo: TStringField;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdstp_codigo: TIntegerField;
    cdstp_descricao: TStringField;
    cdstp_ativo: TStringField;
    ds: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    dbe_codigo: TDBEdit;
    Label2: TLabel;
    dbe_descricao: TDBEdit;
    grid: TJvDBUltimGrid;
    status: TStatusBar;
    DBRadioGroup: TDBRadioGroup;
    procedure dsStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CarregaComponentesCor();
    procedure SaiFoco(Sender : TObject);
    procedure EntraFoco(Sender : TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure TotalRegistros;
    procedure cdsAfterOpen(DataSet: TDataSet);
    procedure cdsAfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTipoProcessos: TFormTipoProcessos;

implementation

uses uDM, uLibs;

{$R *.dfm}

procedure TFormTipoProcessos.btnCancelarClick(Sender: TObject);
begin
cds.Cancel;
end;

procedure TFormTipoProcessos.btnExcluirClick(Sender: TObject);
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

procedure TFormTipoProcessos.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormTipoProcessos.btnNovoClick(Sender: TObject);
begin
  cds.Append;
  dbe_descricao.SetFocus;
end;

procedure TFormTipoProcessos.btnSalvarClick(Sender: TObject);
begin

  if cdstp_codigo.AsString = EmptyStr then
   begin
    Application.MessageBox('Campo C?digo Obrigat?rio !','Aten??o',MB_OK+MB_ICONERROR);
    Abort;
   end;

 if cdstp_descricao.AsString = EmptyStr then
   begin
    Application.MessageBox('Campo Descri??o Obrigat?rio !','Aten??o',MB_OK+MB_ICONERROR);
    Abort;
   end;

   //Antes de Inserir o Registro - Verifica o Sequencial p/ Evitar Duplicidade//
   if (cds.State in [dsInsert]) then
   begin
      cdstp_codigo.AsInteger := fSEQUENCIAL('tipo_processo','tp_codigo');
   end;

   try
    cds.Post;
    cds.ApplyUpdates(0);
   except on e:Exception do
    begin
        Application.MessageBox(pchar('Erro ao Inserir Registro no Banco de Dados. Erro.:'+e.Message+''),'Aten??o',MB_OK+MB_ICONERROR);
    end;
   end;

end;

procedure TFormTipoProcessos.CarregaComponentesCor;
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
    end;

end;

procedure TFormTipoProcessos.cdsAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  TotalRegistros;
end;

procedure TFormTipoProcessos.cdsAfterOpen(DataSet: TDataSet);
begin
  TotalRegistros;
end;

procedure TFormTipoProcessos.cdsNewRecord(DataSet: TDataSet);
begin
 cdstp_codigo.AsInteger := fSEQUENCIAL('tipo_processo','tp_codigo');
 cdstp_ativo.AsString := 'sim';
end;

procedure TFormTipoProcessos.dsStateChange(Sender: TObject);
begin
  btnNovo.Enabled := not(ds.State in dsEditModes);     //N?o esta em Edicao Ativa
  btnSalvar.Enabled := (ds.State in dsEditModes);      //Esta em Edicao Ativa
  btnCancelar.Enabled := (ds.State in dsEditModes);    //Esta em Edicao Ativa
  btnExcluir.Enabled := not(ds.State in dsEditModes);  //Esta em Edicao Ativa
end;

procedure TFormTipoProcessos.EntraFoco(Sender: TObject);
begin
 //Cor Quando Entra no Campo
  if Sender is TDBEdit then
    begin
      TDBEdit(Sender).Color := clYellow ;
    end;
end;

procedure TFormTipoProcessos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cds.Close;
end;

procedure TFormTipoProcessos.FormCreate(Sender: TObject);
begin
  CarregaComponentesCor;
end;

procedure TFormTipoProcessos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormTipoProcessos.FormShow(Sender: TObject);
begin
  cds.Open;
end;

procedure TFormTipoProcessos.SaiFoco(Sender: TObject);
begin
   //Cor Quando Sai do Campo
  if Sender is TDBEdit then
    begin
      TDBEdit(Sender).Color := clWhite;
    end;

end;

procedure TFormTipoProcessos.TotalRegistros;
var
    sql: string;
begin
    sql := 'SELECT COUNT(*) FROM tipo_processo';
    status.Panels[0].Text := VarToStr(fExecuteScalar(sql)) + ' Registro(s)';
end;


end.
