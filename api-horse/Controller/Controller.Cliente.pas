unit Controller.Cliente;

interface

uses Horse, System.JSON, System.SysUtils, Model.Cliente,
     FireDAC.Comp.Client, Data.DB, DataSet.Serialize;

procedure Registry;

implementation

procedure ListarClientes(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  cli : TCliente;
  qry : TFDQuery;
  erro :string;
  arryClientes : TJSONArray;
begin

  try
    cli := TCliente.Create;
  except 
  
//    REST.Json.Send('Erro ao conectar com o banco').Status(500); 
    Exit;

  end;

end;

procedure CadastrarCliente(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  Res.Send('Cadastrar um cliente...');
end;

procedure AlterarCliente(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  Res.Send('Alterar um cliente...');
end;

procedure DeletarCliente(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  Res.Send('Deletar um cliente...');
end;

procedure Registry;
begin
  THorse.Get('/cliente', ListarClientes);
  THorse.Post('/cliente', CadastrarCliente);
  THorse.Put('/cliente', AlterarCliente);
  THorse.Delete('/cliente', DeletarCliente);
end;

end.
