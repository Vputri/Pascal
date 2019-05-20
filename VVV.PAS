program program_function;
uses crt;
var s,p,l,t,r:integer;

Function luas_kubus(s:integer):integer;
Begin
     luas_kubus:=6*s*s;
end;

Function luas_balok(p,l,t:integer):integer;
Begin
     luas_balok:=2*(p*l+p*t+l*t);
end;

Function luas_lingkaran(r:integer):real;
Begin
     luas_lingkaran:=3.14*r*r;
end;

begin
clrscr;
textcolor(15);
writeln;
writeln('               PROGRAM LUAS BANGUN RUANG DAN BANGUN DATAR');
writeln;
writeln('   1. Luas Kubus');
writeln;
write('      Masukkan Panjang Sisi : ');readln(s);
writeln;
writeln('      Luas Kubus adalah ',luas_kubus(s));
writeln;
writeln('   2. Luas Balok');
writeln;
write('      Masukkan Panjang Balok : ');readln(p);
write('      Masukkan Lebar Balok   : ');readln(l);
write('      Masukkan Tinggi Balok  : ');readln(t);
writeln;
writeln('      Luas Balok adalah ',luas_balok(p,l,t));
writeln;
writeln('   3. Luas Lingkaran');
writeln;
write('      Masukkan Panjang Jari-Jari Lingkaran : ');readln(r);
writeln;
writeln('      Luas Lingkaran adalah ',luas_lingkaran(r):0:2);
readln;
end.