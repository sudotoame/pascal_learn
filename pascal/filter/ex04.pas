program ex04;
procedure PrintBracket(ch, bracket: char);
begin
  if ch = #10 then
    write(bracket);
end;
const
  bracket_l: char = '(';
  bracket_r: char = ')';
var
  count : integer;
  ch, last_ch: char;
begin
  write(bracket_l);
  read(ch);
  while not eof do
    begin
      if (ch <> ' ')  then
        begin
          PrintBracket(ch, bracket_r);
          write(ch);
          PrintBracket(ch, bracket_l);
        end
      else
        write(bracket_r, ' ', bracket_l);
      read(ch);
    end;
    write(bracket_r);
end.
