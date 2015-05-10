program AgeChecker;
uses
    SysUtils,Classes,DateUtils;

var
    name,birth:string;
    students:textfile;
    student:tstrings;
    myDate:TDateTime;
    ShortDateFormat: string = 'dd/mm/yyyy';


function legalage(birth: string):boolean;
var
    date,student:TDateTime;
begin
    date:=Now;
    date:=IncYear(date, -18);
    student:=StrToDate(StringReplace(birth, ' ', '-', [rfReplaceAll]));
    if student > date then
    begin
        Result:=false;
    end else
    begin
        Result:=true;
    end;
end;

begin
    AssignFile(students, 'triedy.txt');
    Reset(students);
    student:=tstringlist.create;
    WriteLn('Students at least 18 years old:');
    while not EoF(students) do
    begin
        readln(students, name);
        student.values['name']:= name;
        readln(students, birth);
        student.values['birth']:= birth;
        if legalage(birth) then
        begin
        writeln(student.values['name']);
        end;
    end;
    readln;
end.

