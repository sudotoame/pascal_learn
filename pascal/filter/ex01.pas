program ex01;

procedure ReadLongint(var result: longint; var success: boolean; base: integer);
var
  ch: char;
  position, res, digit: integer;
  
begin
  position := 0;
  res := 0;

  repeat
    read(ch);
    position := position + 1;
  until (ch <> ' ') and (ch <> #10);

  while (ch <> ' ') and (ch <> #10) do
    begin
      if ((ch >= 'A') and (ch <= 'Z')) or ((ch >= 'a') and (ch <= 'z')) then
        begin
          digit := ord(UpCase(ch)) - 65 + 10; {if just type -75 we get negative digits}
          if digit >= base then
            begin
              writeln('Unexpected ''', ch,''' in pos: ', position);
              readln;
              success := false;
              exit;
            end;
          res := res * base + digit;
          read(ch);
          position := position + 1;
        end
      else if (ch >= '0') and (ch <= chr(ord('0') + base - 1)) then
        begin
          res := res * base + ord(ch) - ord('0');
          read(ch);
          position := position + 1;
        end
      else
        begin
          writeln('Unexpected ''', ch,''' in pos: ', position);
          readln;
          success := false;
          exit;
        end;
    end;

    result := res;
    success := true;
end;

procedure EnterNumbers(var number: longint; var ok: boolean; base: integer);
begin
   repeat
    writeln('Enter digit for this system number: ');
    ReadLongint(number, ok, base);
  until ok;
end;

var
  x, y, base: longint;
  ok: boolean;
begin
  repeat
    writeln('Enter the number system (2-36): ');
    read(base);
  until (base >= 2) and (base <= 36);

  EnterNumbers(x, ok, base);
  EnterNumbers(y, ok, base);

  writeln( x , '*', y, ' = ', x * y);
end.
