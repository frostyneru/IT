const
   n=4;
   m=4;
var
   a:array[1..n,1..m] of integer;
   i,j:integer;
   nch: integer;
   anch: pinteger;


procedure sort(L,R: integer);
   var
   i,j: integer;
   w,x:integer;
begin
   i:=L;
   j:=R;
   x:=anch[(L+R) div 2];
   REPEAT
      while anch[i]<x do
        i:=i+1;
      while x<anch[j] do
        j:=j-1;
      if i<=j then
         begin
           w:=anch[i];
           anch[i]:=anch[j];
           anch[j]:=w;
           i:=i+1;
           j:=j-1;
         end;
   UNTIL i>j;
   if L<j then
      sort(L,j);
   if i<R then
      sort(i,R);
   end;

procedure QuickSort;
   begin
      sort(0,nch-1);
   end;


begin
   randomize();
   for i:=1 to n do
      begin
         for j:=1 to m do 
            begin
               a[i,j]:=random(75);
               write(a[i,j],' ');
               if (a[i,j] mod 2 <> 0) then
                  nch:=nch+1;
            end;
         writeln();
      end; 

   writeln();writeln();writeln();  

   getmem(anch,nch*sizeof(integer));
   nch:=0;
   for i:=1 to n do
      for j:=1 to m do
         if (a[i,j] mod 2 <> 0) then
            begin
               anch[nch]:=a[i,j];
               nch:=nch+1;
            end;
   QuickSort();
   
   writeln('vector A : ');
   for i:=1 to n do
      for j:=1 to n do
         if (a[i,j] mod 2 = 0) then
            writeln(a[i,j]);
   if (nch mod 2 = 0) then
      for i:=0 to nch-1 do
         writeln(anch[i])
   else
      for i:=1 to nch-1 do
         writeln(anch[i])
end.   
