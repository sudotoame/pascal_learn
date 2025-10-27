program demoarg;
var
  i: integer;
begin
  writeln('Program name: ', ParamStr(0));
  for i := 1 to ParamCount do
    write('arg num: ', '[', i, ']', ' have = ', ParamStr(i), #10);
end.
