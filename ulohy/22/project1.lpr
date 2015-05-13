program project1;

uses
  sysutils;
var
  sentence:string;
  i,nwords:integer;
  k:char;
  letters: array['a'..'z'] of integer;
begin
  nwords:=1;
  writeln('Write your sencence in lower case letters:');
  readln(sentence);
  Writeln('-----------------------------------------------');
  for i:=1 to length(sentence) do
  begin
    if (sentence[i] = ' ') and (sentence[i+1] in ['a'..'z']) then
      inc(nwords);
    inc(letters[sentence[i]]);
  end;
  Writeln('Number of words: ' + IntToStr(nwords));
  Writeln('Character | Count;');
  for k:='a' to 'z' do
  begin
    if letters[k] <> 0 then writeln('         ' + k + ' | ' + IntToStr(letters[k]));
  end;
  readln;
end.

