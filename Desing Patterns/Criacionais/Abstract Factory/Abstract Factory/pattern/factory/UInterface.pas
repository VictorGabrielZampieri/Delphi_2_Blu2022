unit UInterface;

interface

type
  INotebook = interface
    ['{8FDEC04D-B3B4-4D77-ADA6-A9D38B00FC19}']
    function BuscarTamanhoTela: String;
    function BuscarMemoriaRam: String;
  end;

  IDesktop = interface
    ['{009BB86E-8345-44BE-8669-5E3406AB7E65}']
    function  BuscarNomeProcessador: String;
    function  BuscarTamanhoHD: String;
  end;

  IFactoryMarca = interface
    ['{D51FC881-AD37-494D-8D7F-FC9ED6938482}']
    function ConsultarNotebook: INoteBook;
    function ConsultarDesktop : IDesktop;
  end;

implementation

end.
