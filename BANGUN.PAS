program bangun;
uses crt;
label menu;

const
phi = 3.14;

var
pilihan, s,d1,d2,K,r,la,ka,t,Vp,Lpp,p,l,Lpj,Kpj,Rt,Tt : integer;
lagi:string;
Lu,Lp,V,Ls,Vt:real;

begin
        menu:
	textbackground(1);
	clrscr;
	textcolor(15);
        writeln;
        writeln;
	writeln('                          ********************************************');
	writeln('                          * Menghitung Luas dan keliling atau Volume *');
	writeln('                          *     Created by Vika Putri Ariyanti       *');
	writeln('                          ********************************************');
	writeln('                          *           Pilihaan Bangun :              *');
	writeln('                          *        1. Belah Ketupat                  *');
	writeln('                          *        2. Bola                           *');
	writeln('                          *        3. Prisma                         *');
	writeln('                          *        4. Persegi Panjang                *');
	writeln('                          *        5. Tabung                         *');
	writeln('                          ********************************************');
	writeln('');
	write('    Masukkan Pilihan Anda : ');readln(pilihan);
	write('    Anda memilih no. ', pilihan);
        writeln('');
        writeln('');

case pilihan of
1 : begin
                clrscr;
                writeln('');
		write('    Pilihan Anda adalah Belah Ketupat');
		writeln('');
		writeln('');
		textcolor(13);
		writeln('                                +++++++++++++++++++');
		writeln('                                +++Belah Ketupat+++');
		writeln('                                +++++++++++++++++++');
		writeln('');
		write('    Masukkan Panjang Sisi       : ');readln(s);
		write('    Masukkan Panjang Diagoanl 1 : ');readln(d1);
		write('    Masukkan Panjang Diagonal 2 : ');readln(d2);
		writeln('');
		K:=4*s;
		writeln('    Keliling Belah Ketupat = 4 x Sisi');
		writeln('                           = 4 x ', s);
		writeln('                           = ', K);
		writeln('');
		Lu:=0.5*d1*d2;
		writeln('    Luas Belah Ketupat     = 0,5 x diagonal 1 x diogonal 2');
		writeln('                           = 0,5 x ', d1,' x ',d2);
		writeln('                           = ', Lu:0:2);
		writeln('');
		writeln('   Jadi,   /\    dengan panjang sisi = ',s,', kelilingnya adalah ',K,'.');
		writeln('         /    \  Serta dengan panjang diagonal 1 = ',d1);
		writeln('         \    /  dan panjang diagonal 2 = ',d2,',');
		writeln('           \/    luas permukaannya adalah ',Lu:0:2);
                writeln('');
                Write('    Apakah anda ingin menghitung lagi [Y/N] ? : ');readln(lagi);
                if (Lagi='Y') or (Lagi='y') then
                   GoTo menu;
                if (Lagi='N') or (Lagi='n') then
                   exit;
	end;

2 : begin
                clrscr;
                writeln('');
		write('    Pilihan Anda adalah Bola');
		writeln('');
		writeln('');
		writeln('                                           ==========');
		writeln('                                           ===Bola===');
		writeln('                                           ==========');
		writeln('');
		write('    Masukkan Panjang jari-jari:');readln(r);
		Lp:=4*pi*sqr(r);
		V:=4/3*pi*r*r*r;
		writeln('');
		writeln('    Volume Bola        = 4 x pi x jari-jari x jari-jari');
		writeln('                       = 4 x ',pi:0:2, ' x ', r, ' x ', r);
		writeln('                       = ',V:0:2);
		writeln('');
		writeln('    Luas Pemukaan Bola = 4/3 x pi x jari-jari x jari-jari x jari-jari');
		writeln('                       = 4/3 x ',pi:0:2, ' x ', r, ' x ', r,' x ', r);
		writeln('                       = ',Lp:0:2);
		writeln('');
		writeln('    Jadi, Bola dengan panjang jari-jari = ',r,',luas permukaannya adalah ',Lp:0:2);
		writeln('');
                writeln('    dan volumenya adalah ',V:0:2);
		writeln('');
		Write('    Apakah anda ingin menghitung lagi [Y/N] ? : ');readln(lagi);
		if (Lagi='Y') or (Lagi='y') then
		   GoTo menu;
		if (Lagi='N') or (Lagi='n') then
        exit;
	end;

