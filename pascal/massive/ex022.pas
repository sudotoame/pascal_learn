program ex022;
const
  MaxSchool = 67;
  MaxGroup = 100; {Максимально допустимое количество учеников}
type
  CountsArray = array [1..MaxSchool] of integer; {Массив с максимальным количеством школ}
var
  Counts: CountsArray;
  i, c, n: integer;
begin
  for i := 1 to MaxSchool do {Инициализация элементов массива на 0 по индексу}
    Counts[i] := 0;
  {$I-}
  while not eof do
    begin
      readln(c);
      if IOResult <> 0 then
        begin
          writeln('Incorrect data ');
          halt(1)
        end;
      n := c div MaxGroup;
      if (n < 1) or (n > MaxSchool) then
        begin
          writeln('Error: illegal school id: ', n, ' [', c, ']');
          halt(1)
        end;
      Counts[n] := Counts[n] + 1;
    end;
  n := 1;
  for i := 2 to MaxSchool do
    if Counts[i] > Counts[n] then
      n := i;
  for i := 1 to MaxSchool do
    if Counts[i] = Counts[n] then
      writeln(i)
end.
