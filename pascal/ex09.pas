program ex09;
var
  i, j : integer;
  c: char;
begin
  write('  |');
  for i := 0 to 9 do
    write('  .', i);
  for c := 'A' to 'B' do
    write('  .', c);
  writeln;

  write('  |');

  for i := 1 to 16 do
  begin
    write('---');
  end;
  writeln;

  for i := 0 to 7 do 
    begin
      write(i, '.|');
      for j := 0 to 11 do
      begin
          write('   ', chr(j * 8 + i + 33));
      end;
      writeln;
    end;
end.
