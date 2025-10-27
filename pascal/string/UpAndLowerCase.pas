program UpAndLowerCase;
var
  s1, s2, s3, s4: string;

function MyLowerCase(s: string): string;
var
  i: integer;
begin
  for i := 1 to ord(s[0]) do
    begin
      if (s[i] >= 'A') and (s[i] <= 'Z') then
        s[i] := chr(ord(s[i]) + 32);
    end;
  MyLowerCase := s;
end;

function MyUpperCase(s: string): string;
var
  i: integer;
begin
  for i := 1 to length(s) do
    begin
      if (s[i] >= 'a') and (s[i] <= 'z') then
        s[i] := chr(ord(s[i]) - 32);
    end;
  MyUpperCase := s;
end;

begin
  write('type for LowerCase: ');
  readln(s1);
  writeln;
  write('type for UpperCase: ');
  readln(s3);
  s2 := MyLowerCase(s3);
  s4 := MyUpperCase(s1);
  writeln('MyLowerCase = ', s2);
  writeln('MyUpperCase = ', s4);
end.
