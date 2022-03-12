unit uPessoa;

interface

uses
  System.SysUtils;

  Type

    TPessoa = class
    private
      FPeso: Double;
      FAltura: Double;
      FSexo: Char;
      procedure SetAltura(const Value: Double);
      procedure SetPeso(const Value: Double);
      procedure SetSexo(const Value: Char);

    protected

    public
      property Altura: Double read FAltura write SetAltura;
      property Peso: Double read FPeso write SetPeso;
      property Sexo: Char read FSexo write SetSexo;

    published
    end;

implementation

{ TPessoa }

procedure TPessoa.SetAltura(const Value: Double);
begin
  FAltura := Value;
end;

procedure TPessoa.SetPeso(const Value: Double);
begin
  FPeso := Value;
end;

procedure TPessoa.SetSexo(const Value: Char);
begin
  if Value in ['F', 'M'] then
    FSexo := Value
  else
  raise Exception.Create('Sexo invalido');
end;

end.
