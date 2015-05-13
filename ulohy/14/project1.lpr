program project1;

uses
  sysutils;
var
  students, number,i,k:integer;
  questions: array of integer;
  inarray:boolean;
begin
  randomize;
  Write('Number of students in groun: ');
  readln(students);
  setlength(questions, students);
  for i:= 1 to students do
  begin
    inarray:=true;
    number:=random(30)+1;
    while inarray do
    begin
      inarray:=false;
      number:=random(30)+1;
      for k:=0 to length(questions)-1 do
      begin
        if questions[k] = number then inarray:=true;
      end;
    end;

    Writeln('Student ' + IntToStr(i) + ' was assigned question number ' + IntToStr(number));
    questions[i-1]:=number;
  end;
  readln;
end.
