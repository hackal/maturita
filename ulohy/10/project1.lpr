program project1;
uses
  classes,SysUtils;
type
  TFood = record //Record je nieco ako array ale moze mat viac data typov
    name: string;
    price: integer;
  end;
var
  menu:array of TFood; //Spravime si array recordov kde jeden record predstavuje jednu polozku z menu s menom a cenou
  arraylength:extended;
  jedalnicek:textfile;
  k,i,budget:integer;
  line:string;

//Funkcia skopirovana s ulohy 1 pouzita na zadanie dlzky arrayu
function CountLines(path : string): integer;
  var
      i:integer;
      myfile:textfile;
  begin
      i:=0;
      AssignFile(myfile, path);
      Reset(myfile);

      while not EoF(myfile) do
      begin
          i:= i+1;
          ReadLn(myfile);
      end;

      CloseFile(myfile);
      Result:=i; //Return lines
  end;
//Main code
begin
  arraylength:=CountLines('jedalnik.txt'); //Dlzka arrayu je vlastne pocet riadkov/2
  arraylength:=arraylength/2;
  SetLength(menu, StrToInt(FloatToStr(arraylength))); //WTF this hack? Viem je to jebnute :D

  assignfile(jedalnicek, 'jedalnik.txt');
  Reset(jedalnicek);
  k:=0;
  while not EoF(jedalnicek) do //Zaplnime nase recordy v array s hodnotami
  begin
      with menu[k] do
      begin
        Readln(jedalnicek, line);
        name:=line;
        Readln(jedalnicek, line);
        price:=StrToInt(line);
      end;
      inc(k);
  end;
  Write('Your budget: ');
  readln(budget);

  for i:= 0 to Length(menu)-1 do //Pre kazde jedlo
  begin
      if menu[i].price <= budget then writeln(menu[i].name); //Jednoduchy check ci customer ma tuke na jedlo
  end;
  readln;
end.
//Divim sa ze to funguje
