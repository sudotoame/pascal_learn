program ex01;

const
  ch1 = '@';
  ch2 = '.';

var
  i, ArgumentLength, ReapetLength: integer;
  LongestString, RepeatString: string;
  PrintIsCommon ,PrintNoReapeat, PrintHaveAt, PrintLatSymbols, PrintHaveDot, PrintWithRepeatSymbols, PrintOnlyDigits: string;
  repeated, haveat, havedot, alldigits, iscommon, withrepeatsymbols, havelatsymb : boolean;

procedure OnlyDigitArg(s: string; var alldigits: boolean);
var
  i: integer;
begin
  for i := 1 to length(s) do
    begin
      if not (s[i] in ['0'..'9']) then
        begin
          alldigits := false;
          break
        end
      else
        alldigits := true
    end;
end;

procedure WithRepeatSym(s: string; var withrepeatsymbols: boolean);
const
  one = 1;
var 
  i, j: integer;
begin
  for i := 1 to length(s) do
    begin
      for j := i + 1 to length(s) do
        if s[i] = s[j] then
          withrepeatsymbols := true
        else
          withrepeatsymbols := false;
        if length(s) = 1 then
          withrepeatsymbols := true
    end;
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

procedure HaveLatinSymbols(s: string; var havelatsymb: boolean);
var
  i: integer;
begin
  for i := 1 to length(s) do
  begin
    if (s[i] in ['A'..'Z']) or (s[i] in ['a'..'z']) then
      havelatsymb := true
  end;
end;

procedure CommonCh(s: string; var iscommon: boolean);
var
  i, index: integer;
begin
  index := 1;
  for i := 2 to length(s) do
    begin
      if s[index] = s[i] then
        iscommon := true
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
  PrintOnlyDigits := '';
  PrintWithRepeatSymbols := '';
  PrintLatSymbols := '';
  PrintIsCommon := '';

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
      withrepeatsymbols := false;
      havelatsymb := false;
      iscommon := false;

      HaveSymb(ReapetLength, RepeatString, ch1, haveat);
      HaveSymb(ReapetLength, RepeatString, ch2, havedot);
      ReapetArg(ReapetLength, RepeatString, repeated);
      OnlyDigitArg(RepeatString, alldigits);
      WithRepeatSym(RepeatString, withrepeatsymbols);
      HaveLatinSymbols(RepeatString, havelatsymb);
      CommonCh(RepeatString, iscommon);

      if iscommon then
        PrintIsCommon := PrintIsCommon + ' ' + ParamStr(i);
      if havelatsymb then
        PrintLatSymbols := PrintLatSymbols + ' ' + ParamStr(i);
      if withrepeatsymbols then
        PrintWithRepeatSymbols := PrintWithRepeatSymbols + ' ' + ParamStr(i);
      if alldigits then
        PrintOnlyDigits := PrintOnlyDigits + ' ' + ParamStr(i);
      if not repeated then
        PrintNoReapeat := PrintNoReapeat + ' ' + ParamStr(i);
      if haveat then
        PrintHaveAt := PrintHaveAt + ' ' + ParamStr(i);
      if havedot then
        PrintHaveDot := PrintHaveDot + ' ' + ParamStr(i);
    end;

  if ParamCount >= 1 then
    begin
      writeln('Arg with common character with first character: ', PrintIsCommon);
      writeln('Arg with lat symbols: ', PrintLatSymbols);
      writeln('Arg with only digits: ', PrintOnlyDigits);
      writeln('Arg with only repeat symbols: ', PrintWithRepeatSymbols);
      writeln('Arg with one ".": ',PrintHaveDot);
      writeln('Arg with one "@": ', PrintHaveAt);
      writeln('Arg with no repeat symbols: ', PrintNoReapeat);
      writeln('Longest Arguments: ', LongestString, ' | Number of characters: ', ArgumentLength);
    end;
end.
