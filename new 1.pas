Uses crt;
Type pesan = record
nama,tujuan,kelas,brangkat:string[50];
harga,toth:real;
tiket:byte;
end;
var data:array[1..100] of pesan;
i:byte;

procedure selamat;
var i,j:byte;
begin
clrscr;
gotoxy(35,9);textcolor(11);writeln('S');
delay(400);
gotoxy(35,9);writeln('SE');
delay(400);
gotoxy(35,9);writeln('SEL');
delay(400);
gotoxy(35,9);writeln('SELA');
delay(400);
gotoxy(35,9);writeln('SELAM');
delay(400);
gotoxy(35,9);writeln('SELAMA');
delay(400);
gotoxy(35,9);writeln('SELAMAT');
delay(400);
gotoxy(35,9);writeln('SELAMAT ');
delay(400);
gotoxy(35,9);writeln('SELAMAT D');
delay(400);
gotoxy(35,9);writeln('SELAMAT DA');
delay(400);
gotoxy(35,9);writeln('SELAMAT DAT');
delay(400);
gotoxy(35,9);writeln('SELAMAT DATA');
delay(400);
gotoxy(35,9);writeln('SELAMAT DATAN');
delay(400);
gotoxy(35,9);writeln('SELAMAT DATANG');
delay(400);
gotoxy(41,11);writeln('D');
delay(400);
gotoxy(41,11);writeln('DI');
delay(400);
gotoxy(34,13);writeln('P');
delay(400);
gotoxy(34,13);writeln('PT');
delay(400);
gotoxy(34,13);writeln('PT.');
delay(400);
gotoxy(34,13);writeln('PT.P');
delay(400);
gotoxy(34,13);writeln('PT.PO');
delay(400);
gotoxy(34,13);writeln('PT.POL');
delay(400);
gotoxy(34,13);writeln('PT.POLI');
delay(400);
gotoxy(34,13);writeln('PT.POLIND');
delay(400);
gotoxy(34,13);writeln('PT.POLINDR');
delay(400);
gotoxy(34,13);writeln('PT.POLINDRA');
delay(400);
gotoxy(34,13);writeln('PT.POLINDRA ');
delay(400);
gotoxy(34,13);writeln('PT.POLINDRA E');
delay(400);
gotoxy(34,13);writeln('PT.POLINDRA EX');
delay(400);
gotoxy(34,13);writeln('PT.POLINDRA EXP');
delay(400);
gotoxy(34,13);writeln('PT.POLINDRA EXPR');
delay(400);
gotoxy(34,13);writeln('PT.POLINDRA EXPRE');
delay(400);
gotoxy(34,13);writeln('PT.POLINDRA EXPRES');
delay(400);
gotoxy(34,13);writeln('PT.POLINDRA EXPRESS');
delay(400);

gotoxy(3,22);WRITE('LOADING : ');
delay(400);
for i:=15 to 78 do
begin
gotoxy(i,22);write(chr(177));
delay(200);
end;
textcolor(15);
end;

procedure jadwal(var d:byte);
begin
if d=1 then begin gotoxy(3,15);writeln('Bandung  = 07.00 , 12.00 , 20.00');end
else
if d=2 then begin gotoxy(3,15);writeln('Surabaya = 08.00 , 13.00 , 21.00');end
else
if d=3 then begin gotoxy(3,15);writeln('Jakarta  = 06.00 , 11.00 , 19.00');end;
end;

procedure daftar;
var a:byte;
b,c:char;
begin
clrscr;
gotoxy(3,3);write('Nama Anda : ');readln(data[i].nama);
writeln;
gotoxy(11,4);writeln('Tujuan');
gotoxy(3,5);writeln('pilih 1 untuk Bandung');
gotoxy(3,6);writeln('pilih 2 untuk Surabaya');
gotoxy(3,7);writeln('pilih 3 untuk Jakarta');
gotoxy(3,8);Write('Pilihan : ');readln(a);
if a=1 then data[i].tujuan:='Bandung'
else
if a=2 then data[i].tujuan:='Surabaya'
else
if a=3 then data[i].tujuan:='Jakarta';
writeln;
writeln;
gotoxy(11,9);writeln('Kelas');
gotoxy(3,10);Writeln('pilih A untuk Bisnis');
gotoxy(3,11);writeln('pilih B untuk VIP');
gotoxy(3,12);writeln('pilih C untuk Ekonomi');
gotoxy(3,13);write('pilihan : ');readln(b);
case b of
  'a','A':begin
if a=1 then begin
data[i].harga:=200000;
data[i].kelas:='Bisnis';
end
else
if a=2 then begin
data[i].harga:=330000;
data[i].kelas:='Bisnis';
end
else
if a=3 then begin
data[i].harga:=300000;
data[i].kelas:='Bisnis';
end;
end;
  'b','B':begin
if a=1 then begin
data[i].harga:=300000;
data[i].kelas:='VIP';
end
else
if a=2 then begin
data[i].harga:=320000;
data[i].kelas:='VIP';
end
else
if a=3 then begin
data[i].harga:=400000;
data[i].kelas:='VIP';
end;
end;
  'c','C':begin
if a=1 then begin
data[i].harga:=310000;
data[i].kelas:='Ekonomi';
end
else
if a=2 then begin
data[i].harga:=320000;
data[i].kelas:='Ekonomi';
end
else
if a=3 then begin
data[i].harga:=200000;
data[i].kelas:='Ekonomi';
end;
end;
end;
gotoxy(3,14);Write('Apakah anda ingin melihat jadwal? (y/n): ');readln(c);
if (c='y') or (c='Y') then
begin
jadwal(a);
gotoxy(3,16);write('jadwalkeberangkatan = ');readln(data[i].brangkat);
end
else
gotoxy(3,17);write('Berapa tiket yang anda beli? ');readln(data[i].tiket);
data[i].toth:=(data[i].tiket)*(data[i].harga);
gotoxy(20,18);writeln('Terimakasih');
end;

procedure hasil;
begin
clrscr;
gotoxy(3,3);writeln('Nama         = ',data[i].nama);
gotoxy(3,4);writeln('Tujuan       = ',data[i].tujuan);
gotoxy(3,5);Writeln('Kebrangkatan = ',data[i].brangkat);
gotoxy(3,6);writeln('Kelas    =',data[i].kelas,'',data[i].harga:0:2);
gotoxy(3,7);writeln('Jumlah tiket  = ',data[i].tiket);
gotoxy(3,8);writeln('Total        = ',data[i].toth:0:2);
end;

label a,b;
var t:char;
j:byte;
begin
clrscr;
selamat;
i:=1;
a: begin
clrscr;
daftar;
hasil;
gotoxy(3,9);write('Ingin melakukan transaksi kembali (y/n) : ');readln(t);
if (t='y') or (t='Y') then
begin
i:=i+1;
goto a;
end
else
if (t='n') or (t='N') then
goto  b;
end;
b: begin
clrscr;
gotoxy(5,9);writeln('TERIMAKASIH KEPERCAYAAN ANDA MENGGUNAKAN JASA KAMI UNTUK PERJALANAN ANDA');
gotoxy(21,11);writeln('ANDA TIDAK PUAS DENGAN PELAYANAN KAMI?');
gotoxy(25,13);writeln('SILAHKAN HUBUNGI (0234) 666999');
readln;
end;
end.
