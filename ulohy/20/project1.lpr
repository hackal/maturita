program project1;

uses
  SysUtils,Classes;
var
  line:TStringList;
  i:integer;
  myfile:textfile;
  temp:string;
function ReverseString(const InString: string): string;
  var
    i: integer;
  begin
    for i := Length(InString) downto 1 do
      Result := Result + InString[i];
  end;
begin
  assignfile(myfile, 'message.txt');
  append(myfile);
  line:=TStringList.Create;
  line.LoadFromFile('sifra.txt');
  for i:=line.count-1 downto 0 do
    begin

    temp:=line[i];
    Delete(temp, Length(temp), Length(temp));
    temp:=ReverseString(temp)+'.';
    writeln(myfile, temp);
    end;
  closefile(myfile);
  readln;
end.

