const
     n=10;
var
     a:array[1..n] of real;
     max,m:real;
     i,j,k,l:byte;
begin
     for i:=1 to n do
          begin
               read(a[i]);
               if a[i]>max then
                    begin
                         max:=a[i];
                         j:=i;
                    end;
               if (a[i]=0) and (k=0) then
                    k:=i;
          end;
     if (k<>0) then
          begin
               a[j]:=0;
               a[k]:=max;
          end;
     for i:=1 to n do
          write(a[i],' ');
end.
//Easy solution
