uses crt;
var

	a,list_data,show_data,nest_loop,total,pembayaran_akhir,uang_pembeli,kembalian : integer;
  
	npm								      : string;
	num                     : integer;

  daftar_harga					  : array[0..10] of integer;
	nama 							      : array[1..100] of string[20];
	pas_nama 					   	  : array[0..10] of integer;
	harga, jumlah 					: array[1..100] of integer;
	nama_makanan 					  : array[1..7] of string[20];
	

begin

  	clrscr;

  	nama_makanan[1] := 'Kopi Mocca'; daftar_harga[1] := 4000;
  	nama_makanan[2] := 'Kopi Latte'; daftar_harga[2] := 4000;
  	nama_makanan[3] := 'Kopisuleng'; daftar_harga[3] := 3000;
  	nama_makanan[4] := 'Bakwan enk'; daftar_harga[4] := 1000;
  	nama_makanan[5] := 'Lhonthongs'; daftar_harga[5] := 1000;
  	nama_makanan[6] := 'Teh Mhanis'; daftar_harga[6] := 2500;
  	nama_makanan[7] := 'jusz Jeruk'; daftar_harga[7] := 3000;


  writeln('        ___________________________________________________________________');
	writeln('       |                                                                   |');
	writeln('       |                   DAFTAR MENU & HARGA BARANG                      |');
	writeln('       |___________________________________________________________________|');
	writeln('       |      |                        |                                   |');
	writeln('       |  No  |   Nama Barang          |     Harga Barang (Rp.) / Pcs      |');
	writeln('       |______|________________________|___________________________________|');
	writeln('       |      |                        |                                   |');


	for list_data := 1 to length(nama_makanan) do
      begin
        write('       |  ',list_data,'   |   ',nama_makanan[list_data],'           |            Rp. ',daftar_harga[list_data],'               |');
        writeln();
  end;

  writeln('       |      |                        |                                   |');
	writeln('       |______|________________________|___________________________________|');
	writeln('');
	writeln('');
    write('       Jumlah Makanan Yang Akan dibeli : ');readln(nest_loop);
  writeln('       ____________________________________________________________________');
  writeln('');
  writeln('');



  for a := 1 to nest_loop do
    begin
        write('       Nomor Makanan     : '); readln(pas_nama[a]);

      num 		:= pas_nama[a];
      nama[a] 	:= nama_makanan[num];
      harga[a] 	:= daftar_harga[num];

        write('       jumlah pembelian  : '); readln(jumlah[a]);
      writeln('       ');
      writeln('       ____________________________________________________________________');
  	  writeln('       ');

    end;

      writeln('       ');
      writeln('       ');
      writeln('       _____________________________________________________________________');
      writeln('      |                  |               |                |                 |');
      writeln('      |  nama barang     | jumlah beli   |      harga     |     total       |');
      writeln('      |__________________|_______________|________________|_________________|');
      writeln('       ');

  for a := 1 to nest_loop do
      begin
        
        write('       ',nama[a]:8);
        write(jumlah[a]:15);
        write(harga[a]:20);
        total := jumlah[a]*harga[a];
        writeln('       RP ',total:13);
        pembayaran_akhir += total;

      end;

      
      writeln('       ');
  	  writeln('      _____________________________________________________________________');
      writeln('       ');
      writeln('       Total belanja             : RP ',pembayaran_akhir);
      writeln('       ');
  	  writeln('      _____________________________________________________________________');
      writeln('       ');
      write('       Jumlah uang yg diserahkan : RP ');readln(uang_pembeli);
      writeln('       Jumlah bayar              : RP ',pembayaran_akhir);

      kembalian := uang_pembeli-pembayaran_akhir;
      writeln('       ');
    	writeln('      _____________________________________________________________________');
      writeln('       ');
      writeln('       kembalian                   : Rp ',kembalian);
      writeln('       ');
    	writeln('      _____________________________________________________________________');
      writeln('       ');
      writeln('       ');
      write('                                  Terima Kasih');

  readln;
end.