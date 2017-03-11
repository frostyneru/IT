const
     n=10;
     k=10;
var
     a:array[1..k] of real;
     b:array[1..n,1..n] of real;
     i,j,l:byte;
begin
     for i:=1 to k do
          begin
               a[i]:=random(100);
               write(a[i],' ');
          end;
     writeln();
     writeln();
     for i:=1 to n do
          begin
               for j:=1 to n do
                    begin
                         b[i,j]:=random(100);
                         write(b[i,j],' ');
                    end;
               writeln();
          end;
     writeln();
     for i:=1 to n do
          for j:=1 to n do
               if ((i+j) mod 2 =0) then
                    for l:=1 to k do
                         if (b[i,j]=a[l]) then
                              b[i,j]:=0;
     for i:=1 to n do
          begin
               for j:=1 to n do
                    begin
                         write(b[i,j],' ');
                    end;
               writeln();
          end;                         
end.
