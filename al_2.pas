const
  n=6;
  m=6;
var
  a:array[1..n,1..m] of real;
  i,j:byte;
  l:real;
begin
    for i:=1 to n do
      begin
        for j:=1 to m do 
          begin
            a[i,j]:=random()*50;
            write(a[i,j]:2:2,' ');
          end;
        writeln();
      end; 
  for i:=1 to n div 2 do
    for j:=1 to m do
      begin
        l:=a[i,j];
        a[i,j]:=a[n-i+1,j];
        a[n-i+1,j]:=l;
      end;
  writeln();writeln();writeln();   
  
  for i:=1 to n do
      begin
        for j:=1 to m do 
          write(a[i,j]:2:2,' ');
        writeln();
      end;       
end.
