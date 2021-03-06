unit uLibs;

interface

uses
DB, SqlExpr,uDM,SysUtils,Forms,DBCtrls;

function show_nome_cidade(str_codigo_cid:string):string;
function show_nome_cliente(str_codigo_cli:string):string;
function show_nome_tipo_processo(str_codigo_tipo:string):string;
function show_nome_aluno(str_codigo_aluno:string):string;
function fSEQUENCIAL(tabela: string; campo_chave: string): integer;
function fSEQUENCIALItem(tabela: string; campo_chave: string;codigo:integer): integer;
function valida_DateNoEmpty(date: string): Boolean;
function fExecuteScalar(str_select:string):string;
procedure ConcluirProcesso(iOcorrencia:integer;iOcorrenciaItem:integer);
function fTemProcessoConcluido(iOcorrencia:integer):Boolean;
function ExecuteNonQuery(sql: string): Boolean;

var
 EMPRESA : integer = 1; //Empresa Default

implementation

function show_nome_cidade(str_codigo_cid:string):string;
var
  sSQl:string;
  qry :TSQLQuery;
begin

  sSQl := '';
  sSQl := sSQl + ' SELECT';
  sSQl := sSQl + '  cid_nome';
  sSQl := sSQl + ' FROM';
  sSQl := sSQl + '  cidade';
  sSQl := sSQl + ' WHERE';
  sSQl := sSQl + '  cid_codigo='+QuotedStr(str_codigo_cid)+'';

    qry := TSQLQuery.Create(nil);
    qry.SQLConnection := DM.conn;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add(sSQl);

  try
    qry.Open;
    Result := qry.Fields[0].AsString;
  finally
    qry.Free;
  end;

end;

function fSEQUENCIAL(tabela: string; campo_chave: string): integer;
var
  sSQL: string;
  qry: TSQLQuery;
begin

  sSQL := '';
  sSQL := sSQL + ' SELECT';
  sSQL := sSQL + '  MAX(' + campo_chave + ')';
  sSQL := sSQL + ' FROM';
  sSQL := sSQL + '  ' + tabela + '';

  try
  qry := TSQLQuery.Create(nil);
  qry.SQLConnection := DM.conn;
  qry.SQL.Clear;
  qry.SQL.Add(sSQL);
  qry.Open;

  if qry.RecordCount = 0 then
    Result := 1
  else
    Result := qry.Fields[0].AsInteger + 1

  finally
  qry.Free;
  end;

end;

function show_nome_cliente(str_codigo_cli:string):string;
var
  sSQl:string;
  qry :TSQLQuery;
begin

  sSQl := '';
  sSQl := sSQl + ' SELECT';
  sSQl := sSQl + '  cli_razao';
  sSQl := sSQl + ' FROM';
  sSQl := sSQl + '  clientes';
  sSQl := sSQl + ' WHERE';
  sSQl := sSQl + '  cli_codigo='+QuotedStr(str_codigo_cli)+'';

    qry := TSQLQuery.Create(nil);
    qry.SQLConnection := DM.conn;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add(sSQl);

  try
    qry.Open;
    Result := qry.Fields[0].AsString;
  finally
    qry.Free;
  end;

end;

function show_nome_tipo_processo(str_codigo_tipo:string):string;
var
  sSQl:string;
  qry :TSQLQuery;
begin

  sSQl := '';
  sSQl := sSQl + ' SELECT';
  sSQl := sSQl + '  tp_descricao';
  sSQl := sSQl + ' FROM';
  sSQl := sSQl + '  tipo_processo';
  sSQl := sSQl + ' WHERE';
  sSQl := sSQl + '  tp_codigo='+QuotedStr(str_codigo_tipo)+'';

    qry := TSQLQuery.Create(nil);
    qry.SQLConnection := DM.conn;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add(sSQl);

  try
    qry.Open;
    Result := qry.Fields[0].AsString;
  finally
    qry.Free;
  end;

end;

function show_nome_aluno(str_codigo_aluno:string):string;
var
  sSQl:string;
  qry :TSQLQuery;
begin

  sSQl := '';
  sSQl := sSQl + ' SELECT';
  sSQl := sSQl + '  alu_nome';
  sSQl := sSQl + ' FROM';
  sSQl := sSQl + '  alunos';
  sSQl := sSQl + ' WHERE';
  sSQl := sSQl + '  alu_matricula='+QuotedStr(str_codigo_aluno)+'';

    qry := TSQLQuery.Create(nil);
    qry.SQLConnection := DM.conn;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add(sSQl);

  try
    qry.Open;
    Result := qry.Fields[0].AsString;
  finally
    qry.Free;
  end;

