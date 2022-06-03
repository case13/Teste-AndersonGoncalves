unit untTesteInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, Vcl.StdCtrls, Data.DB,
  Vcl.DBCtrls, Datasnap.DBClient, System.JSON,  REST.Response.Adapter, Vcl.Mask,
  Vcl.Buttons, REST.Json, uPessoa, uEndereco, system.Generics.Collections, XMLDoc, XMLIntf,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, IdMessage, IdIOHandler, IdIOHandlerSocket, IdText,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdAttachmentFile, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    NetHTTPClient1: TNetHTTPClient;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtNome: TEdit;
    edtIdentidade: TEdit;
    edtCpf: TEdit;
    edtTelefone: TEdit;
    edtEmail: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Button1: TButton;
    edtCep: TEdit;
    edtLogradouro: TEdit;
    edtNumero: TEdit;
    edtComplemento: TEdit;
    edtBairro: TEdit;
    edtLocalidade: TEdit;
    edtUF: TEdit;
    edtPais: TEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DataSource1: TDataSource;
    Shape1: TShape;
    Panel4: TPanel;
    lblCodigo: TLabel;
    Label15: TLabel;
    GroupBox2: TGroupBox;
    edtEmailDestino: TEdit;
    SpeedButton5: TSpeedButton;
    BitBtn1: TBitBtn;
    cdsRegistro: TClientDataSet;
    cdsRegistroCodigo: TAutoIncField;
    cdsRegistroNome: TStringField;
    cdsRegistroIdentidade: TStringField;
    cdsRegistroCpf: TStringField;
    cdsRegistroTelefone: TStringField;
    cdsRegistroEmail: TStringField;
    cdsRegistroCep: TStringField;
    cdsRegistroLogradouro: TStringField;
    cdsRegistroNumero: TStringField;
    cdsRegistroComplemento: TStringField;
    cdsRegistroLocalidade: TStringField;
    cdsRegistroBairro: TStringField;
    cdsRegistroUf: TStringField;
    cdsRegistroPais: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure JsonToDataset(aDataset : TDataSet; aJSON : string);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtCepKeyPress(Sender: TObject; var Key: Char);
    procedure edtCepKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

    // -- Procedimentos Implementados --
    procedure prcPreencherTela(Operacao:String);


    // -- Funções Implementadas --
    function fncPreencherDados:boolean;
    function fncGerarXML(Diretorio:String):boolean;
    function fncTranmitirEmail(Email:String; DiretorioArq:String):boolean;
    function fncGravarDados:string;

  private
    { Private declarations }
     Pessoa : TPessoa;
     
     const
      vPorta : integer = 465;
      vHost : string = 'mail.case13.com.br';
      vEmailOrigem : String = 'programa@case13.com.br';
      vSenha : string = '102030'; //'0190info22';

  public

    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


function tform1.fncGravarDados:string;
begin
  if Pessoa.Codigo = 0 then
   begin
     try
       cdsRegistro.Insert;
       cdsRegistrocodigo.AsInteger     := Pessoa.Codigo;
       cdsRegistroNome.AsString        := Pessoa.Nome;
       cdsRegistroIdentidade.AsString  := Pessoa.Identidade;
       cdsRegistroCpf.AsString         := Pessoa.CPF;
       cdsRegistroTelefone.AsString    := Pessoa.Telefone;
       cdsRegistroEmail.AsString       := Pessoa.Email;
       cdsRegistroCep.AsString         := Pessoa.Endereco.Cep;
       cdsRegistroLogradouro.AsString  := Pessoa.Endereco.Logradouro;
       cdsRegistroNumero.AsString      := Pessoa.Endereco.Numero;
       cdsRegistroComplemento.AsString := Pessoa.Endereco.Complemento;
       cdsRegistroLocalidade.AsString  := Pessoa.Endereco.Localidade;
       cdsRegistroUf.AsString          := Pessoa.Endereco.UF;
       cdsRegistroPais.AsString        := Pessoa.Endereco.Pais;
       cdsRegistroBairro.AsString      := Pessoa.Endereco.Bairro;
       cdsRegistro.Post;
       result := 'Inclusao';
     except
       result := 'Falha';
     end;
   end
  else
   begin
     try
        cdsRegistro.Locate('Codigo', Pessoa.Codigo, [loCaseInsensitive]);
        cdsRegistro.Edit;
        cdsRegistroNome.AsString        := Pessoa.Nome;
        cdsRegistroIdentidade.AsString  := Pessoa.Identidade;
        cdsRegistroCpf.AsString         := Pessoa.CPF;
        cdsRegistroTelefone.AsString    := Pessoa.Telefone;
        cdsRegistroEmail.AsString       := Pessoa.Email;
        cdsRegistroCep.AsString         := Pessoa.Endereco.Cep;
        cdsRegistroLogradouro.AsString  := Pessoa.Endereco.Logradouro;
        cdsRegistroNumero.AsString      := Pessoa.Endereco.Numero;
        cdsRegistroComplemento.AsString := Pessoa.Endereco.Complemento;
        cdsRegistroLocalidade.AsString  := Pessoa.Endereco.Localidade;
        cdsRegistroUf.AsString          := Pessoa.Endereco.UF;
        cdsRegistroPais.AsString        := Pessoa.Endereco.Pais;
        cdsRegistroBairro.AsString      := Pessoa.Endereco.Bairro;
        cdsRegistro.Post;
        result := 'Alteracao';
     except
       result := 'Falha';
     end;

   end;
