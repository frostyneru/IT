const
   n=4;
   m=4;
var
   a:array[1..n,1..m] of integer;
   i,j:integer;
begin
   randomize();
   for i:=1 to n do
      begin
         for j:=1 to m do 
            begin
               a[i,j]:=random(75);
               write(a[i,j],' ');
            end;
         writeln();
      end; 

   writeln();writeln();writeln(); 
   
   writeln('vector A : ');
   for i:=1 to n do
      for j:=1 to n do
         if ((i+j) mod 2 = 0) then
            writeln(a[i,j]);
end.   
