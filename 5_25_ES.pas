const
     n=10;
var
     a:array[1..n] of real;
     b:real;
     i,k:byte;
     min:real;
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
     writeln('k=',k);     
     for i:=2 to n-1 do
          if (a[i-1]<0) and (a[i+1]<0) and (a[i]>0) then
               begin
                    b:=a[i];
                    a[i]:=min;
                    a[k]:=b;
                    writeln(true,i);
               end;
     for i:=1 to n do
          write(a[i],' ');
end.
