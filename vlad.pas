const n=3; 
const l=80;
var 
s: array [1..n,1..l] of char;
k: array [1..n] of byte;
min:byte;
i,j:byte;
begin
	min:=0; i:=1; j:=0;
	assign(input,'file.txt');	//Подключаем файл
	reset(input);
	for i:=1 to n do		//Считываем слова
		begin
			for j:=1 to l do
				begin
					read(s[i,j]);
					if (ord(s[i,j])=48) or (ord(s[i,j])=50) or (ord(s[i,j])=52) or 
					(ord(s[i,j])=54) or (ord(s[i,j])=56) then	//Коды четных цифр в ASCII
						k[i]:=k[i]+1;
					if (s[i,j]=';') then break;
				end;
			readln();
			if (min=0) or (k[i]<k[min]) then	//Находим строку с наименьшим количеством четных цифр
				min:=i;
		end;
	for i:=1 to n do	//Выводим строки кроме той в которой min четных цифр
		if (i<>min) then
			begin
				for j:=1 to l do
					begin
						if (ord(s[i,j])=59) then	//Не выводим ;
							break;
						write(s[i,j]);
					end;
				writeln();
			end;
		close(input);			//Отключаем файл
end.
