unit USubject;

interface

Uses
  UObserver;

type
  ISubject = interface
    //Metodo para adicionar a lista
    procedure AdicionarObserver(aObserver: IObserver);

    // Metodo para remover Observers da lista
    Procedure RemoverObserver(aObserver: IObserver);

    //Metodo reponsavel por notificar os observers
    //registrados
    procedure Notificar;
  end;

implementation

end.
