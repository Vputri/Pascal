uses crt;
var
a,x,total,total2,jmluang,kembali,pot_har,Ttl,pot: integer;
nama : array[1..100] of string[20];
tgl:string[10];
kasir:string;
harga, jumlah,kode: array[1..100] of integer;

begin
  clrscr;
  writeln('                                    TOKO ANAKGUNDAR.COM');
  writeln();
  write('Masukkan Tanggal : ');readln(tgl);
  write('Nama Kasir       : ');readln(kasir);
  writeln();
  write('Masukkan jumlah item yang akan dibeli : ');readln(x);
  writeln(' ');

  for a := 1 to x do
    begin
      write('Masukkan Kode Barang    ',a,'  : ');readln(kode[a]);
      write('Masukkan Nama Barang    ',a,'  : ');readln(nama[a]);
      write('Masukkan Harga Barang   ',a,'  : ');readln(harga[a]);
      write('Masukkan Jumlah Barang  ',a,'  : ');readln(jumlah[a]);
      writeln(' ');
    end;

  writeln(' ');
  writeln(' ');
  writeln('=========================================================================');
  writeln('Kode Barang    Nama Barang        Jumlah Beli         Harga         Total');
  writeln('=========================================================================');
  for a := 1 to x do
    begin
    write(kode[a]:5);
    write(nama[a]:15);
    write(jumlah[a]:18);
    write(harga[a]:20);
    total := jumlah[a]*harga[a];
    writeln(total:13);
    total2 := total2+jumlah[a]*harga[a];
    end;

    writeln('=========================================================================');
    writeln(' ');
    writeln('Total Jual :Rp.  ',total2);
    if total2>100 then
    writeln('Diskon     :Rp.  ',pot);
    writeln('------------(-)');
    Ttl:=total2-pot;
    writeln('Total      :Rp. ',Ttl);
    writeln(  );
    writeln(' ');
    write('Tunai      :Rp.  ');read(jmluang);
    writeln('TOTAL      :Rp.  ',Ttl);
    writeln('--------------------------(-)');
    kembali := jmluang-total2;

    writeln('Kembali    :Rp.  ',kembali);
    writeln();
    writeln('=========================================================================');
    writeln('                                 Terima Kasih                            ');
    writeln('                              Atas Kunjungan Anda                        ');
    writeln('=========================================================================');

  readln;
end.

