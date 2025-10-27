program r1;

procedure PrintDigitsOfNumberNotRecursia(n: integer);
var
  i: integer;
begin
  while n > 0 do
    begin
      write(n mod 10, ' ');
      n := n div 10
    end
end;

procedure PrintDigitsOfNumber(n: integer);
begin
if n > 0 then
  begin
    PrintDigitsOfNumber(n div 10);
    write(n mod 10, ' ');
  end;
end;

var
  n: integer = 23456;

begin
  PrintDigitsOfNumber(n);
  writeln;
  PrintDigitsOfNumberNotRecursia(n);
end.
