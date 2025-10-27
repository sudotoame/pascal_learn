program ex05;

procedure PrintChar(ch: char; count: integer);
var
  i: integer;
begin
  for i := 1 to count do
    write(ch);
end;

procedure PrintDiamond(ch, space: char; i, h: integer);
begin
    PrintChar(ch, h + 3 - i);
    if i > 1 then begin
      PrintChar(space, 2 * i - 3);
      write(ch);
    end;
    PrintChar(ch, h + 2 - i);
    writeln
end;

const
  ch: char = '*';
  space: char = ' ';
var
  i, k, j, n, h: integer;
begin
  repeat
    read(n);
  until (n > 0) and (n mod 2 <> 0);

  h := n div 2;

  for i := 1 to h + 2 do
    PrintDiamond(ch, space, i, h);
  for i := h + 1  downto 1 do
    PrintDiamond(ch, space, i, h);

end.