end;

function tform1.fncTranmitirEmail(Email:String; DiretorioArq:String):boolean;
var
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
begin
 try
    try
      IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
      IdSMTP := TIdSMTP.Create(Self);
      IdMessage := TIdMessage.Create(Self);

      IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
      IdSSLIOHandlerSocket.SSLOptions.Mode   := sslmClient;

      IdSMTP.Port      := vPorta;
      IdSMTP.Host      := vHost;
      IdSMTP.Username  := vEmailOrigem;
      IdSMTP.Password  := vSenha;
      IdSMTP.IOHandler := IdSSLIOHandlerSocket;
      IdSMTP.UseTLS    := utUseImplicitTLS;
      IdSMTP.AuthType  := satDefault;

      IdMessage.From.Address := vEmailOrigem;
      IdMessage.From.Name := 'Info Sistemas - Teste Anderson Gonçalves';
      IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
      IdMessage.Recipients.Add.Text := Email;
      IdMessage.Subject := 'Arquivo XML - Anderson Gonçalves';
      IdMessage.Encoding := meMIME;

      IdText := TIdText.Create(IdMessage.MessageParts);
      IdText.Body.Add('Aqui está o seu arquivo XML gerado!');
      IdText.Body.Add('');
      IdText.Body.Add('Informações do Cadastro');
      IdText.Body.Add('Nome: '+Pessoa.Nome);
      IdText.Body.Add('Identidade: '+Pessoa.Identidade);
      IdText.Body.Add('CPF: '+Pessoa.CPF);
      IdText.Body.Add('Telefone: '+Pessoa.Telefone);
      IdText.Body.Add('Email: '+Pessoa.Email);
      IdText.Body.Add('');
      IdText.Body.Add('Informações do Endereço');
      IdText.Body.Add('CEP: '+Pessoa.Endereco.Cep);
      IdText.Body.Add('Logradouro: '+Pessoa.Endereco.Logradouro);
      IdText.Body.Add('Número: '+Pessoa.Endereco.Numero);
      IdText.Body.Add('Complemento: '+Pessoa.Endereco.Complemento);
      IdText.Body.Add('Bairro: '+Pessoa.Endereco.Bairro);
      IdText.Body.Add('Localidade: '+Pessoa.Endereco.Localidade);
      IdText.Body.Add('UF: '+Pessoa.Endereco.UF);
      IdText.Body.Add('País: '+Pessoa.Endereco.Pais);
      IdText.Body.Add('');
      IdText.Body.Add('Agradecido pela oportunidade');
      IdText.Body.Add('Anderson Gonçalves');


      IdText.ContentType := 'text/plain; charset=iso-8859-1';

      if FileExists(DiretorioArq) then
       begin
        TIdAttachmentFile.Create(IdMessage.MessageParts, DiretorioArq);
       end;

      try
       IdSMTP.Connect;
       IdSMTP.Authenticate;
      except
        on E:Exception do
        begin
          MessageDlg('Erro na conexão ou autenticação: ' +
            E.Message, mtWarning, [mbOK], 0);
          result := false;
          Exit;
        end;
      end;

      try
       IdSMTP.Send(IdMessage);
       result := true;
      except
        ShowMessage('Ocorreu um evento inesperado ao tentar enviar o email, verifique sua internet e email digitado!');
        result := false;
        Exit;
      end;


    finally
      IdSMTP.Disconnect;
      FreeAndNil(IdMessage);
      FreeAndNil(IdSMTP);
    end;
 except
  IdSMTP.Disconnect;
  FreeAndNil(IdMessage);
  FreeAndNil(IdSMTP);
  result := false;
 end;
