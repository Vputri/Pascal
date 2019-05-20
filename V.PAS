program bintang;
uses crt;
var i,j:integer;
begin
clrscr;
    textbackground(1);
     for i:=1 to 5 do
     begin
          j:=i;
          while j<5 do
          begin
               j:=j+1;
               write('*');
          end;
          writeln;
     end;
readln;
end.