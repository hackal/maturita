program project1;
uses
  Classes, SysUtils;
var
  database:TextFile;
  name,weight,height,choice:string;
procedure instructions;
begin
  WriteLn('To add model press A');
  Writeln('To write models with specific height on the screen press H');
  Writeln('To end press E');
end;
procedure printmodels(height: string);
var
  line:string;
  model:TStringList;
begin
  AssignFile(database, 'db.txt');
  Reset(database);
  model:=TStringList.Create;
  while not EoF(database) do
  begin
    readln(database, line);
    model.values['name']:= line;
    readln(database, line);
    model.values['weight']:= line;
    readln(database, line);
    model.values['height']:= line;
    if model.values['height']=height then
    begin
      Writeln(model.values['name'] + ' | ' + model.values['weight'] + ' | ' + model.values['height']);
    end;
  end;
  CloseFile(database);
end;

procedure addmodel(name,weight,height: string);
begin
  AssignFile(database, 'db.txt');
  Append(database);
  writeln(database, name);
  writeln(database, weight);
  writeln(database, height);
  CloseFile(database);
end;
begin
  while true do
  begin
    instructions;
    readln(choice);
    case choice of
      'a','A':begin
        Writeln('Adding model:');
        Write('Name: ');
        Readln(name);
        Write('Weight: ');
        Readln(weight);
        Write('Height: ');
        Readln(height);
        addmodel(name, weight, height);
        Writeln('________________');
      end;
      'h','H':begin
        Write('Print models with height: ');
        Readln(height);
        Writeln('Name | Weight | Height');
        printmodels(height);
        Writeln('________________');
      end;
      'e','E':halt;
      else Writeln('Invalid input.');
  end;
  end;
end.
