program HelloString;
const
  MyRange = 30;
type
  MyString = array [1..MyRange] of char;
var
  hello: MyString;
  i: integer;
begin
  hello := 'Hello, World!';
  for i := 1 to MyRange do
    begin
      if hello[i] = #0 then
        break;
      write(hello[i])
    end;
    writeln
end.
