unit UReceiver;

interface

type
  TReceiver = class
    public
      procedure ExtrairProcessos;
      procedure ExtrairProgramas;
      procedure ExtrairVariaveisAmbientes;
  end;

implementation

uses
  Dialogs, Messages, Windows, TlHelp32, PsAPI, SysUtils, Registry, Classes;

{ TReceiver }

procedure TReceiver.ExtrairProcessos;
var
  xHandle: THandle;
  xProcessEntry: TProcessEntry32;
  xListaProcessos: TStringList;
begin
  //metodo responsavel por extrair a lista de processos em execução
  xHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  xListaProcessos := TStringList.Create;
  try
      xProcessEntry.dwSize := SizeOf(TProcessEntry32);
      Process32Next(xHandle, xProcessEntry);

      //percorre os processos que estão em execuçaõ, adicionado-os na variavel ListaProcessos
      repeat
        xListaProcessos.Add(xProcessEntry.szExeFile);
      until not (Process32Next(xHandle, xProcessEntry));
      //Grava a lista de processos no arquivo "Processos.txt"
      xListaProcessos.SaveToFile(GetCurrentDir + '\Processos.txt');
  finally
    CloseHandle(xHandle);
    FreeAndNil(xListaProcessos);
  end;
end;

procedure TReceiver.ExtrairProgramas;
const
  CHAVE_REGISTRO = '\Software\Microsoft\Windows\CurrentVersion\Uninstall\';
var
  xResgistro: TRegistry;
  xContador: Integer;
  xListaChaves: TStringList;
  xListaProgramas: TStringList;
begin
  //Metodo responsavel por extrair a lista de programas instalados
  //obs: a aplicação deve ser executada como admin

  xResgistro := TRegistry.Create;
  xListaChaves := TStringList.Create;
  xListaProgramas := TStringList.Create;
  try
    //obtem a lista de chaves existentes no caminho do registro
    //que armaremos as informacoes de programas instalados
    xResgistro.RootKey := HKEY_LOCAL_MACHINE;
    xResgistro.OpenKey(CHAVE_REGISTRO, False);
    xResgistro.GetKeyNames(xListaChaves);
    xResgistro.CloseKey;
    //Percorre a lista de chaves para acessar o valor do atributo "DisplayName"
    for xContador := 0 to Pred(xListaChaves.Count) do
      begin
          xResgistro.RootKey := HKEY_LOCAL_MACHINE;
          xResgistro.OpenKey(CHAVE_REGISTRO + xListaChaves[xContador], false);

          if (xResgistro.ReadString('DisplayName') <> (EmptyStr)) then
            //Adiciona o nome do programa na variavel ListaProgramas
            xListaProgramas.Add(xResgistro.ReadString('DisplayName'));

          xResgistro.CloseKey;
      end;
      //Grava a lista de processos no arquivo "Programas.txt"
      xListaProgramas.SaveToFile(GetCurrentDir + '\Programas.txt');
  finally
    //Libera os objetos da memoria
    FreeAndNil(xListaProgramas);
    FreeAndNil(xListaChaves);
    FreeAndNil(xResgistro);
  end;
end;

procedure TReceiver.ExtrairVariaveisAmbientes;
var
  xVariavel: PChar;
  xListaVariaveis: TStringList;
begin
  //Metodo responsavel por extrair a lista das variaveis
  //de ambiente
  xListaVariaveis := TStringList.Create;
  try
    //Obtem a lista das variaveis de ambiente
    xVariavel := GetEnvironmentStrings;
    while xVariavel^ <> #0 do
    begin
      xListaVariaveis.Add(StrPas(xVariavel));
      xListaVariaveis.Add(EmptyStr);
      Inc(xVariavel, lstrlen(xVariavel) + 1);
    end;
    FreeEnvironmentStrings(xVariavel);

    //grava a listas de variantes no arquivo "Variaveis.txt"
    xListaVariaveis.SaveToFile(GetCurrentDir + '\Variaveis.txt');
  finally
    //Libera o obj da memoria
    FreeAndNil(xListaVariaveis);
  end;
end;

end.
