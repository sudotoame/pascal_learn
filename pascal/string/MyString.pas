program MyString;
var
  s1: string;

procedure StrToInt();
begin
  {ParamStr() возвращает строковый тип, чтобы его перевести в числовой тип, надо по символьно перевести в число с помощью ord}
end;

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

function MyLen(s: string): byte;
begin
  MyLen := 0;
  if s <> '' then
    MyLen := ord(s[0]);
end;

procedure CheckCopyParams(s: string; param: integer; var ok: boolean);
begin
  if (param > MyLen(s)) and (param < MyLen(s)) then
    begin
      writeln('param in copy function less or more than string elements');
      ok := false;
    end;
end;

function MyCopy(s: string; index, count: integer): string;
var
  i: integer;
  exit_flag: boolean = true;
begin
  MyCopy := '';
  while exit_flag do
    begin
      CheckCopyParams(s, index, exit_flag);
      CheckCopyParams(s, count, exit_flag);
      for i := 1 to count do
        begin
          MyCopy := MyCopy + s[index];
          index := index + 1;
          if i = count then
            exit_flag := false;
        end;
    end;
end;

function MyDelete(var s: string; start, count: integer): string;
begin
  MyDelete := MyCopy(s, 1, start - 1) + MyCopy(s, start + count, MyLen(s) - (start + count - 1));
end;

function MyInsert(s_insert, s: string; start: integer): string;
begin
  MyInsert := MyCopy(s, 1, start - 1) + s_insert + MyCopy(s, start, MyLen(s) - MyLen(s_insert));
end;

begin
  s1 := 'abrakadabra';
  writeln(s1);
  writeln(MyInsert('DFA', s1, 4));
  writeln(MyDelete(s1, 3, 4))
end.
