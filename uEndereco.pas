unit uEndereco;

interface


type
  TEndereco = class
private
  FCep: String;
  FLogradouro: String;
  FNumero : String;
  FComplemento : String;
  FBairro : String;
  FLocalidade : String;
  FUF : String;
  FPais : String;
published
    property Cep: String read FCep write FCep;
    property Logradouro: String read FLogradouro write FLogradouro;
    property Numero: String read FNumero write FNumero;
    property Complemento: String read FComplemento write FComplemento;
    property Bairro: String read FBairro write FBairro;
    property Localidade: String read FLocalidade write FLocalidade;
    property UF: String read FUF write FUF;
    property Pais: String read FPais write FPais;
end;

implementation




end.
