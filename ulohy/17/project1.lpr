program project1;

uses
  SysUtils;
var
  loto:array of integer;
  i,k:integer;
  number,guess,correct:integer;
  inarray:boolean;
  plural:string;
  percent,money:extended;


begin
  setlength(loto, 5);
  randomize;
  inarray:=true;
  correct:=0;
  Write('How much money you want to bet: ');
  readln(money);
  for k:=0 to length(loto)-1 do
  begin
  number:=random(101);
  while inarray do
  begin
    inarray:=false;
    number:=random(101);
    for i:=0 to length(loto)-1 do
    begin
      if loto[i] = number then inarray:=true;
    end;
  end;
  loto[k]:=number;
  writeln(IntToStr(number));
  end;
  Writeln('Your numbers:');
  for i:=1 to 5 do
  begin
    Readln(guess);
    for k:=0 to length(loto)-1 do
      if loto[k] = guess then inc(correct);
  end;
  writeln;
  if correct >=2 then plural:='guesses.' else plural:='guess.';
  writeln('You had ' + IntToStr(correct) + ' correct ' + plural);
  money:=money+money*(correct/10);
  writeln('Price won: ' + FloatToStr(money));
  readln;
end.

