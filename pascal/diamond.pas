program diamond;

function NegotiateSize: integer;
var
  h: integer;
begin
   repeat
    write('Enter positive and odd digit for diamond height: ');
    readln(h);
  until (h > 0) and (h mod 2 <> 0);
  NegotiateSize := h;
end;

procedure PrintSpace(count: integer);
var i: integer;
begin
  for i := 1 to count do
    write(' ')
end;

procedure PrintDiamond(i, h: integer);
begin
  PrintSpace(h + 1 - i);
  write('*');
  if i > 1 then begin
    PrintSpace(2 * i - 3);
    write('*');
  end;
  writeln;
end;

var
  i, k, n, h: integer;
begin
  h := NegotiateSize div 2;

  for i := 1 to h + 1 do
    PrintDiamond(i, h);
  for i := h downto 1 do
    PrintDiamond(i, h);
end.
