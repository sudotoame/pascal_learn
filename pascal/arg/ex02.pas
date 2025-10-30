program ex02;
var
  i, j, count: integer;
  s: string;
begin
  count := 0;
  if ParamCount = 1 then
    begin
      for i := 1 to ParamCount do
        begin
          s := ParamStr(i);
            for j := 1 to length(s) do
              begin
                if s[j] <> ' ' then
                  begin
                    count := count + 1;
                  end;
              end;
        end;
      writeln('Characters in arg: ', count);
    end
  else
    writeln('Error: Use <program> <arg>');
end.
