program test;
function StrToInt(s_length: integer; ch: char): integer;
var
  i: integer;
begin
  for i := 1 to s_length do
    begin
      if ch = chr(49) then
        StrToInt := StrToInt + 1;
      if ch = chr(50) then
        StrToInt := StrToInt + 2;
    end;
end;
const
  count = 2;
var
  i: integer;
  res: integer;
  ch: char;
begin
  for ch := '1' to '2' do
    begin
    res := StrToInt(count, ch);
    writeln(res);
  end;
end.
