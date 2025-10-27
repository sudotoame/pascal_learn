program filterOk;
var
  ch: char;
  rows_count: integer;
begin
  rows_count := 0;
  
  while not eof do
    begin
      read(ch);
      if ch = #10 then
        begin
          writeln(rows_count);
          rows_count := 0;
        end
      else
        rows_count := rows_count + 1;
    end;
end.
