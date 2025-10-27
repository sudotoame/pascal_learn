program ex01;
var
  s1: string[15];
  s2: string;
begin
  s1 := 'abrakadabra';
  s2 := s1 + ' ' + 'the doors are opening';

  writeln('Длинна переменной "length" = ', length(s1));
  writeln('Длинна переменной "ord" = ', ord(s1[0]));
  writeln('Первый символ = ', '[', s1[1], ']');
  writeln('Пятый символ = ', '[', s1[5], ']');
  writeln('s1 = ', s1);
  writeln('s1 + " " + s2 = ', s2);
end.
