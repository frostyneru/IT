const
	n=5;
	m=5;
var
	a:array[1..n,1..m] of integer;
	max:integer;
	i,j,im,jm,k:byte;
begin
	randomize();
	for i:=1 to n do
		begin
			for j:=1 to m do
				begin
					a[i,j]:=random(100);
					write(a[i,j],' ');
				end;
			writeln();
		end;
	while (m-k>3) and (n-k>3) do
		begin
			for i:=1 to n-k do
				for j:=1 to m-k do
					if (max<a[i,j]) or (im=0) or (jm=0) then
						begin
							im:=i;
							jm:=j;
							max:=a[i,j];
						end;
			writeln();
			writeln(max,' ',im,' ',jm);
			writeln();
			if (jm<m-k) then
				for i:=1 to n-k do
					for j:=jm to m-k-1 do
						a[i,j]:=a[i,j+1];
	
			if (im<n-k) then
				for i:=im to n-k-1 do
					for j:=1 to m-k-1 do
						a[i,j]:=a[i+1,j];

			k:=k+1;
			for i:=1 to n-k do
				begin
					for j:=1 to m-k do
						write(a[i,j],' ');
					writeln();
				end;
			max:=0;
			im:=0;
			jm:=0
		end;
end.
