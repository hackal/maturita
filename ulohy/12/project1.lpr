program project1;

uses
  SysUtils;
var
  computer,choice,wins:integer;
begin
  randomize;
  wins:= 0;
  while true do
  begin
  computer:= random(3);
  Writeln('Your choice(0 - rock, 1 - paper, 2 - scissors, [3 to end])');
  readln(choice);
  case choice of
    1:begin
      if computer = 0 then
      begin
        inc(wins);
        Writeln('You win');
      end else Writeln('You lose');
    end;
    2:begin
      if computer = 1 then
      begin
        inc(wins);
        Writeln('You win');
      end else Writeln('You lose');
    end;
    0:begin
      if computer = 2 then
      begin
        inc(wins);
        Writeln('You win');
      end else Writeln('You lose');
    end;
    3:begin
      writeln('Total wins: ' + IntToStr(wins) + '. Goodbye!');
      readln;
      halt;
    end
  else Writeln('Invalid input');
  end;
  end;
end.
