program project1;

uses
  SysUtils;
var
  capacity:integer;
  item,batch:extended;
  x:boolean = true;
begin
  Write('Give maximum capacity: ');
  Readln(capacity);
  batch:=0;
  while x do
  begin
    write('Give weight of the item you want to add: ');
    readln(item);
    if (batch+item) > capacity then x:=false
    else batch:=batch+item;
  end;
  Writeln('Cannot add this idem, because it would exceed the limit.');
  WriteLn('Final weight is: ' + FloatToStr(batch));
  readln;
end.
