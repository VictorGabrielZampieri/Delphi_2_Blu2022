unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Vcl.StdCtrls,
  Xml.XMLDoc;

type
  TForm1 = class(TForm)
    XMLDocument1: TXMLDocument;
    mmLeitura: TMemo;
    btnExecutar: TButton;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnExecutarClick(Sender: TObject);
var
  xAtualizacao : IXMLNode;
  xExecutaveis : IXMLNode;
  xExecutavel : IXMLNode;
  xBibliotecas : IXMLNode;
  xBiblioteca : IXMLNode;
begin
  //Ativa o componente TXMLDocument
  XMLDocument1.Active := true;

  //cria o nó principal do xml
  xAtualizacao := XMLDocument1.AddChild('atualizacao');

  //Cria o nó dos executaveis dentro do nó principal
  xExecutaveis := xAtualizacao.AddChild('executaveis');

  //Adiciona um executavel ao nó de executaveis
  xExecutavel := xExecutaveis.AddChild('executavel');
  xExecutavel.SetAttributeNS('versao', '','1.0.3.22');
  xExecutavel.SetAttributeNS('descrisao', '','modulo gerencial');
  xExecutavel.Text := 'gerencial.exe';

  //Adiciona um executavel ao nó de executaveis
  xExecutavel := xExecutaveis.AddChild('executavel');
  xExecutavel.SetAttributeNS('versao', '','1.0.3.123');
  xExecutavel.SetAttributeNS('descrisao', '','Configuracoes da Aplicacao');
  xExecutavel.Text := 'configuracoes.exe';

  //Cria o nó de bibliotecas dentro do nó principal
  xBibliotecas := xAtualizacao.AddChild('bibliotecas');

  //Adiciona uma biblioteca ao nó de bibliotecas
  xBiblioteca := xBibliotecas.AddChild('biblioteca');
  xBiblioteca.SetAttributeNS('versao', '','2.0.0.1');
  xBiblioteca.SetAttributeNS('descrisao', '','Bibliotecas de funcoes');
  xBiblioteca.Text := 'funcoes.dll';


  //Adiciona uma biblioteca ao nó de bibliotecas
  xBiblioteca := xBibliotecas.AddChild('biblioteca');
  xBiblioteca.SetAttributeNS('versao', '','1.2.0.4');
  xBiblioteca.SetAttributeNS('descrisao', '','Bibliotecas com rotinas de negocios da aplicacao');
  xBiblioteca.Text := 'app.dll';

  //mostra o arquivo xml gerado
  mmLeitura.Lines.Text := XMLDocument1.XML.Text;
end;

end.
