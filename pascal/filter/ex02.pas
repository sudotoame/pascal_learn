program SimpleSum;
var
  sum, count, num: longint;
begin
  sum := 0;
  count := 0;

  while not SeekEof do
    begin
      read(num);
      sum := sum + num;
      count := count + 1;
    end;
    writeln(count,' ', sum);
end.