3 : begin
                clrscr;
                writeln('');
		write('    Pilihan Anda adalah Prisma');
		writeln('');
		writeln('');
                textcolor(13);
		writeln('                                     ************');
		writeln('                                     ***Prisma***');
		writeln('                                     ************');
		writeln('');
		write('    Masukkan luas alas     : ');readln(la);
		write('    Masukkan keliling alas : ');readln(ka);
		write('    Masukkan tinggi        : ');readln(t);
		Lpp:=(2*la)+(ka*t);
		Vp:=la*t;
		writeln('');
		writeln('    Luas Permukaan Prisma = (2 x Luas Alas) + (Keliling Alas x Tinggi)');
		writeln('                          = (2 x ',la,') + ( ',ka,' x ',t,')');
		writeln('                          = ',Lpp);
		writeln('');
		writeln('    Volume Prisma         = Luas Alas x Tinggi');
		writeln('                          = ',la,' x ',t);
		writeln('                          = ',Vp);
		writeln('');
		writeln('    Jadi, prisma dengan luas alas = ',la,', keliling alas = ',ka,', dan tinggi = ',t,',');
		writeln('    luas permukaan adalah ',Lpp,' dan volumenya adalah ',Vp);
		writeln('');
		Write('    Apakah anda ingin menghitung lagi [Y/N] ? : ');readln(lagi);
                if (Lagi='Y') or (Lagi='y') then
                   GoTo menu;
                if (Lagi='N') or (Lagi='n') then
                   exit;
   end;

4 : begin
                clrscr;
                writeln('');
		writeln('    Pilihan Anda adalah Belah Ketupat');
		writeln('');
		writeln('');
		writeln('                        %%%%%%%%%%%%%%%%%%%%%%%%%%');
		writeln('                        %%%%% Persegi Panjang %%%%');
		writeln('                        %%%%%%%%%%%%%%%%%%%%%%%%%%');
		writeln('');
		write('    Masukkan Panjang : ');readln(p);
		write('    Masukkan Lebar   : ');readln(l);
		Lpj:=p*l;
		Kpj:=(p+l)*2;
		writeln('');
		writeln(     '    Luas Persegi Panjang     = Panjang x Lebar');
		writeln(     '                             = ',p,' x ',l);
		writeln(     '                             = ',Lpj);
		writeln('');
		writeln(     '    Keliling Persegi Panjang = 2 x (Panjang + Lebar)');
		writeln(     '                             = 2 x (',p,' + ',l,')');
		writeln(     '                             = ',Kpj);
		writeln('');
		writeln('           ____________');
		writeln('   Jadi,  |            |  dengan panjang = ',p,' dan lebar = ',l,',');
		writeln('          |____________|  luasnya adalah ',Lpj,' dan kelilingnya ',Kpj);
		writeln('');
		Write('    Apakah anda ingin menghitung lagi [Y/N] ? : ');readln(lagi);
		if (Lagi='Y') or (Lagi='y') then
		   GoTo menu;
		if (Lagi='N') or (Lagi='n') then
                   exit;
	end;

5 : begin
                clrscr;
                writeln('');
		writeln('    Pilihan Anda adalah Belah Ketupat');
		writeln('');
                writeln;
                textcolor(13);
		writeln('                              ################');
		writeln('                              #### Tabung ####');
		writeln('                              ################');
		writeln('');
		write('    Masukkan Jari-Jari : ');readln(Rt);
		write('    Masukkan Tinggi    : ');readln(Tt);
		Vt:=pi*Rt*Rt*Tt;
		Ls:=2*pi*Rt*Tt;
		writeln('');
		writeln('    Volume Tabung       = pi x jari-jari x jari-jari x tinggi');
		writeln('                        = ',pi:0:2, ' x ',Rt, ' x ',Rt,' x ',Tt);
		writeln('                        = ',Vt:0:2);
		writeln('');
		writeln('    Luas Selimut Tabung = 2 x pi x jari-jari x tinggi');
		writeln('                        = 2 x ',pi:0:2,' x ',Rt,' x ',Tt);
		writeln('                        = ',Ls:0:2);
		writeln('    Jadi, Tabung dengan panjang jari-jari = ',Rt,' dan tinggi = ',Tt);
		writeln('    volume tabung adalah ',Vt:0:2,' luas selimut tabung adalah ',Tt);
		writeln('');
		Write('    Apakah anda ingin menghitung lagi [Y/N] ? : ');readln(lagi);
		if (Lagi='Y') or (Lagi='y') then
		   GoTo menu;
		if (Lagi='N') or (Lagi='n') then
        exit;
	end;

else
     clrscr;
     writeln('');
     writeln('    Pilihan Tidak Ada');
     writeln('');
     write('    Apakah anda ingin memilih lagi [Y/N] ? : ');readln(lagi);
     if (Lagi='Y') or (Lagi='y') then
     GoTo menu;
     if (Lagi='N') or (Lagi='n') then
     exit;
 end;

readln;
end.
