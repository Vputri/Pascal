program program_procedure;
uses crt;
var luas:real;

Procedure luas_kubus;
var s:integer;
begin
     writeln('   1. Luas Kubus');
     writeln;
     write('      Masukkan Panjang Sisi : ');readln(s);
     luas:=6*s*s;
     writeln;
     writeln('      Luas Kubus adalah ',luas:0:2);
end;

Procedure luas_balok;
var p,l,t:integer;
begin
     writeln('   2. Luas Balok');
     writeln;
     write('      Masukkan Panjang Balok : ');readln(p);
     write('      Masukkan Lebar Balok   : ');readln(l);
     write('      Masukkan Tinggi Balok  : ');readln(t);
     luas:=2*(p*l+p*t+l*t);
     writeln;
     writeln('      Luas Balok adalah ',luas:0:2);
end;

Procedure luas_lingkaran;
var r:integer;
begin
     writeln('   3. Luas Lingkaran');
     writeln;
     write('      Masukkan Panjang Jari-Jari Lingkaran : ');readln(r);
     luas:=3.14*r*r;
     writeln;
     writeln('      Luas Lingkaran adalah ',luas:0:2);
end;

begin
clrscr;
textcolor(15);
writeln;
writeln('               PROGRAM LUAS BANGUN RUANG DAN BANGUN DATAR');
writeln;
luas_kubus;
writeln;
luas_balok;
writeln;
luas_lingkaran;
readln;
end.