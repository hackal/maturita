program project1;

uses
  sysutils;
var
  posComma:integer;
  tempInt,day:extended;
  myfile:textfile;
  line,tempStr:string;
begin
  assignfile(myfile, 'teploty.txt');
  reset(myfile);
  while not EoF(myfile) do
  begin
    day:=0;
    readln(myfile, line);
    repeat

      posComma:=Pos(' ', line);
      if posComma > 0 then
      begin
        tempStr:=Copy(line,1,posComma-1);
        tempInt:=StrToInt(tempStr);
      end else
        tempInt:=StrToInt(line);

      if posComma > 0 then
        Delete(line,1,posComma);

        day:=day+tempInt;


    until posComma=0;
    Writeln('Average: ' + FloatToStr(day/4));
  end;
  close(myfile);
  readln;
end.

