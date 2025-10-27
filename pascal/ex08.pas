program ex08;
var
  ch: char;
  print, know: boolean;
  count: integer;
begin
  print := false;
  know := false;
  count := 0;
  while not eof do
    begin
      read(ch);
      count := count + 1;
      if ch = #10 then
        begin
          if print and know then
            begin
              write(' | symbols in rows: ', count - 1);
              writeln;
            end;
          know := false;
          count := 0;
        end
      else
        begin
          if not know then
            begin
              print := (ch <> ' ') and (ch <> #9);
              know := true;
            end;
          if print then
            begin
              write(ch);
            end;
        end;
    end;
end.
