program project1;

uses
  sysutils,classes;
var
  myfile:textfile;
  line:string;
  i:integer;
  buffer:tstringlist;
begin
  randomize;
  buffer:=tstringlist.create;
  assignfile(myfile, 'sifra.txt');
  reset(myfile);
  while not EoF(myfile) do
  begin
    readln(myfile, line);
    for i:=Length(line) downto 1 do
    begin
      if (line[i] in ['A'..'Z']) or (line[i] in ['a'..'z']) then
      begin
        Insert(Chr(ord('a')+random(26)), line, i+1);
      end;
    end;
    buffer.add(line);
  end;
  buffer.savetofile('message.txt');
  readln;
end.