end;

function TForm1.fncGerarXML(Diretorio:String):boolean;
var
  XMLDocument: TXMLDocument;
  NodeTabela, NodeRegistro, NodeEndereco: IXMLNode;
begin
 try
  XMLDocument := TXMLDocument.Create(Self);
  try
    XMLDocument.Active := True;

    NodeTabela := XMLDocument.AddChild('Pessoa');
    NodeTabela.ChildValues['Nome'] := Pessoa.Nome;
    NodeTabela.ChildValues['Identidade'] := Pessoa.Identidade;
    NodeTabela.ChildValues['CPF'] := Pessoa.CPF;
    NodeTabela.ChildValues['Telefone'] := Pessoa.Telefone;
    NodeTabela.ChildValues['Email'] := Pessoa.Email;
    NodeEndereco := NodeTabela.AddChild('Endereco');
    NodeEndereco.ChildValues['CEP'] := Pessoa.Endereco.Cep;
    NodeEndereco.ChildValues['Logradouro'] := Pessoa.Endereco.Logradouro;
    NodeEndereco.ChildValues['Numero'] := Pessoa.Endereco.Numero;
    NodeEndereco.ChildValues['Complemento'] := Pessoa.Endereco.Complemento;
    NodeEndereco.ChildValues['Bairro'] := Pessoa.Endereco.Bairro;
    NodeEndereco.ChildValues['Localidade'] := Pessoa.Endereco.Localidade;
    NodeEndereco.ChildValues['UF'] := Pessoa.Endereco.UF;
    NodeEndereco.ChildValues['Pais'] := Pessoa.Endereco.Pais;
    XMLDocument.SaveToFile(Diretorio+'\Arq'+Pessoa.Endereco.Cep+'.xml');
  finally
    XMLDocument.Free;
    result := true;
  end;
 except
   result := false;
 end;
end;



procedure tform1.prcPreencherTela(Operacao:String);
begin
 if UpperCase(Operacao) = 'CARREGAR' then
  begin
    try
      lblCodigo.Caption := IntToStr(Pessoa.Codigo);
      edtNome.Text := Pessoa.Nome;
      edtIdentidade.Text := Pessoa.Identidade;
      edtCpf.Text := Pessoa.Cpf;
      edtTelefone.Text := Pessoa.Telefone;
      edtEmail.Text := Pessoa.Email;
      edtCep.Text := Pessoa.Endereco.Cep;
      edtLogradouro.Text := Pessoa.Endereco.Logradouro;
      edtNumero.Text := Pessoa.Endereco.Numero;
      edtComplemento.Text := Pessoa.Endereco.Complemento;
      edtBairro.Text := Pessoa.Endereco.Bairro;
      edtLocalidade.Text := Pessoa.Endereco.Localidade;
      edtUF.Text := Pessoa.Endereco.UF;
      edtPais.Text := Pessoa.Endereco.Pais;
    except

    end;
  end;

 if UpperCase(Operacao) = 'ENDERECO' then
  begin
    try
      edtCep.Text := Pessoa.Endereco.Cep;
      edtLogradouro.Text := Pessoa.Endereco.Logradouro;
      edtNumero.Text := Pessoa.Endereco.Numero;
      edtComplemento.Text := Pessoa.Endereco.Complemento;
      edtBairro.Text := Pessoa.Endereco.Bairro;
      edtLocalidade.Text := Pessoa.Endereco.Localidade;
      edtUF.Text := Pessoa.Endereco.UF;
      edtPais.Text := Pessoa.Endereco.Pais;
    except

    end;
  end;

 if UpperCase(Operacao) = 'LIMPAR' then
  begin
    try
      lblCodigo.Caption := 'Novo Registro';
      edtNome.Text := '';
      edtIdentidade.Text := '';
      edtCpf.Text := '';
      edtTelefone.Text := '';
      edtEmail.Text := '';
      edtCep.Text := '';
      edtLogradouro.Text := '';
      edtNumero.Text := '';
      edtComplemento.Text := '';
      edtBairro.Text := '';
      edtLocalidade.Text := '';
      edtUF.Text := '';
      edtPais.Text := '';
    except

    end;
  end;


