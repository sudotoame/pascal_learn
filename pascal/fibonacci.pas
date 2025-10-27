program fibonacci;

function Fibonacci(n: integer): longint;
var
  i: integer;
  p, q, r: longint;
begin
  if n <= 0 then
    begin
      Fibonacci := 0;
      exit
    end;

  q := 0;
  r := 1;
  for i := 2 to n do
    begin
      p := q;
      q := r;
      r := p + q
    end;
  Fibonacci := r
end;

var
  n, res: integer;

begin
  n := 12;
  res := Fibonacci(n);
  writeln(res)
end.
