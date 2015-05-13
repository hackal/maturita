program project1;

uses
  sysutils;
var
  word:string;
  i:integer;
  k:char;
  first,second: array['a'..'z'] of integer;
  equal:boolean = true;
begin
  writeln('Write 2 strings:');
  readln(word);
  word:=lowercase(word);
  for i:=1 to length(word) do
  begin
    inc(first[word[i]]);
  end;
  readln(word);
  word:=lowercase(word);
  for i:=1 to length(word) do
  begin
    inc(second[word[i]]);
  end;

  for k:='a' to 'z' do
  begin
    if first[k] <> second[k] then
    equal:=false;
  end;
  if equal then
  writeln('They are anagrams.')
  else
  writeln('They are not anagrams.');
  readln;
end.