end;


procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if cdsRegistro.RecordCount = 0 then
   begin
     ShowMessage('Nenhum REGISTRO selecionado para ser DELETADO, operação cancelada pelo sistema!');
     Exit;
   end
  else
   begin
     If  MessageDlg('Você tem certeza que deseja DELETAR o registro?',mtConfirmation,[mbyes,mbno],0)=mryes then
      cdsRegistro.Delete;
   end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  if cdsRegistro.RecordCount = 0 then
   begin
     ShowMessage('Nenhum REGISTRO foi selecionado para ser ALTERADO, operação cancelada pelo sistema!');
     exit;
   end
  else
   begin
     Pessoa := TPessoa.Create();
     Pessoa.prcCarregarDados
      (
       cdsRegistroCodigo.AsInteger,
       cdsRegistroNome.AsString,
       cdsRegistroIdentidade.AsString,
       cdsRegistroCpf.AsString,
       cdsRegistroTelefone.AsString,
       cdsRegistroEmail.AsString,
       cdsRegistroCep.AsString,
       cdsRegistroLogradouro.AsString,
       cdsRegistroNumero.AsString,
       cdsRegistroComplemento.AsString,
       cdsRegistroBairro.AsString,
       cdsRegistroLocalidade.AsString,
       cdsRegistroUf.AsString,
       cdsRegistroPais.AsString
      );
      prcPreencherTela('Carregar');
      edtNome.SetFocus;
   end;

end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  Pessoa := TPessoa.Create();
  Pessoa.LimparDados;
  prcPreencherTela('Limpar');
  edtnome.SetFocus;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
var vDiretorio : string;
begin
     Pessoa := TPessoa.Create();
     Pessoa.prcCarregarDados
      (
       cdsRegistroCodigo.AsInteger,
       cdsRegistroNome.AsString,
       cdsRegistroIdentidade.AsString,
       cdsRegistroCpf.AsString,
       cdsRegistroTelefone.AsString,
       cdsRegistroEmail.AsString,
       cdsRegistroCep.AsString,
       cdsRegistroLogradouro.AsString,
       cdsRegistroNumero.AsString,
       cdsRegistroComplemento.AsString,
       cdsRegistroBairro.AsString,
       cdsRegistroLocalidade.AsString,
       cdsRegistroUf.AsString,
       cdsRegistroPais.AsString
      );
   if fncTranmitirEmail(edtEmailDestino.Text, vDiretorio+'Arq'+cdsRegistroCep.AsString+'.xml')=true then
     ShowMessage('O Arquivo XML foi enviado com sucesso para o Email: '+edtEmailDestino.Text)
   else
     ShowMessage('O sistema não conseguiu enviar o email com o arquivo XML, verifique sua conexão com a internet!');
end;

