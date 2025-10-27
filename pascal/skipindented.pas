program SkipIndented;

var
  know, print: boolean;
  ch: char;
begin
  know := false;
  print := false;
  while not eof do
    begin
      read(ch);
      if ch = #10 then
        begin
          if know and print then {Выводим перевод строки только если строка уже началась}
            writeln;
          know := false {Отмечаем начало новой строки, изменяя флаг}
        end
      else
        begin
          if not know then
            begin
{if ch = ' ' and #9, print = false}
              print := (ch <> ' ') and (ch <> #9);
              know := true
            end;
{if ch not space and tab}
          if print then
            write(ch)
        end;
    end;
end.
