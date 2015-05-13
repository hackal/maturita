program project1;

uses
  sysutils;

var
  x:integer;
begin
  repeat
  Write('How much you want to withdraw: ');
  Readln(x);
  writeln;
  if x mod 10 <> 0 then begin WriteLn('We are sorry, but smallest banknote is 10$'); writeln; end;
  until (x mod 10) = 0;
  writeln;
  writeln('Banknote | Count');
  writeln('----------------');
  writeln('100      | ' + IntToStr(x div 100));
  x:=x mod 100;
  writeln('50       | ' + IntToStr(x div 50));
  x:=x mod 50;
  writeln('20       | ' + IntToStr(x div 20));
  x:=x mod 20;
  writeln('10       | ' + IntToStr(x div 10));
  readln;
end.

