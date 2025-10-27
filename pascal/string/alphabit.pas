program a_z;
var
  s: string;
  c: char;
begin
  s := '';
  for c := 'A' to 'Z' do
    s := s + c; {Конкатенация символов из чара в стринг}
  writeln(s);
end.
