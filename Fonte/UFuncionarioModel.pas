unit UFuncionarioModel;

interface

uses UFuncoesModel;

type
  TFuncionarioModel = class
    private
      // Campos
      FcodigoFuncionario : Integer;
      FNomeFuncionario : string;
      FSalarioFuncionario : Double;
      FDT_NascimentoFuncionario : TDate;
      FCod_FuncaoFuncionario : Integer;

      // Getters
      function getCodigoFuncionario: Integer;
      function getNomeFuncionario: string;
      function getSalarioFuncionario : Double;
      function getDT_NascimentoFuncionario : TDate;
      function getCod_FuncaoFuncionario : Integer;

      // Setters
      procedure setCodigoFuncionario(Const Value: Integer);
      procedure setNomeFuncionario(Const Value: string);
      procedure setSalarioFuncionario(Const Value: Double);
      procedure setDT_NascimentoFuncionario(Const Value: TDate);
      procedure setCod_FuncaoFuncionario(Const Value: Integer);

    public
      property codigoFuncionario         : Integer  read FcodigoFuncionario        write FcodigoFuncionario;
      property NomeFuncionario           : string   read FNomeFuncionario          write FNomeFuncionario;
      property SalarioFuncionario        : Double   read FSalarioFuncionario       write FSalarioFuncionario;
      property DT_NascimentoFuncionario  : TDate    read FDT_NascimentoFuncionario write FDT_NascimentoFuncionario;
      property Cod_FuncaoFuncionario     : Integer  read FCod_FuncaoFuncionario    write FCod_FuncaoFuncionario;
  end;

implementation



{ TFuncionarioModel }

function TFuncionarioModel.getCodigoFuncionario: Integer;
begin
  Result := FcodigoFuncionario;
end;

function TFuncionarioModel.getCod_FuncaoFuncionario: Integer;
begin
  Result := FCod_FuncaoFuncionario;
end;

function TFuncionarioModel.getDT_NascimentoFuncionario: TDate;
begin
  Result := FDT_NascimentoFuncionario;
end;

function TFuncionarioModel.getNomeFuncionario: string;
begin
  Result := FNomeFuncionario;
end;

function TFuncionarioModel.getSalarioFuncionario: Double;
begin
  Result := FSalarioFuncionario;
end;

procedure TFuncionarioModel.setCodigoFuncionario(const Value: Integer);
begin
  FcodigoFuncionario := Value;
end;

procedure TFuncionarioModel.setCod_FuncaoFuncionario(const Value: Integer);
begin
  FCod_FuncaoFuncionario := Value;
end;

procedure TFuncionarioModel.setDT_NascimentoFuncionario(const Value: TDate);
begin
  FDT_NascimentoFuncionario := Value;
end;

procedure TFuncionarioModel.setNomeFuncionario(const Value: string);
begin
  FNomeFuncionario := Value;
end;

procedure TFuncionarioModel.setSalarioFuncionario(const Value: Double);
begin
  FSalarioFuncionario := Value;
end;

end.
