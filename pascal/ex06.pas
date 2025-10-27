program ex06;
procedure PrintChar(ch: char; count: integer);
var
  i: integer;
begin
  for i := 1 to count do
    write(ch)
end;

procedure PrintMultiDiamond(ch, space: char; i, h,diamonds: integer);
var
  k, l: integer;
begin
  for k := h downto 1 do
    begin
    PrintChar(space, 2 * k - i);
  end;
    write('*');
    if i > 1 then
    begin
      PrintChar(space, (2 * i - 2) + diamonds);
      write('4');
  end;
end;

procedure PrindDiamond(ch, space: char; i, h, diamonds: integer);
var
  k: integer;
begin
  PrintChar(space, h + 1 - i);
  write(ch);
  if i > 1 then
    begin
      PrintChar(space, 2 * i - 3);
      write(ch);
    end;
    if diamonds >= 2 then
      for k := 1 to diamonds - 1 do
       PrintMultiDiamond(ch, space, i,h,diamonds);
    writeln;
end;


const
  space: char = ' ';
  ch: char = '*';
var
  i, diamonds, n, h: integer;
begin
  repeat
    write('Write diamond height, "Positive and odd digit": ');
    read(n);
  until (n > 0) and (n mod 2 <> 0);
  repeat
    write('Enter diamond count: ');
    read(diamonds);
  until (diamonds >= 0);

  h := n div 2;
  i := 1;

  for i := 1 to h + 1 do 
    PrindDiamond(ch, space, i , h, diamonds);
  for i := h downto 1 do
    PrindDiamond(ch, space, i , h, diamonds);
end.
