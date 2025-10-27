program recursia;
procedure PrintChar(ch: char; count: integer);
begin
  if count > 0 then
    begin
      writeln(ch);
      PrintChar(ch, count - 1)
    end
end;

var
  i, count: integer;
begin
  PrintChar('h', 10);
end.
