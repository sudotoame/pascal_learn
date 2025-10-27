program ex2;
var
  i: integer;
begin
  i := 12;
  repeat
    writeln('hello', i);
    i := i + 1
  until i < 0;
end.
