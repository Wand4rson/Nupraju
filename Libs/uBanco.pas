unit uBanco;

interface
uses
  DB, SqlExpr,uDM,uLibs,SysUtils;

  function fSEQUENCIAL(tabela:string;campo_chave:string):integer;

implementation


  function fSEQUENCIAL(tabela:string;campo_chave:string):integer;
  var
    qry : TSQLQuery;
    sSQL : string;
  begin

    sSQL := '';
    sSQL := sSQL + ' SELECT MAX('+campo_chave+')';
    sSQL := sSQL + ' FROM';
    sSQL := sSQL + ' '+tabela+'';
    sSQL := sSQL + ' WHERE';
    sSQL := sSQL + ' emp_codigo='+ IntToStr(EMPRESA)+'';

    try
      qry := TSQLQuery.Create(nil);
      qry.SQLConnection := DM.conn;
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Add(sSQL);
      qry.Open;

      if qry.RecordCount = 0 then
        Result := 1
      else
        Result := qry.Fields[0].AsInteger + 1;

    finally
      qry.Close;
      qry.Free;
    end;

  end;

end.
