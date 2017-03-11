const
     n=10;
var
     a:array[1..n] of integer;
     b:array[1..n] of integer;
     i,j,k,z:byte;
     max,l:integer;
begin
     for i:=1 to n do
          begin
               readln(a[i]);
               if max<a[i] then
                    begin
                         max:=a[i];
                         k:=i;
                    end;
          end;
     for i:=1 to n do
          begin
               if a[i]<>0 then
                    begin
                         j:=j+1;
                         b[j]:=a[i];
                         if a[i]=max then
                              k:=j;
                    end;
          end;
     writeln(j);
     l:=b[j];
     writeln(k);
     b[j]:=max;
     b[k]:=l;
     for i:=1 to n do
          write(b[i],' ');
end.

//Solution
