const n=10;
var i:byte;
a:array[1..n] of real;
min,k_min:real;
begin
    for i:=1 to n do
        begin
            a[i]:=-50+random(75);
            if (k_min=0) or ((k_min<>0) and (a[i]<min)) then
                begin
                    k_min:=i;
                    min:=a[i];
                end;
        end;
    
    for i:=1 to n do
        writeln(a[i]:8:2);
    writeln('min=',min:8:2,' pos_min=',k_min);

    for i:=1 to n do
        if (a[i]<0) and (i<k_min) then
            a[i]:=0;
    for i:=1 to n do
        writeln(a[i]:8:2);
end.
