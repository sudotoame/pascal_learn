program asdasd;
var
  base: integer;
  ch, eq: char;
begin
  ch := '2';
  read(base);
  if ch = chr(ord('0') + base) then
    write('ch = base')
  else
    write('Not equal')
end.
