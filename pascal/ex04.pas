program ex04;

function NegotiateSize: integer;
var
  n: integer;
begin
  repeat
    write('Enter positive and odd digit: ');
    readln(n);
  until (n > 0) and (n mod 2 <> 0);
  NegotiateSize := n;
end;

procedure PrintSpace(count: integer; ch: char);
var i, k: integer;
begin
  for i := 1 to count + 1 do
    write(ch);
end;

procedure PrintChar(i, h: integer; ch, space: char);
var
  k: integer;
begin
  PrintSpace(h + 1 - i, space);
  write(ch);
  if i > 1 then begin
    for k := 1 to 2 * i - 2 do
      write(ch);
  end;
  writeln
end;

const
  ch: char = '*';
  space: char = ' ';
var
  i, n, h: integer;
begin
  h := NegotiateSize div 2;

  for i := 1 to h + 1 do
    PrintChar(i, h, ch, space);
  for i := h downto 1 do
    PrintChar(i, h, ch, space);
end.
