program project1;

uses
  classes, SysUtils;

var
  skokan:TStringList;
  winner:string;
  height, prev,i:integer;
begin
  skokan:=TStringList.Create;
  skokan.LoadFromFile('skokani.txt');
  prev:=0;
  for i:=1 to skokan.count-1 do
  begin
    Write(skokan[i] + ' jumped: ');
    readln(height);
    if height > prev then
    begin
      winner:=skokan[i];
      prev:= height;
    end;
  end;
  Writeln;
  Writeln('Winner: ' + winner + ' with ' + IntToStr(prev) + 'cm');
  readln;
end.
