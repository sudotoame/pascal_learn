program mul2;

procedure ReadLongint(var result: longint; var success: boolean);
var
  ch: char;
  position, res: integer;
begin
  position := 0;
  res := 0;
  repeat
    read(ch);
    position := position + 1;
  until (ch <> ' ') and (ch <> #10);

  while (ch <> ' ') and (ch <> #10) do
    begin
      if (ch < '0') or (ch > '9') then
        begin
          writeln('Unexpected ''', ch,''' in pos: ', position);
          readln;
          success := false;
          exit;
        end;
        res := res * 10 + ord(ch) - ord('0');
        read(ch);
        position := position + 1;
    end;
    result := res;
    success := true;
end;

var
  x, y: longint;
  ok: boolean;
begin
  repeat
    ReadLongint(x, ok)
  until ok;
  repeat
    ReadLongint(y, ok)
  until ok;
  writeln('x * y = ', x * y);
end.
