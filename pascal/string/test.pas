program test;
var
  i: integer;
begin
  for i := 1 to ParamCount do
    begin
      writeln(ParamStr(i));
    end;
end.
