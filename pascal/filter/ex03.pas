program ex03;

procedure BrackerCheck(ch, last_ch: char; var br_count_l, br_count_r, br_count: integer);
begin
  if ch = '(' then
    br_count_l := br_count_l + 1
  else if ch = ')' then
    br_count_r := br_count_r + 1;
  if (ch = ')') and (last_ch = '(') then
    br_count := br_count + 1;
end;

procedure ShortLongWord(var s_count, short_word, long_word: integer);
begin
  if s_count < short_word then
    short_word := s_count;
  if s_count > long_word then
    long_word := s_count;
end;

procedure zCheck(var last_ch: char; var z_count: integer);
begin
  if last_ch = 'z' then
    z_count := z_count + 1;
end;

procedure TwoSevenCheck(var s_count, sevenword_count, twow_count: integer);
begin
  if s_count = 7 then
    sevenword_count := sevenword_count + 1
  else if s_count = 2 then
    twow_count := twow_count + 1;
end;

procedure ACheck(ch: char; var s_count, a_count: integer);
begin
  if (ch = 'A') and (s_count = 0) then
    a_count := a_count + 1;
end;

var
  ch, last_ch: char;
  z_count, a_count, s_count, w_count, even_count, odd_count, sevenword_count, twow_count: integer;
  br_count, br_count_l, br_count_r, long_word_stroke, stroke_num_word ,num_word, long_word, short_word, stroke_num: integer;
  is_bracket: boolean;
begin
  br_count := 0;
  br_count_l := 0;
  br_count_r := 0;
  long_word_stroke := 0;
  stroke_num := 1;
  stroke_num_word := 0;
  num_word := 0;
  long_word := 0;
  short_word := 32767;
  w_count := 0;
  s_count := 0;
  even_count := 0;
  odd_count := 0;
  sevenword_count := 0;
  twow_count := 0;
  a_count := 0;
  z_count := 0;
  last_ch := ' ';
  
  while not eof do
    begin
      read(ch);
      if (ch = ' ') or (ch = #9) or (ch = #10) then
      begin
        if ch = #10 then
          begin
            if (stroke_num_word > 0) then
              writeln('In stroke ', stroke_num,' | ', stroke_num_word, ' words ', 'and long word in this stoke have: ', long_word_stroke, ' symbols');
            stroke_num_word := 0;
            long_word_stroke := 0;
            stroke_num := stroke_num + 1;
          end;
        ShortLongWord(s_count, short_word, long_word);
        zCheck(last_ch, z_count);
        TwoSevenCheck(s_count, sevenword_count, twow_count);
        if (s_count > 0) and (s_count mod 2 = 0) then
          begin
            even_count := even_count + 1;
            num_word := num_word + 1;
            stroke_num_word := stroke_num_word + 1;
            s_count := 0;
          end
        else
          begin
            odd_count := odd_count + 1;
            num_word := num_word + 1;
            stroke_num_word := stroke_num_word + 1;
            s_count := 0;
          end;
      end
      else
      begin
        ACheck(ch ,s_count, a_count);

        BrackerCheck(ch, last_ch, br_count_l, br_count_r, br_count);

        last_ch := ch;
        w_count := w_count + 1;
        s_count := s_count + 1;

        if (s_count > long_word_stroke) and (ch <> #10) then
          long_word_stroke := s_count;
      end;
    end;

  if br_count_l = br_count_r then
    is_bracket := true
  else
    is_bracket := false;

  writeln('symbols num = ', w_count);
  writeln('even word: ', even_count, ' | odd word: ', odd_count);
  writeln('word with 7 symbols: ', sevenword_count, ' | word with 2 symbols: ', twow_count);
  writeln('Word starting with ''A'': ', a_count);
  writeln('Word ending with ''z'': ', z_count);
  writeln('Number of the word: ', num_word);
  writeln('Long word: ', long_word);
  writeln('short word: ', short_word);
  if is_bracket then
    writeln('Yes')
  else
    writeln('No');
  writeln('Bracket num: ', br_count);
end.
