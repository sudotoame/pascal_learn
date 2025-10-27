program ex062;
procedure PrintChar(ch: char; height: integer);
var
  i: integer;
begin
  for i := 1 to height do
    write(ch)
end;

procedure PrintDiamond(ch, space: char; rows, height: integer);
begin
  PrintChar(space, height + 1 - rows);
  write(ch);

  if rows > 1 then
    begin
      PrintChar(space, 2 * rows - 3);
      write(ch)
    end;
end;

const
  space: char = ' ';
  ch: char = '*';
var
  rows, cols, height, num, diamonds_num: integer;
begin
  repeat
    write('Enter height(positive and odd): ');
    read(num);
  until (num > 0) and (num mod 2 <> 0);
  repeat
    write('Enter diamond num: ');
    read(diamonds_num)
  until (diamonds_num >= 2);

  height := num div 2;

  for rows := 1 to height + 1 do
    begin
      PrintDiamond(ch, space, rows, height);
      if diamonds_num >= 2 then
        begin
          for cols := 1 to diamonds_num - 1 do
            begin
              PrintChar(space, height * 2 - rows);
              PrintDiamond(ch, space, rows, height);
            end;
        end;
        writeln
    end;

  for rows := height downto 1 do 
    begin
      PrintDiamond(ch, space,rows, height);
      if diamonds_num >= 2 then
        begin
          for cols := 1 to diamonds_num - 1 do 
            begin
              PrintChar(space, height * 2 - rows);
              PrintDiamond(ch, space, rows, height);
            end;
        end;
      writeln
    end;

end.
