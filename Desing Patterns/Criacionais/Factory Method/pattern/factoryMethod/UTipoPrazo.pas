unit UTipoPrazo;

interface

type
  ITipoPrazo = interface
  ['{10A59F66-46E0-4213-A516-6FDDC2B92A23}']
  function ConsultarDescricao: String;
  function ConsultarJuros: String;
  function ConsultarProjecao(const aValor: Real; const aQtdParcelas: Integer): String;
  function ConsultarTotal: String;
  end;

  IFactoryMethod = interface
    ['{996E69D1-1940-4964-A5B4-938AFD7C1526}']
    function ConsultarPrazo(const aPrazo: String): ITipoPrazo;
  end;

implementation

end.
