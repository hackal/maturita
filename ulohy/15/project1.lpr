program project1;
{
Nebudem sa jebat a skopirujem 13. ulohu
kde to correctuje zaciatok viet a iba dam
vsetko pred korekciu do lowercase.
}
uses
  SysUtils, classes;
var
  temp:string;
  k,i,j:integer;
  text:TStringList;
begin
  text:=TStringList.Create;
  text.loadfromfile('text.txt');
  for j:=0 to text.count-1 do
    text[j]:=lowercase(text[j]);
  //Upcase(text[0][1]); //First character always uppercase
  temp:=text[0];
  temp[1]:=Upcase(temp[1]);
  text[0]:=temp;

  for i:= 0 to text.count-1 do
  begin
    for k:= 1 to length(text[i]) do
    begin
      if (text[i][k] = '.') or (text[i][k] = '?') or (text[i][k] = '!') then //Look for . ? !
        begin
        if (text[i][k] = text[i][length(text[i])]) and not (i = text.count-1) then //Check if it is last character in line and it is not last in file
        begin
          temp:=text[i+1];
          temp[1]:=Upcase(temp[1]);
          text[i+1]:=temp;
        end else
        begin
          temp:=text[i];
          temp[k+2]:= Upcase(temp[k+2]);
          text[i]:=temp;
        end;
        end;
    end;
  end;
  text.SaveToFile('correction.txt');
  writeln('Changes saved to correction.txt');
  readln;
end.
