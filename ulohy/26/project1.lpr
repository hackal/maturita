program project1;

uses
  sysutils,classes;

var
  sifra,first,second:textfile;
  pismeno:char;
  flip:boolean = true;
  i:integer;
begin
  assignfile(sifra, 'sifra.txt');
  assignfile(first, 'first.txt');
  assignfile(second, 'second.txt');
  rewrite(first);
  rewrite(second);
  reset(sifra);

  while not EoF(sifra) do
  begin
    read(sifra, pismeno);
    if pismeno = ' ' then flip:=not flip;
    if flip then
    begin
      write(first, pismeno);
      write(second, ' ');
    end else
    begin
      write(second, pismeno);
      write(first, ' ');
    end;
  end;
  
  closefile(first);
  closefile(second);
  closefile(sifra);
  readln;
end.

