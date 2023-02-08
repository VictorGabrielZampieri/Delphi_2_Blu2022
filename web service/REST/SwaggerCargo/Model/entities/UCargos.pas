unit UCargos;

interface

uses
  GBSwagger.Model.Attributes;

type
  TCargo = class
    private
      FID: Integer;
      FDescricao: String;
      FID_Pessoa: Integer;
    public
      [SwagProp('Cargo Id', True)]
      property Id: Integer read FID Write FID;

      [SwagProp('Cargo Descricao', True)]
      property Descricao: String read FDescricao Write FDescricao;

       [SwagProp('Pessoa Id', True)]
      property Id_Pessoa: Integer read FID_Pessoa Write FID_Pessoa;
  end;

  TAPIError = class
    private
      FError: String;
      public
       property Error: String read FError write FError;
  end;

implementation

end.
