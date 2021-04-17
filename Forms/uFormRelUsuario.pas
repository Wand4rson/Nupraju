unit uFormRelUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, StdCtrls, Buttons, frxClass, frxDBSet,
  frxExportPDF, ExtCtrls;

type
  TFormRelUsuario = class(TForm)
    BitBtn1: TBitBtn;
    qryUser: TSQLQuery;
    qryUseremp_codigo: TIntegerField;
    qryUserusr_codigo: TIntegerField;
    qryUserusr_nome: TStringField;
    qryUserusr_senha: TStringField;
    frxDBDatasetUser: TfrxDBDataset;
    qryUserusr_ativo: TStringField;
    Shape1: TShape;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelUsuario: TFormRelUsuario;

implementation

uses uDM, uDMReports;

{$R *.dfm}

procedure TFormRelUsuario.BitBtn1Click(Sender: TObject);
  var
  sCaminhoRel : string;
begin
   sCaminhoRel := 'C:\Nupraju\Reports\';
   DMReports.frxReport.LoadFromFile(sCaminhoRel + 'relusuarios.fr3');
   DMReports.frxReport.ShowReport;
end;

end.
