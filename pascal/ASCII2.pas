program ASCII;
var
  c: char;
  i, j: integer;
begin
  write('  |');
  for i:= 0 to 9 do
    write(' .', i);
  for c := 'A' to 'F' do
    write(' .', c);
  writeln;
  for i := 0 to 16 do
    write('---');
  writeln;
  for i := 2 to 7 do
    begin
      write(i, '.|');
      for j := 0 to 15 do
        write('  ', chr(i*16+j));
    writeln
    end;
end.