end;

function fSEQUENCIALItem(tabela: string; campo_chave: string;codigo:integer): integer;
var
  sSQL: string;
  qry: TSQLQuery;
begin

  sSQL := '';
  sSQL := sSQL + ' SELECT';
  sSQL := sSQL + '  MAX(' + campo_chave + ')';
  sSQL := sSQL + ' FROM';
  sSQL := sSQL + '  ' + tabela + '';
  sSQL := sSQL + ' WHERE';
  sSQL := sSQL + '  ocr_codigo='+IntToStr(codigo)+'';

  try
  qry := TSQLQuery.Create(nil);
  qry.SQLConnection := DM.conn;
  qry.SQL.Clear;
  qry.SQL.Add(sSQL);
  qry.Open;

  if qry.RecordCount = 0 then
    Result := 1
  else
    Result := qry.Fields[0].AsInteger + 1

  finally
  qry.Free;
  end;

end;

function valida_DateNoEmpty(date: string): Boolean;
var
    valido: Boolean;
begin
    valido := False;
    if Trim(StringReplace(date, '/', '', [rfReplaceAll, rfIgnoreCase])) <> EmptyStr then
        valido := True;

    Result := valido;

end;

function fExecuteScalar(str_select:string):string;
  var
  sSQL:string;
  oQry : TSQLQuery;
 begin

    sSQL := '';
    sSQL := sSQL  + '' + str_select + '';

    try
      oQry := TSQLQuery.Create(nil);
      oQry.SQLConnection := DM.Conn;
      oQry.SQL.Clear;
      oQry.SQL.Add(sSQL);
      oQry.Open;

      if not oQry.IsEmpty then
        Result := oQry.Fields[0].AsString
      else
        Result := ''
    finally
      oQry.Close;
      oQry.Free;
    end;
 end;

 procedure ConcluirProcesso(iOcorrencia:integer;iOcorrenciaItem:integer);
 var
  sSQL:string;
  oQry : TSQLQuery;
 begin

  sSQL := '';
  sSQL := sSQL  + ' UPDATE ocorrencia_itens SET';
  sSQL := sSQL  + '  ocr_item_dataconclusao='+QuotedStr(FormatDateTime('yyyy-mm-dd',Date))+',';
  sSQL := sSQL  + '  ocr_item_horaconclusao='+QuotedStr(FormatDateTime('hh:mm',Time))+',';
  sSQL := sSQL  + '  ocr_item_status='+QuotedStr('con')+'';
  sSQL := sSQL  + ' WHERE';
  sSQL := sSQL  + '  ocr_codigo='+IntToStr(iOcorrencia)+' AND';
  sSQL := sSQL  + '  ocr_item_codigo='+IntToStr(iOcorrenciaItem)+'';

  oQry := TSQLQuery.Create(nil);
  oQry.SQLConnection := dm.conn;
  oQry.SQL.Clear;
  oQry.SQL.Add(sSQL);
  try
    oQry.ExecSQL();
  finally
    oQry.Free;
  end;

 end;

{Verifica no Lan?amento das Ocorr?ncias se possui algum processo Concluido n?o permite mais
Excluir a Ocorr?ncia}
function fTemProcessoConcluido(iOcorrencia:integer):Boolean;
var
  sSQL: string;
  qry: TSQLQuery;
begin
  sSQL := '';
  sSQL := sSQL + ' SELECT';
  sSQL := sSQL + '  COUNT(*)';
  sSQL := sSQL + ' FROM';
  sSQL := sSQL + '  ocorrencia_itens';
  sSQL := sSQL + ' WHERE';
  sSQL := sSQL + '  ocr_codigo='+IntToStr(iOcorrencia)+' AND';
  sSQL := sSQL + '  ocr_item_status ='+QuotedStr('con') + ' LIMIT 1';

  try
  qry := TSQLQuery.Create(nil);
  qry.SQLConnection := DM.conn;
  qry.SQL.Clear;
  qry.SQL.Add(sSQL);
  qry.Open;

     if not(qry.Fields[0].IsNull) then
      begin
        if (qry.Fields[0].AsInteger > 0) then
          Result := True
        else
          Result := False;
      end;

  finally
    qry.Free;
  end;
 end;


function ExecuteNonQuery(sql: string): Boolean;
var
  query: TSQLQuery;
begin
  query := TSQLQuery.Create(nil);
  try
    query.SQLConnection := DM.conn;
    query.sql.Clear;
    query.sql.Add(sql);
    query.ExecSQL;
    Result := True;
  except
    Result := False;
  end;
end;



end.
