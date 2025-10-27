program isletter;

function IsLetter(ch: char): boolean;
begin
  IsLetter := 
  ((ch >= 'A') and (ch <= 'Z')) or
  ((ch >= 'a') and (ch <= 'z'))
end;

var
  ch: char;

begin
  read(ch);
  if IsLetter(ch) then
    writeln(ch,' is letter')
  else
    writeln(ch, ' is not letter')
end.
