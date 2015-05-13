program project1;

uses
  sysutils,classes;
var
  line:string;
  myfile:textfile;
  buffer:tstringlist;
  i:integer;
begin
  assignfile(myfile, 'sifra.txt');
  reset(myfile);
  buffer:=Tstringlist.create;
  while not EoF(myfile) do
  begin
  readln(myfile, line);

  for i:=Length(line) downto 1 do
  begin
    if (line[i] in ['a', 'e', 'i', 'o', 'u']) then
    begin
      delete(line, i, 1);
    end;
  end;
  buffer.add(line);
  end;
  closefile(myfile);
  buffer.savetofile('message.txt');
  buffer.free;
  readln;
end.

