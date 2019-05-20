program struktur_if_then_else;
uses crt;
var
  angka:integer;
  panjang:integer;
  lebar:integer;
  tinggi:integer;
  trapesium_calc:double;
  espektasi:double;
  hasil1:double;
  hasil2:double;
  i:integer;
begin
  clrscr;
   for i := 1  to 1000 do
      begin  
  writeln('###############################################');
  writeln('#                                             #');
  writeln('#          Kalkulator bangun ruang            #');
  writeln('#                                             #');
  writeln('###############################################');
  writeln('#                                             #');
  writeln('#    Pilih Bangun ruang                       #');
  writeln('#                                             #');
  writeln('#    1. Persegi                               #');
  writeln('#    2. Lingkaran                             #');
  writeln('#    3. Segitiga sama sisi                    #');
  writeln('#    4. Jajar Genajng                         #');
  writeln('#    5. Trapesium                             #');
  writeln('#                                             #');
  writeln('###############################################');
  writeln('');
  write(' Masukkan Pilihan Anda : ');
  readln(angka);
  if (angka = 1) then
    begin
      write('Panjang Sisi : ');
      readln(panjang);
      hasil1 := panjang * panjang;
      hasil2 := 4 * panjang;
      writeln('luas = ', hasil1);
      writeln('keliling = ', hasil2);
      writeln('');
    writeln('');
    end
  else if (angka = 2) then
    begin
      write('Panjang Jari - jari : ');
      readln(panjang);
      hasil1 := 3.14 * panjang * panjang;
      hasil2 := 2 * 3.14 * panjang;
      writeln('luas = ',hasil1);
      writeln('Keliling = ',hasil2);
      writeln('');
    writeln('');
    end
  else if (angka = 3) then
    begin
      write('Panjang Alas Segitiga: ');
      readln(panjang);
      write('Tinggi Segitiga : ');
      readln(tinggi);
      hasil1 := ( panjang * tinggi ) / 2;
      hasil2 := ( panjang) * 3;
      writeln('Luas = ',hasil1);
      writeln('Keliling = ',hasil2);
      writeln('');
    writeln('');
    end
  else if (angka = 4) then
    begin
      write('Panjang Sisi lurus : ');
      readln(panjang);
      write('Panjang Sisi Miring : ');
      readln(lebar);
      hasil1 := panjang * lebar;
      hasil2 := 2 * (panjang + lebar);
      writeln('Luas = ',hasil1);
      writeln('Keliling = ',hasil2);
      writeln('');
    writeln('');
    end
  else if (angka = 5) then
    begin
      write('Panjang Sisi Atas: ');
      readln(panjang);
      write('Panjang Sisi Bawah: ');
      readln(lebar);
      write('Tinggi Trapesium: ');
      readln(tinggi);
      hasil1 := ((panjang + lebar) * tinggi ) / 2;
      trapesium_calc := ((panjang - lebar) / 2);
      espektasi := (panjang + lebar) + ((SQRT((trapesium_calc * trapesium_calc) + (tinggi * tinggi))) * 2);
      hasil2 := espektasi;
      writeln('Luas = ',hasil1);
      writeln('Keliling = ',hasil2);
      writeln('');
      writeln('');
    end
    end;
  readln;
end.