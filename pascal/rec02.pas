program rec02;

function DoReverseNumber(n, m: longint): longint;
begin
  if n = 0 then
    DoReverseNumber := m
  else
    DoReverseNumber :=
      DoReverseNumber(n div 10, m * 10 + n mod 10)
end;

function ReverseNumber(n: longint): longint;
begin
  ReverseNumber := DoReverseNumber(n, 0)
end;

var
  n: longint = 19123123;
begin
  write(ReverseNumber(n));
end.
