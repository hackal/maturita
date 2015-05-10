program project1;
uses
  SysUtils, Classes,Math;
var
  numStudents,mark,i:integer;
  average,rounded:extended;
  name:string;
  students:TStringList;
begin
  Write('Write numbr of students: ');
  Readln(numStudents);
  WriteLn('------------------------------------');
  students:=TStringList.Create;
  for i:=1 to numStudents do
  begin
    average:=0;
    Write('Name of student number ' + IntToStr(i) + ': ');
    readln(name);
    Write('Slovak: ');
    readln(mark);
    average:=average+mark;
    Write('English: ');
    readln(mark);
    average:=average+mark;
    Write('Computer Science: ');
    readln(mark);
    average:=average+mark;
    Writeln;
    average:=average/3;
    rounded:=RoundTo(average, -1);
    if rounded <= 1.5 then students.add(name +', average ' + FloatToStr(rounded) + ' | ');
  end;
  Writeln;
  write('Excellent students: | ');
  for i:=0 to students.count-1 do write(students[i]);
  readln;
end.
