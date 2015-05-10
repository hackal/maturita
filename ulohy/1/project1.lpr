program BookDatabase;
{$APPTYPE CONSOLE}

//main variables
var
    db,choice:string;

//print instructions
procedure Instructions;
begin
    WriteLn('To add book press A');
    WriteLn('To write the database on screen press W');
    WriteLn('To end press E');
end;

//count lines in file and return integer value
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

//Add book to database
procedure AddBook(author, title : string);
var
    myfile: textfile;
begin
    AssignFile(myfile, db);
    Append(myfile);
    WriteLn(myfile, author + ' - ' + title); //Author and title are stored in one line
    CloseFile(myfile);
    WriteLn('Book added to database.');
    WriteLn('___________');
end;

procedure Book;
var
    author,title:string;
begin
    WriteLn('___________');
    WriteLn('Your choice: ' + UpCase(choice));
    if CountLines(db) < 100 then //Check if database has 100 or more entries
    begin
        WriteLn('Adding to database:');
        Write('Author: ');
        Readln(author);
        Write('Book title: ');
        Readln(title);
        AddBook(author, title);
    end else
    begin
        Writeln('Database full!');
        Writeln('___________');
    end;
end;

//Print all books in database
procedure Show;
var
    myfile: TextFile;
    line: string;
begin
    AssignFile(myfile, db);
    Reset(myfile);
    while not EoF(myfile) do
    begin
        ReadLn(myfile, line);
        Writeln(line);
    end;
    CloseFile(myfile);
end;

//Main code
begin
    db:='db.txt';
    while true do
    begin
        Instructions;
        Readln(choice);
        Case choice of
            'a','A':Book;
            'w','W':Show;
            'e','E':halt;
            else WriteLn('Invalid command.');
        end;
    end;
end.
