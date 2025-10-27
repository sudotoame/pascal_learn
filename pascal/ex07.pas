program ex07;

procedure ReadVar(ch: string; var res: integer);
var
  num: integer;
begin
  repeat
    write(ch);
    readln(num);
  until (num > 0);
  res := num;
end;

procedure PrintChar(ch: char; count: integer);
var
  i: integer;
begin
  for i := 1 to count do
    write(ch)
end;

procedure PrintZed(cols, rows, height, num, zed_nums: integer);
var
  i: integer;
begin
      for rows := 1 to height - cols do
        begin
          if cols = num + 1 then
            write('*')
          else if cols > 1 then
            write(' ')
          else
            write('*')
        end;

        if cols = num + 1 then
            PrintChar('*', height div 2)
        else if cols = height then
            PrintChar('*', height - 1);
      write('*');
end;

const
  ch: string = 'Enter height: ';
  zch: string = 'Enter zed nums: ';
var
  cols, rows, num, zed_nums, height, res: integer;
begin
  rows := 0;
  height := 0;
  zed_nums := 0;

  ReadVar(ch, height);
  ReadVar(zch, zed_nums);

  num := height div 2;

  for cols := 1 to height do
    begin
      PrintZed(cols, rows, height, num, zed_nums);
      writeln
    end;
  for cols := 1 to height * 2 do
    begin
      for rows := 1 to height * 2 do
        begin
          if cols = ((height * 2) div 2) then
            write('H')
        end;
    end;
end.
