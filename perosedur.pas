procedure segitiga;
var
	i,j,k,l : integer;
	bintang : string;
begin

	i := 0;
	while i < 9 do
	begin
		
		i := i + 1;

		if(i = 9) then
		begin
			break;
		end;

		
		for k := 0 to (9-i) do 
			begin
				write(' ');
			end;

		for j := 1 to (i*2) do 
			begin
				write('*');
			end;

			writeln();


	end;
end;

begin

// manggil prosedurenya
segitiga;
end.