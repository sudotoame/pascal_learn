program isdigit;

function IsDigit(num: integer): boolean;
begin
  IsDigit := 
    (num >= 0) and (num <= 9)
end;

var
  num: integer;
begin
  read(num);
  if IsDigit(num) then
    writeln(num, ' is digit')
  else
    writeln('it"s not digit')
end.
