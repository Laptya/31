uses crt;
type StatStack = record  
      tags: array of char;
      size: integer; 
     end;
type DinStack = ^Node;
    Node = record
      data: char;
      next: DinStack; 
    end;
var
  SS:StatStack;
  MaxSize,K:integer;
  Statich: boolean;
  q:char;
  Head: DinStack;
  
procedure view();
var i:integer;
qq: DinStack;
begin
  If Statich = True then
    begin
    for i:=ss.size-1 downto 0 do
      write(ss.tags[i],' ');
    writeln;
    end
    else
    begin
    qq:=Head;
    while qq <> nil do begin
    write(qq^.data,' ');
    qq := qq^.next;
    end;
    writeln;
    end;
end;

procedure Delete();
var qq: DinStack;
begin
  if statich = True then
  begin
    writeln('Удалённый символ ', SS.tags[ss.size - 1]);
    Ss.tags[ss.size - 1] := char(255);
    ss.size := ss.size - 1;
    end
    else
    begin
     qq := Head;
     Head := qq^.next;
     writeln('Удалённый символ ', qq^.data);
     Dispose(qq);
     end;
    
end;


procedure add(i:char);
var qq: DinStack;
begin
  if statich = True then begin
    if SS.size = MaxSize then
      begin
      writeln('Стэк заполнен.');
      exit;
      end
      else
        begin
        SS.size := SS.size + 1;
        SS.tags[SS.size - 1] := i;
        end
    end
    else
    begin
    New(qq);
    qq^.data := i;
    qq^.next := Head;
    Head := qq;
    end;
end;



function IsEmpty: Boolean;
begin
  if statich = true then
  Result := (SS.size = 0)
  else
  Result := (Head = nil)
    
end;

begin
  repeat
  writeln('Выбирите структуру стека:');
  writeln('1 - статическая');
  writeln('2 - динамическая');
  readln(k);
  if k = 1 then begin
    statich := True;
    writeln('Задайте максимальную длину');
    readln(MaxSize);
    setlength(ss.tags,MaxSize);
  end;
  until (k = 1) or (k =2);

k := 0;
clrscr;

  repeat
    clrscr;
    writeln('1 - добавление элемента');
    writeln('2 - удаление элемента');
    writeln('3 - узнать, пуст ли стек');
    writeln('4 - просмотр стека');
    writeln('0 - закончить работу');
    readln(k);
    case k of
      1: begin writeln('Введите символ'); readln(q); add(q); end;
      2: Delete;
      3: writeln(IsEmpty);
      4: view;
    end;
    writeln('Нажмите enter...');
    readln(q);
  until k = 0;
end.
