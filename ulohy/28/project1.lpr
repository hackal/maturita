program project1;

uses
  SysUtils;
var
  input,i:integer;
  password:string = '';
begin
  randomize;
  Write('Give length of password: ');
  Readln(input);
  for i:=1 to input do
  begin
    if i = 1 then
    Insert(Chr(ord('A')+random(26)), password, i)
    else if i = input then
    Insert(Chr(ord('a')+random(26)), password, i)
    else
    Insert(Chr(ord('0')+random(10)), password, i);
  end;
  Writeln('Your password: ' + password);
  readln;
end.

