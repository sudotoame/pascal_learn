program mul;
procedure ReadLongint(var result: longint; var success: boolean);
var
  c: char;
  poss: integer;
  res: longint;
begin
  res := 0;
  poss := 0;
  repeat
    read(c);
    poss := poss + 1;
  until (c <> ' ') and (c <> #10); {exclude control characters space and \n}

  while (c <> ' ') and (c <> #10) do {The loop runs while the variable is not control characters}
    begin
      if (c < '0') or (c > '9') then {if variable is not digit}
        begin
          writeln('Unexpected ''', c, '''', ' in pos: ', poss);
          readln;
          success := false;
          exit; {program is exit if variagle is not digit wtih 'success := false'}
        end;
        res := res*10 + ord(c) - ord('0'); {if variable is digit}
        read(c);
        poss := poss + 1 {digits positions}
    end;
    result := res;
    success := true;
end;

var
  x, y: longint;
  ok: boolean;
begin
  repeat
    write('Please type the first number: ');
    ReadLongint(x, ok);
  until ok;
  repeat
    write('Please type the second number: ');
    ReadLongint(y, ok)
  until ok;
  writeln(x, ' times ', y, ' is ', x * y)
end.
