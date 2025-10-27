program delete;

procedure MyDelete(var s: string; index, count: integer);
var
  i: integer;
begin
  if (index > length(s)) and (index < length(s)) then
    writeln('index less or more than string');
    exit;
  if (count > length(s)) and (count < length(s)) then
    writeln('index less or more than string');
    exit;
  for i := 1 to count do
    begin
      s[index] := ;
      index := index + 1;
    end;
end;

var
  i: integer;
  s1: string;
begin
  s1 := '';

end.
