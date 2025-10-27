program symbols;
var
  is_print: array[0..255] of Boolean;
  arr: array of char;
  ch: string;
  is_repeat: boolean;
  i, j, index: integer;
begin
  readln(ch);
  for i := 1 to Length(ch) do
    begin
      SetLength(arr, i);
      arr[i] := ch[i];
      index := ord(arr[i]);
    for j := i + 1 to Length(ch) do
      begin
        if arr[i] = ch[j] then
          begin
            if (arr[i] = ' ') or (arr[i] = #9) then
              write
            else
              if is_print[index] then
                write
              else
                begin
                  write(arr[i]);
                  is_print[index] := true;
                end;
          end;
      end;
    end;
end.
