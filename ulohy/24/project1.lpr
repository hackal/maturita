program project1;

uses
  sysutils;
var
  myfile:textfile;
  questions,correct,i:integer;
  temp,answer:string;
begin
  assignfile(myfile, 'test.txt');
  reset(myfile);
  readln(myfile, questions);
  correct:=0;
  for i:= 1 to questions do
  begin
    readln(myfile, temp);
    writeln(temp);
    readln(myfile, temp);
    Writeln('a) ' + temp);
    readln(myfile, temp);
    Writeln('b) ' + temp);
    readln(myfile, temp);
    Writeln('c) ' + temp);
    Write('Your answer: ');
    readln(myfile, temp);
    readln(answer);
    if answer = temp then
    begin
    inc(correct);
    writeln('Correct!');
    end else Writeln('Wrong!');
    writeln;
  end;
  closefile(myfile);
  Writeln('Your score: ' + IntToStr(correct) + ' out of ' + IntToStr(questions));
  readln;
end.

