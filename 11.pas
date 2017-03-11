procedure m(i:integer);
     var
          a:array of real;
          min,max:real;
     begin
          min:=0;
          max:=0;
          SetLength(a,i);
          for var j:=0 to i-1 do
               begin
                    a[j]:=random()*1000;
                    if (j=1) then
                         min:=a[j]
                    else
                         if (min>a[j]) then
                              min:=a[j];
                    if max<a[j] then
                         max:=a[j];
                    write(a[j]:7:3,' ');
               end;
          write('min = ',min:7:3,' max = ',max:7:3);     
          writeln();
          for var j:=0 to i-1 do
               begin
                    a[j]:=exp(ln(a[j])*2);
                    if (j=1) then
                         min:=a[j]
                    else
                         if (min>a[j]) then
                              min:=a[j];
                    if max<a[j] then
                         max:=a[j];
                    write(a[j]:7:3,' ');
               end;
          write('min = ',min:7:3,' max = ',max:7:3);          
          writeln();  
          writeln();
          writeln();
     end; 
begin
     m(3);
     m(6);
     m(8);
end.
