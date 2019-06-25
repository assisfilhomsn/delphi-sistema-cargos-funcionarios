unit UFuncoesDAO;

interface

uses UFuncoesModel, UDM_3LM, vcl.dialogs, SysUtils;

type
  TFuncoesDAO = Class
    Procedure InserirFuncoes(Funcoes: TFuncoesModel);
    Procedure AlterarFuncoes(Funcoes: TFuncoesModel);
    Procedure ApagarFuncoes(Funcoes: TFuncoesModel);
    Procedure MostraFuncoes(Retorno: TFuncoesModel; pCodigo: Integer);
    Procedure MostrarTodosFuncoes;
    Procedure MostrarFuncoesComRetorno(Retorno: TFuncoesModel);
    procedure RelatorioFuncoes(pOrdem: Integer);
    procedure RelatorioMasterFuncao;
  End;

implementation

{ TFuncoesDAO }

procedure TFuncoesDAO.AlterarFuncoes(Funcoes: TFuncoesModel);
begin
  with DataModule1.FDQuery1 do
  Begin
    Close;
    SQL.Clear;
    sql.Text := ' update funcoes f set f.descricao = :Descricao where f.codigo = :codigo ';
    ParamByName('codigo').AsInteger := Funcoes.CodigoFuncao;
    ParamByName('Descricao').AsString := Funcoes.DescricaoFuncao;

    try
      ExecSQL;
      ShowMessage('Altera��o de Fun��o realizado com sucesso');
    Except
      ShowMessage('Falha na altera��o de Fun��o');
    end;
  End;
end;

procedure TFuncoesDAO.ApagarFuncoes(Funcoes: TFuncoesModel);
begin
  with DataModule1.FDQuery1 do
  Begin
    Close;
    SQL.Clear;
    sql.Text := 'Delete from funcoes where codigo = :codigo';
    ParamByName('Codigo').AsInteger := Funcoes.CodigoFuncao;

    try
      ExecSQL;
      ShowMessage('Exclus�o de Fun��o realizado com sucesso');
    Except
      ShowMessage('Falha na Exclus�o de Fun��o');
    end;
  End;
end;

procedure TFuncoesDAO.InserirFuncoes(Funcoes: TFuncoesModel);
begin

  with DataModule1.FDQuery1 do
  Begin
    Close;
    SQL.Clear;
    sql.Text := ' Insert into funcoes (Codigo, Descricao) Values (:Codigo, :Descricao)';
    ParamByName('Codigo').AsInteger := Funcoes.CodigoFuncao;
    ParamByName('Descricao').AsString := Funcoes.DescricaoFuncao;

    try
      ExecSQL;
      ShowMessage('Cadastro de Fun��o realizado com sucesso');
    Except
      ShowMessage('Falha no Cadastro de Fun��o');
    end;
  End;

end;

Procedure TFuncoesDAO.MostraFuncoes(Retorno: TFuncoesModel; pCodigo: Integer);
begin

  with DataModule1.FDQuery1 do
  Begin
    Close;
    SQL.Clear;
    sql.Text := ' Select Codigo, descricao from funcoes where codigo = :codigo';
    ParamByName('codigo').AsInteger := pCodigo;


    try
      Open;
      Retorno.CodigoFuncao := FieldByName('codigo').AsInteger;
      Retorno.DescricaoFuncao := FieldByName('Descricao').AsString;
    Except
      ShowMessage('Falha na pesquisa de Fun��o');
    end;
  End;

end;

procedure TFuncoesDAO.MostrarFuncoesComRetorno(Retorno: TFuncoesModel);
begin
  with DataModule1.FDQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'Select codigo, descricao from funcoes ';

    try
      Open;
      Retorno.CodigoFuncao := FieldByName('codigo').AsInteger;
      Retorno.DescricaoFuncao := FieldByName('descricao').AsString;
    Except
      ShowMessage('Falha MostrarFuncoesComRetorno');
    end;
  end;
end;

procedure TFuncoesDAO.MostrarTodosFuncoes;
begin
  with DataModule1.FDQuery1 do
  Begin
    Close;
    SQL.Clear;
    SQL.Text := 'Select * from funcoes order by 1';
    Open;
  End;
end;

procedure TFuncoesDAO.RelatorioFuncoes(pOrdem: Integer);
begin
  with DataModule1.FDQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Text := ' Select f.codigo, f.descricao ' +#13#10+
                ' from funcoes f ';

    case pOrdem of
      0: SQL.Add(' Order by 1 ');
      1: SQL.Add(' Order by 2 ');
    end;

    try
      Open;
    Except
      ShowMessage('Falha ao montar o Relat�rio');
    end;

  end;
end;

procedure TFuncoesDAO.RelatorioMasterFuncao;
begin
  with DataModule1.FDQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Text := ' Select * from funcoes ';

    try
      open;
    except
      on E: Exception do
        ShowMessage('Falha na Pesquisa Funcoes (Master) -> '+ e.Message);
    end;
  end;
end;

end.
