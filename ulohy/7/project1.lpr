program project1;
uses
  SysUtils;
var
  randoms:Array[1..9] of Integer;
  i:integer;
  win:boolean;
  guess:string;
begin
  randomize;
  writeln('I thought up 10 numbers from interval <1,20>.');
  write('Try to guess one of them: ');
  readln(guess);
  for i:=0 to Length(randoms) do
  begin
    randoms[i]:=Random(20)+1;
    if randoms[i] = StrToInt(guess) then win:=true;
  end;
  if win then writeln('Your guess is correct.') else writeln('Your guess is incorrect.');
  Writeln('These are my numbers:');
  for i:=0 to Length(randoms) do Write(IntToStr(randoms[i]) + ' ');
  readln;
end.
