var i:integer;
begin
i:=1;
while i<=5 do
begin
if 10 mod i=0 then
writeln(10 div i);
i:=i+1;
end;
readln;
end.