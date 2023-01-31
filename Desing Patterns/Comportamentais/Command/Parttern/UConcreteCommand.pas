unit UConcreteCommand;

interface

uses
 UCommand, UReceiver;

 type
 {Concrete Command}
  TProcessos = class(TInterfacedObject, ICommand)
    private
     //Variavel para armazenar a referencia do receiver
     FReceiver: TReceiver;
    public
      constructor Create(aReceiver: TReceiver);

      //Assinatura da Interface -  metodo de execucao da operacao
      procedure Execute;
  end;

  {Concrter Command}
  TProgramas = class(TInterfacedObject, ICommand)
   private
     //Variavel para armazenar a referencia do receiver
     FReceiver: TReceiver;
    public
      constructor Create(aReceiver: TReceiver);
       //Assinatura da Interface -  metodo de execucao da operacao
      procedure Execute;
  end;

  {Concrter Command}
   TvariaveisAmbiente = class(TInterfacedObject, ICommand)
   private
     //Variavel para armazenar a referencia do receiver
     FReceiver: TReceiver;
    public
      constructor Create(aReceiver: TReceiver);
       //Assinatura da Interface -  metodo de execucao da operacao
      procedure Execute;
   end;

implementation

{ Programas }

constructor TProgramas.Create(aReceiver: TReceiver);
begin
  FReceiver := aReceiver;
end;

procedure TProgramas.Execute;
begin
  FReceiver.ExtrairProgramas;
end;

{ TvariaveisAmbiente }

constructor TvariaveisAmbiente.Create(aReceiver: TReceiver);
begin
  FReceiver := aReceiver;
end;

procedure TvariaveisAmbiente.Execute;
begin
  FReceiver.ExtrairVariaveisAmbientes;
end;

{ TProcessos }

constructor TProcessos.Create(aReceiver: TReceiver);
begin
  FReceiver := aReceiver;
end;

procedure TProcessos.Execute;
begin
  FReceiver.ExtrairProcessos;
end;

end.
