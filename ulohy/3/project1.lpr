program project1;

uses
    Classes;
var
    list,list2:TStringList;
    i:integer;
    myfile:textfile;
begin
    AssignFile(myfile, 'mix.txt');
    list:=TStringList.Create;
    list.Sorted:=true;
    list.LoadFromFile('chlapci.txt');
    list2:=TStringList.Create;
    list2.LoadFromFile('dievcata.txt');
    list.AddStrings(list2);
    Rewrite(myfile);
    for i:=0 to list.Count-1 do
    begin
      writeln(myfile, list[i]);
    end;
    writeln('Done');
    CloseFile(myfile);
    readln;
end.

