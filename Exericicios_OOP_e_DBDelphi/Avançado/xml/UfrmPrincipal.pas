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
    btnLeitura: TButton;
    procedure btnLeituraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnLeituraClick(Sender: TObject);
var
  xAplicacao : IXMLNode;
  xExecutaveis : IXMLNode;
  xExecutavel : IXMLNode;
  xBibliotecas : IXMLNode;
  xBiblioteca : IXMLNode;
  xDescricao : IXMLNode;
  xInfNo : IXMLNodeList;
  i : Integer;
begin
  mmLeitura.Clear;

  //Ativa o XMLDocument para podemos ler as informacoes do xml
  XMLDocument1.Active := true;

  //Busco o nó principal do xml
  xAplicacao := XMLDocument1.DocumentElement;

  //Busco o nó onde está a lista de executáveis
  xExecutaveis := xAplicacao.ChildNodes.FindNode('executaveis');

  //Bus o nó onde está a lista de bibliotecas
  xBibliotecas := xAplicacao.ChildNodes.FindNode('bibliotecas');

  mmLeitura.Lines.Add('[EXECUTAVEIS]');
  mmLeitura.Lines.Add('');

  //Percorre todos os executaveis da lista
  for i := 0 to xExecutaveis.ChildNodes.Count-1 do
    begin
      xExecutavel := xExecutaveis.ChildNodes[i];
      //recupera os atributos do nó executavel
      xInfNo  := xExecutavel.AttributeNodes;

      mmLeitura.Lines.Add(xExecutavel.Text);
      mmLeitura.Lines.Add('-----------------------');
      mmLeitura.Lines.Add('versão: ' + xInfNo.FindNode('versao').Text);
      mmLeitura.Lines.Add('descrição: ' + xInfNo.FindNode('descricao').Text);
      mmLeitura.Lines.Add('');
    end;

    mmLeitura.Lines.Add('');
    mmLeitura.Lines.Add('[BIBLIOTECAS]');
    mmLeitura.Lines.Add('');

    //Percorre todas as blibliotecas
    for i := 0 to xBibliotecas.ChildNodes.Count-1 do
      begin
        xBiblioteca := xBibliotecas.ChildNodes[i];

        //recupera os atributos do nó biblioteca
        xInfNo  := xBiblioteca.AttributeNodes;

        mmLeitura.Lines.Add(xBiblioteca.Text);
        mmLeitura.Lines.Add('-----------------------');
        mmLeitura.Lines.Add('versão: ' + xInfNo.FindNode('versao').Text);
        mmLeitura.Lines.Add('descrição: ' + xInfNo.FindNode('descricao').Text);
        mmLeitura.Lines.Add('');
      end;
end;

end.
