program ex03;
var
  num, res_i: integer;
  ok: word;
  x, y, res: real;

function DigitsCheck(checking_var: integer): integer;
begin
  if checking_var = 48 then
    DigitsCheck := 0
  else if  checking_var = 49 then
    DigitsCheck := 1
  else if checking_var = 50 then
    DigitsCheck := 2
  else if checking_var = 51 then
    DigitsCheck := 3
  else if checking_var = 52 then
    DigitsCheck := 4
  else if checking_var = 53 then
    DigitsCheck := 5
  else if checking_var = 54 then
    DigitsCheck := 6
  else if checking_var = 55 then
    DigitsCheck := 7
  else if checking_var = 56 then
    DigitsCheck := 8
  else if checking_var = 57 then
    DigitsCheck := 9
end;

procedure StrToInt(s: string; var SaveVar: integer; ok: word); overload;
var
  i, digit_save, count: integer;
begin
  count := 0;
  ok := 0;
  for i := 1 to length(s) do
    begin
      count := count + 1;
      if s[i] in ['0'..'9'] then
        begin
          digit_save := DigitsCheck(ord(s[i]));
          SaveVar := SaveVar * 10 + digit_save;
        end
      else
        ok := count;
    end;
end;

procedure StrToInt(s: string; var SaveVar: real; ok: word); overload;
var
  i, count: integer;
  digit_save: real;
  is_dot: boolean = false;
begin
  count := 0;
  ok := 0;
  for i := 1 to length(s) do
    begin
      count := count + 1;
      if (s[i] in ['0'..'9']) and (not is_dot) then
        begin
          digit_save := DigitsCheck(ord(s[i]));
          SaveVar := SaveVar * 10 + digit_save;
        end
      else if s[i] = '.' then
        is_dot := true
      else if is_dot then
        begin
          digit_save := DigitsCheck(ord(s[i]));
          SaveVar := SaveVar + digit_save / 10;
        end
      else
        ok := count
    end;
end;

begin
  if ParamCount = 3 then
    begin
      ok := 0;
      StrToInt(ParamStr(3), num, ok);
      StrToInt(ParamStr(1), x, ok);
      StrToInt(ParamStr(2), y, ok);
      if ok = 0 then
        begin
          res := x * y;
          if frac(res) = 0 then
            writeln(trunc(res))
          else
            writeln(res:0:num)
        end;
    end
  else
    writeln('Use: prog <arg_1> <arg_2> <arg_2>')
end.
