program ex02;
const
  MaxSchool = 67;
  MaxGroup = 100;
type
  CountersArray = array [1..MaxSchool] of integer;
var
  Counters: CountersArray;
  i, c, n: integer;
begin
  {Initialize Counters for all elements to 0}
  for i := 1 to MaxSchool do
    Counters[i] := 0;
  {$I-} {Отключает автоматическую проверку ошибок ввода-вывода}
  while not eof do
    begin
      readln(c);
      {Если у нас ошибка чтение файла}
      if IOResult <> 0 then {Возвращает код ошибки, 0 когда нету ошибок}
        begin
          writeln('Incorrect data');
          halt(1) {Возвращает управление ОС, с кодом ошибки 1}
        end;
      n := c div MaxGroup; {Чтение целого числа поделенный на 100, т.е из 3405 мы получаем 34}
      if (n < 1) or (n > MaxSchool) then {Номер школы должен быть от 1 до 67, иначе ошибка}
        begin
          writeln('Illegal shool id: ', n, ' [', c, ']');
          halt(1)
        end;
      {n содержит id школы и мы используем его как индекс массива и обращаемся с элементу с таким индексом}
      Counters[n] := Counters[n] + 1 {Обратившись в индексу школы в массиве мы инкреминтируем его}
    end; 
    n := 1; {Сначала ставим 1 индекс как с самым большим значением}
    for i := 2 to MaxSchool do
      if Counters[i] > Counters[n] then {через цикл смотрим, какие элементы содержат больше значений}
        n := i; {Обновляем если какой-то индекс имеет большее значения, полученную через инкрементацию}
    for i := 1 to MaxSchool do
      if Counters[i] = Counters[n] then
        writeln(i) {в n содержится индекс массива с самым большим значением, если какие-то элементы массива совпадают, то их следует напечатать}
end.