function TForm1.fncPreencherDados:boolean;
begin
    if edtNome.Text = '' then
     begin
       ShowMessage('Informe o NOME da pessoa!');
       edtNome.SetFocus;
       result := false;
       Exit;
     end;

    if edtIdentidade.Text = '' then
     begin
       ShowMessage('Informe a IDENTIDADE da pessoa!');
       edtIdentidade.SetFocus;
       result := false;
       exit;
     end;

    if edtCpf.Text = '' then
     begin
       ShowMessage('Informe o CPF da pessoa!');
       edtCpf.SetFocus;
       result := false;
       exit;
     end;

    if edtCep.Text = '' then
     begin
       ShowMessage('Informe o CEP para consultar!');
       edtCep.SetFocus;
       result := false;
       Exit;
     end;

    if edtLogradouro.Text = '' then
     begin
       ShowMessage('Informe o LOGRADOURO do endereço!');
       edtLogradouro.setfocus;
       result := false;
       exit;
     end;

    if edtNumero.Text = '' then
     begin
       ShowMessage('Informe o NÚMERO caso não tenha coloque SN!');
       edtNumero.SetFocus;
       result := false;
       exit;
     end;

    if edtBairro.Text = '' then
     begin
       ShowMessage('Informe o BAIRRO do endereço!');
       edtBairro.SetFocus;
       result := false;
       exit;
     end;

    if edtLocalidade.Text = '' then
     begin
       ShowMessage('Informe a LOCALIDADE do endereço!');
       edtLocalidade.SetFocus;
       result := false;
       exit;
     end;

    if edtUF.Text = '' then
     begin
       ShowMessage('Informe a UF do endereço!');
       edtUF.SetFocus;
       result := false;
       exit;
     end;

    if edtPais.Text = '' then
     begin
       ShowMessage('Informe o PAIS do endereço!');
       edtPais.SetFocus;
       result := false;
       exit;
     end;


    try
      if UpperCase(lblCodigo.Caption) = 'NOVO REGISTRO' then
       Pessoa.Codigo := 0
      else
       Pessoa.Codigo := StrToInt(lblCodigo.Caption);

      Pessoa.Nome := edtNome.Text;
      Pessoa.Identidade := edtIdentidade.Text;
      Pessoa.CPF := edtCpf.Text;
      Pessoa.Telefone := edtTelefone.Text;
      Pessoa.Email := edtEmail.Text;
      Pessoa.Endereco.Cep := edtCep.Text;
      Pessoa.Endereco.Logradouro := edtLogradouro.Text;
      Pessoa.Endereco.Numero := edtNumero.Text;
      Pessoa.Endereco.Complemento := edtComplemento.Text;
      Pessoa.Endereco.Bairro := edtBairro.Text;
      Pessoa.Endereco.Localidade := edtLocalidade.Text;
      Pessoa.Endereco.UF := edtUF.Text;
      Pessoa.Endereco.Pais := edtPais.Text;
      result := true;
    except
      result := false;
    end;

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var vDiretorio:String;
    vStatusGravar : String;
begin

  vDiretorio := ExtractFilePath(Application.ExeName);
  vStatusGravar := '';
  // -- Carregando dados nas units (uPessoa e uEndereco) --

  var vStatusPreencher := fncPreencherDados;
  if vStatusPreencher = true then
     vStatusGravar := fncGravarDados
  else
   begin
     ShowMessage('Falha ao tentar preencher os dados!');
     Exit;
   end;

  if vStatusGravar = 'Inclusao' then
   begin
     var json := TJson.ObjectToJsonString(Pessoa);
     if fncGerarXML(vDiretorio) = true then
       ShowMessage('Registro foi salvo e o programa gerou o arquivo XML no diretório '+
                   vDiretorio+'!')
     else
      ShowMessage('Registro foi salvo mas o sistema não conseguiu gerar o arquivo XML!');

      Pessoa := TPessoa.Create();
      Pessoa.LimparDados;
      prcPreencherTela('Limpar');
      Exit;
   end;

  if vStatusGravar = 'Alteracao' then
   begin
     ShowMessage('Alteração feita com sucesso!');
     Exit;
   end;

  if vStatusGravar = 'Falha' then
   begin
     ShowMessage('Ocorreu um evento inesperado no sistema ao tentar gravar os dados!');
     Exit;
   end;

end;


procedure TForm1.Button1Click(Sender: TObject);
var
    JSonObj : TJSONObject;
    i : integer;
begin
    if edtCep.Text = '' then
     begin
       ShowMessage('Digite o CEP a ser consultado!');
       edtCep.SetFocus;
       Exit;
     end;

    var json := NetHTTPClient1.Get('https://viacep.com.br/ws/'+edtCep.Text+'/json/').ContentAsString; // 01001000 - Cep Site

     Pessoa := Tpessoa.Create();
     Pessoa.Endereco := TJson.JsonToObject<TEndereco>(json);

     // -- Carregando Dados na tela.
     prcPreencherTela('Endereco');
end;



procedure TForm1.edtCepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
   vk_return:
    Button1Click(sender);
  end;
end;

procedure TForm1.edtCepKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
   key := #0;
end;

procedure tForm1.JsonToDataset(aDataset : TDataSet; aJSON : string);
var
  JObj: TJSONObject;
  vConv : TCustomJSONDataSetAdapter;
begin
  if (aJSON = EmptyStr) then
  begin
    Exit;
  end;

  JObj := TJSONObject.ParseJSONValue(aJSON) as TJSONObject;
  vConv := TCustomJSONDataSetAdapter.Create(Nil);

  try
    vConv.Dataset := aDataset;
    vConv.UpdateDataSet(JObj);
  finally
    vConv.Free;
    JObj.Free;
  end;
end;

end.
