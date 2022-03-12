unit uCalculadoraIMC;

interface

uses System.SysUtils, uPessoa, uResultadoIMC;

  Type TCalculadoraIMC = class
  private

  protected

  public
    function Calcular(pPessoa: TPessoa): RResultadoIMC;
  published
end;

implementation

{ TCalculadoraIMC }

function TCalculadoraIMC.Calcular(pPessoa: TPessoa): RResultadoIMC;
var
  imc: Double;
  imcDescricao: String;
begin

try
  imc := pPessoa.Peso / (pPessoa.Altura*pPessoa.Altura);

  if pPessoa.Sexo = 'F' then
  begin
    if (imc < 19.1) then
      imcDescricao := 'abaixo do peso; ' +
    else
      if (imc >= 19.1) and (imc <= 25.8) then
        imcDescricao := 'no peso normal'
      else
        if (imc > 25.8) and (imc <= 32.3) then
          imcDescricao := 'acima do peso ideal'
        else
          if (imc > 32.3) then
            imcDescricao := 'obeso';
  end
  else
  if pPessoa.Sexo = 'M' then
  begin
    if (imc < 20.7) then
      imcDescricao := 'abaixo do peso'
    else
      if (imc >= 20.7) and (imc <= 26.4) then
        imcDescricao := 'no peso normal'
      else
        if (imc > 26.4) and (imc <= 27.8) then
          imcDescricao := 'acima do peso ideal'
        else
          if (imc > 31.1) then
            imcDescricao := 'obeso';
  end;

  Result.Valor := imc;
  Result.Descricao := imcDescricao;
except
  raise Exception.Create('Erro ao efetura o calculo do IMC');

end;

end;

end.
