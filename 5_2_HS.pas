const
     n=10;
var
     a:array[1..n] of real;
     max,m:real;
     i,j,k,l,h:byte;
begin
     for i:=1 to n do
          begin
               read(a[i]);
               if a[i]>max then
                    begin
                         max:=a[i];
                         j:=i;
                    end;
               if a[i]=0 then k:=k+1;
          end;
     
     if (n-j>k) then
          begin
               for i:=1 to n do
                    begin
                         l:=j+1;
                         if a[i]=0 then
                              begin
                                   while a[l]=0 do
                                        l:=l+1;
                                   m:=a[l];
                                   a[l]:=a[i];
                                   a[i]:=m;
                              end;
                    end;
          end;
     if (n-j<k) then
          begin
               for i:=1 to j do
                    if a[i]=0 then 
                         begin
                              k:=k+1;
                              if (h=0) then
                                   h:=i;
                         end;       
               while k<>0 do
                    begin
                         l:=0; 
                         for i:=h+1 to j do
                              if (l=0) and (a[i]<>0) then
                                   l:=i;
                         if (h<>0) then
                              begin
                                   a[h]:=a[l];
                                   a[l]:=0;
                              end;
                         writeln(h);
                         writeln(l);
                         h:=0;
                         for i:=1 to n do
                              if (a[i]=max) then
                                   j:=i;
                         for i:=1 to j do
                              if (a[i]=0) then 
                                   begin
                                        k:=k+1;
                                        if (h=0) then  //Первый нулевой элемент
                                             h:=i;
                                   end;         
                         for i:=1 to n do
                              write(a[i],' ');
                         writeln();
                         k:=0;         
                    end;
          end;
     for i:=1 to n do
          write(a[i],' ');
end.
//Hard solution
