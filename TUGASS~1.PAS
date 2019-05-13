Program Konversi_Suhu;
uses crt;

Function Fahrenheit(Celcius:real):real;
begin
	Fahrenheit:=(9/5*Celcius)+32;
end;

Function Reamur(Celcius:real):real;
begin
	Reamur:=4/5*Celcius;
end;

Function Kelvin(Celcius:real):real;
begin
	Kelvin:=Celcius+273;
end;

Function Celcius(Fahrenheit:real):real;
begin
	Celcius:=5/9*(Fahrenheit-32);
end;

Function Celcius1(Reamur:real):real;
begin
	Celcius1:=5/4*Reamur;
end;

Function Celcius2(Kelvin:real):real;
begin
	Celcius2:=Kelvin-273;
end;

Procedure Dari_Celcius;
var Celcius:real;
	pilih2:string;
begin
	clrscr;
        writeln('');
	write('          Masukkan Celcius: ');readln(Celcius);
        writeln('');
	writeln('            PROGRAM KONVERSI SUHU DARI CELCIUS');
	writeln('');
	writeln('        1. FAHRENHEIT  [F]');
	writeln('        2. REAMUR      [R]');
	writeln('        3. KELVIN      [K]');
	writeln('');
	write('          Masukkan Pilihan Anda [F/R/K]: ');readln(pilih2);
        writeln('');
	if (pilih2='F') or (pilih2='f') then
		begin
			writeln('        Celcius    = ',Celcius:0:0);
			writeln('        Fahrenheit = 9/5 * ',Celcius:0:0,' + 32');
			writeln('                   = ',Fahrenheit(Celcius):0:0);
		readln;
		end;
	if (pilih2='R') or (pilih2='r') then
		begin
			writeln('        Celcius    = ',Celcius:0:0);
            writeln('        Reamur     = 4/5 * ',Celcius:0:0);
			writeln('                   = ',Reamur(Celcius):0:0);
		readln;
		end;
	if (pilih2='K') or (pilih2='k') then
		begin
			writeln('        Celcius    = ',Celcius:0:0);
			writeln('        Kelvin     = 273 + ',Celcius:0:0);
			writeln('                   = ',Kelvin(Celcius):0:0);
		readln;
		end;
end;

Procedure Ke_Celcius;
var pilihan:string;
	Fahrenheit,Reamur,Kelvin:real;
begin
	clrscr;
        writeln('');
        writeln('');
	writeln('            PROGRAM KONVERSI SUHU KE CELCIUS');
	writeln('');
	writeln('        1. FAHRENHEIT  [F]');
	writeln('        2. REAMUR      [R]');
	writeln('        3. KELVIN      [K]');
	writeln('');
	write('          Masukkan Pilihan Anda [F/R/K]: ');readln(pilihan);
        writeln('');
	if (pilihan='F') or (pilihan='f') then
		begin
			write('        Masukkan Fahrenheit : ');readln(Fahrenheit);
			writeln('        Fahrenheit = ',Fahrenheit:0:0);
			writeln('        Celcius    = 5/9 * ( ',Fahrenheit:0:0,' - 32)');
			writeln('                   = ',Celcius(Fahrenheit):0:0);
		readln;
		end;
		if (pilihan='R') or (pilihan='r') then
		begin
			write('        Masukkan Reamur : ');readln(Reamur);
			writeln('        Reamur    = ',Reamur:0:0);
			writeln('        Celcius   = 5/4 * ',Reamur:0:0);
			writeln('                  = ',Celcius1(Reamur):0:0);
		readln;
		end;
	if (pilihan='K') or (pilihan='k') then
		begin
			write('        Masukkan Kelvin : ');readln(Kelvin);
			writeln('        Kelvin    = ',Kelvin:0:0);
			writeln('        Celcius   = ',Kelvin:0:0,' - 273');
			writeln('                  = ',Celcius2(Kelvin):0:0);
		readln;
		end;

end;



var pilih:integer;
begin
			textbackground(1);
			textcolor(15);
			clrscr;
                        writeln('');
			writeln('            PROGRAM KONVERSI SUHU CELCIUS');
			writeln('');
			writeln('        1. DARI CELCIUS');
			writeln('        2. KE CELCIUS');
			writeln('        3. EXIT');
			writeln('');
			write('          Masukkan Pilihan Anda [1/2/3]: ');readln(pilih);
			Case pilih of
			1:Begin
				Dari_Celcius;
			  end;
			2:begin
				Ke_Celcius;
			  end;
			3:begin
                          exit;
			  end;
end;
end.
