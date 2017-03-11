const
     n=10;
var
     a:array[1..n,1..n] of real;
     b:array[1..n] of real;
     i,j,l,k:byte;
begin
     for i:=1 to n do
          begin
               b[i]:=-50+random(150);
               write(b[i],' ');
          end;
     writeln();
     writeln();
     writeln();
     for i:=1 to n do
          begin
               for j:=1 to n do
                    begin
                         a[i,j]:=-75+random(100);
                         write(a[i,j],'          ');
                    end;
               writeln();
          end;
     writeln();
     writeln();
     for i:=1 to n do
          begin
               for j:=1 to n do
                    if (a[j,i]<0) then k:=k+1;
               if k>=10 then
                    for j:=1 to n do
                         a[j,i]:=b[j]
               else
                    k:=0;
          end;
     for i:=1 to n do
          begin
               for j:=1 to n do
                    begin
                         write(a[i,j],' ');
                    end;
               writeln();
          end;            
end.
