unit UProduto;

interface

uses
  GBSwagger.Model.Attributes;

type
  TProduto = class
    private
      FId : Integer;
      FDescrisao : String;
      FUnidade_Medida: String;
      FPreco_Venda: Currency;

    public

     [SwagProp('Produto Id', True)]
      property Id : Integer Read FId Write FId;

      [SwagProp('Produto Descrico', True)]
      property Descricao : String Read FDescrisao Write FDescrisao;

     [SwagProp('Undade de Medida ', True)]
      property Und_Medida : String Read FUnidade_medida Write FUnidade_Medida;

      [SwagProp('Preco Venda ', True)]
      property Prc_Venda : Currency Read FPreco_venda Write FPreco_Venda;
  end;

  TAPIError = class
    private
      FError: String;
      public
       property Error: String read FError write FError;
  end;
implementation

{ TProduto }



end.
