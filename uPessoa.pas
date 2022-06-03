unit uPessoa;

interface
uses uEndereco;

type
  TPessoa = class

private
  FCodigo: integer;
  FNome: String;
  FIdentidade: String;
  FCPF : String;
  FTelefone : String;
  FEmail : String;
  FEndereco: TEndereco;


published
  property Codigo: Integer read FCodigo write FCodigo;
  property Nome: String read FNome write FNome;
  property Identidade: String read FIdentidade write FIdentidade;
  property CPF: string read FCPF write FCPF;
  property Telefone: string read FTelefone write FTelefone;
  property Email: string read FEmail write FEmail;
  property Endereco: TEndereco read FEndereco write FEndereco;

public
  procedure prcCarregarDados(vCodigo:Integer; vNome, vIdentidade, vCpf,
                           vTelefone, vEmail, vCep, vLogradouro, vNumero,
                           vComplemento, vBairro, vLocalidade, vUf, vPais:String);
  procedure LimparDados;
end;

implementation

procedure TPessoa.LimparDados;
begin
  try
    Codigo := 0;
    Nome := '';
    Identidade := '';
    Cpf := '';
    Telefone := '';
    Email := '';
    Endereco := TEndereco.Create();
    Endereco.Cep := '';
    Endereco.Logradouro := '';
    Endereco.Numero := '';
    Endereco.Complemento := '';
    Endereco.Bairro := '';
    Endereco.Localidade := '';
    Endereco.UF := '';
    Endereco.Pais := '';
  except

  end;
end;


procedure TPessoa.prcCarregarDados(vCodigo:Integer; vNome, vIdentidade, vCpf,
                                   vTelefone, vEmail, vCep, vLogradouro, vNumero,
                                   vComplemento, vBairro, vLocalidade, vUf, vPais:String);
begin
  try
    Codigo := vCodigo;
    Nome   := vNome;
    Identidade := vIdentidade;
    Cpf := vCpf;
    Telefone := vTelefone;
    Email := vEmail;

    Endereco := TEndereco.Create();
    Endereco.Cep := vCep;
    Endereco.Logradouro := vLogradouro;
    Endereco.Numero := vNumero;
    Endereco.Complemento := vComplemento;
    Endereco.Bairro := vBairro;
    Endereco.Localidade := vLocalidade;
    Endereco.UF := vUF;
    Endereco.Pais := vPais;
  except

  end;
end;


end.
