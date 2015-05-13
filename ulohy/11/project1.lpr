program project1;
uses
  SysUtils;
var
  myfile:textfile;
  name:string;
  account:int64;
begin
assignfile(myfile, 'ucty.txt');
Reset(myfile);
while not EoF(myfile) do
begin
  readln(myfile, name);
  readln(myfile, account);
  if account mod 11 = 0 then
  begin
    WriteLn(name + ' '+ IntToStr(account) + ' Valid');
  end else WriteLn(name + ' '+ IntToStr(account) + ' Invalid');
end;
CloseFile(myfile);
readln;
end.
