program cube;

function Cube(x: real): real;
begin
  Cube := x * x * x
end;

var
  x: real;

begin
  x := 2.0;
  writeln(Cube(x));
end.
