program JWT_API;

{$APPTYPE CONSOLE}

uses
  Horse,
  JOSE.Core.Builder,
  JOSE.Core.JWT,
  System.SysUtils;

begin

  THorse.Get('/login',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xToken: TJWT;
      xCompactToken: String;
    begin
      xToken := TJWT.Create;
      try
      //Token
      xToken.Claims.Issuer     := 'Devs2Blu';
      xToken.Claims.Subject    := '123456';
      xToken.Claims.Expiration := Now + 1;

      //Outros Claims
      xToken.Claims.SetClaimOfType<String>('nome', 'Victor G Zampieri');

      //Signing and Compact format Creation
      xCompactToken := TJOSE.SHA256CompactToken('key', xToken);

      Res.Send(xCompactToken);
      finally
        xToken.Free;
      end;
    end);

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.