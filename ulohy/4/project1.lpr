program project1;
uses
    SysUtils;
var
    wins,guess,computer,turn:integer;
begin
    turn:=0;
    wins:=0;
    randomize;
    repeat
    computer:=Random(2);
    write('Try to guess my number: ');
    readln(guess);
    if guess = computer then
    begin
        Writeln('You were RIGHT!');
        Inc(wins);
    end else
    begin
        Writeln('Oh NO, my number was ' + IntToStr(computer));
    end;
    Inc(turn);
    until turn=10;
    Writeln('You had ' + IntToStr(wins) + ' correct guesses.');
    readln;
end.

