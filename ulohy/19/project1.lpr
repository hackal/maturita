program project1;
uses
  sysutils,classes;
var
  i:integer;
  line:TStringList;
begin
  line:=TStringList.Create;
  line.loadfromfile('1text.txt');
  for i:=0 to line.count-1 do
  begin
    line[i]:=StringReplace(line[i], ', ', ',', [rfReplaceAll]);
    line[i]:=StringReplace(line[i], ',', ', ', [rfReplaceAll]);
    writeln(line[i]);
  end;
  line.savetofile('corrections.txt');
  line.free;
  readln;
end.
