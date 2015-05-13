program project1;

uses
  SysUtils;
type
  TPlayer = record
    meno: string;
    final: integer;
  end;

var
  myfile:textfile;
  player:array of TPlayer;
  name,score:string;
  sum,i, max, min, ucast,k,win,index:integer;
begin
  assignfile(myfile, 'korcule.txt');
  reset(myfile);
  readln(myfile, ucast);
  setlength(player, ucast);
  k:=0;
  while not EoF(myfile) do
  begin
    sum:=0;
    readln(myfile, name);
    readln(myfile, score);
    score:=stringreplace(score, ' ', '', [rfReplaceAll]);
    max:=StrToInt(score[1]);
    min:=StrToInt(score[1]);
    for i:=1 to length(score) do
    begin
      sum:=sum+StrToInt(score[i]);
      if StrToInt(score[i])<min then min:=StrToInt(score[i]) else
        if StrToInt(score[i])>max then max:=StrToInt(score[i]);
    end;
    sum:=sum-min-max;
    with player[k] do
    begin
      meno:=name;
      final:=sum;
    end;
    inc(k);
  end;
  win:=player[0].final;
  for i:=0 to ucast-1 do
  begin
    if player[i].final>win then
    begin
      win:=player[i].final; index:=i;
    end;
  end;
  writeln('Winner: ' + player[index].meno + ' with score of: ' + IntToStr(player[index].final));
  readln;
end.
