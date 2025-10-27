progam ex01;

const
  ch1 = '@';
  ch2 = '.';

var
  i, ArgumentLength, ReapetLength: integer;
  LongestString, RepeatString: string;
  PrintNoReapeat, PrintHaveAt, PrintHaveDot: string;
  repeated, haveat, havedot, alldigits: boolean;

procedure DigitArg(StrLength: integer; var s: string ;var alldigits: boolean);
var
  j, k: integer;
begin
  for j := 1 to StrLength do
    begin
      if s[j] = chr(ord('1')) then
        alldigits = true
    end;
    { TODO: make StrToInt, IntToStr}
end;

procedure ReapetArg(ReapetLength: integer; var RepeatString: string; var repeated: boolean);
var
  j, k: integer;
begin
  j := 0;
  k := 0;
  for j := 1 to ReapetLength do
    begin
      for k := j + 1 to ReapetLength do
        begin
          if RepeatString[j] = RepeatString[k] then
            begin
              repeated := true;
              break;
            end;
        end;
      if repeated then
        break;
    end;
end;

procedure HaveSymb(StrLength: integer; var s: string; ch: char; var haveat: boolean);
var
  j,count: integer;
begin
  count := 0;
  j := 0;
  for j := 1 to StrLength do
    begin
      if s[j] = ch then
        count := count + 1;
    end;
  if count = 1 then
    haveat := true
  else
    haveat := false;
end;

procedure LongestArg(var s: string; var ArgumentLength: integer; i: integer);
begin
  if length(ParamStr(i)) > length(s) then
    begin
      s := ParamStr(i);
      ArgumentLength := length(s);
    end;
end;

begin
  i := 0;
  LongestString := '';
  ArgumentLength := 0;
  ReapetLength := 0;
  PrintHaveDot := '';
  PrintNoReapeat := '';
  PrintHaveAt := '';

  for i := 1 to ParamCount do
    begin
      {longest arguments}
      LongestArg(LongestString, ArgumentLength, i);
      
      {init vars for procedure}
      RepeatString := ParamStr(i);
      ReapetLength := length(RepeatString);
      repeated := false;
      havedot := false;
      haveat := false;
      alldigits := false;

      HaveSymb(ReapetLength, RepeatString, ch1, haveat);
      HaveSymb(ReapetLength, RepeatString, ch2, havedot);
      ReapetArg(ReapetLength, RepeatString, repeated);
      DigitArg(ReapetLength, RepeatString, alldigits);

      if not repeated then
        PrintNoReapeat := PrintNoReapeat + ' ' + ParamStr(i);
      if haveat then
        PrintHaveAt := PrintHaveAt + ' ' + ParamStr(i);
      if havedot then
        PrintHaveDot := PrintHaveDot + ' ' + ParamStr(i);
      if alldigits then
        writeln('all digit args: ', ParamStr(i));
    end;

  writeln('Arg with one ".": ',PrintHaveDot);
  writeln('Arg with one "@": ', PrintHaveAt);
  writeln('Arg with no repeat symbols: ', PrintNoReapeat);
  writeln('Longest Arguments: ', LongestString, ' | Number of characters: ', ArgumentLength);
end.
