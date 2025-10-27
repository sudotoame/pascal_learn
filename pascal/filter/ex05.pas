program ex05;
var
  string_ch : string;
  ch: char;
  count: integer;
begin
  read(ch);
  string_ch := '';
  count := 0;
  while not eof do
    begin
      if (ch <> ' ') and (ch <> #9) and (ch <> #10) then
        begin
          count := count + 1;
          string_ch := string_ch + ch;
        end
      else
        begin
          if count = 2 then
            write(string_ch);
          count := 0;
          string_ch := ' ';
        end;
      read(ch);
    end;
end.
