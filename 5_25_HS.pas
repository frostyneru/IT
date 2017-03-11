const
     n=10;
var
     a:array[1..n] of integer;
     b:array[1..n] of integer;
     i,j,k,z:byte;
     min,l:integer;
begin
     for i:=1 to n do
          begin
               readln(a[i]);
               if min>a[i] then
                    begin
                         min:=a[i];
                         k:=i;
                    end;
          end;
     for i:=1 to n do
          begin
               if a[i]<0 then
                    begin
                         j:=j+1;
                         b[j]:=a[i];
                         if a[i]=min then
                              k:=i;
                    end;
          end;
     l:=b[j];
     b[j]:=min;
     b[k]:=l;
     j:=j+1;
     for i:=1 to n do
          begin
               if (a[i]>0) then
                    begin
                         b[j]:=a[i];
                         if (j<n) then
                              j:=j+1;
                    end;
          end;
     for i:=1 to n do
          write(b[i],' ');
end.
