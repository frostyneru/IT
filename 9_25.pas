const
     n=1;
     
var
     a:array[1..n] of string;
     i,min1,k1,j:byte;
begin
     for i:=1 to n do
          readln(a[i]);
     min1:=Length(a[1]);
     k1:=1;
     if n>=2 then
          for i:=2 to n do
               begin
                    if (min1>Length(a[i])) then
                         begin
                              min1:=Length(a[i]);
                              k1:=i;;
                         end
               end;
     i:=1;          
     while (pos('0',a[k1])<>0) 
          or (pos('2',a[k1])<>0) 
          or (pos('4',a[k1])<>0) 
          or (pos('6',a[k1])<>0) 
          or (pos('8',a[k1])<>0) do
               begin
                    if (a[k1][i]='0')
                    or (a[k1][i]='2')
                    or (a[k1][i]='4')
                    or (a[k1][i]='6')
                    or (a[k1][i]='8') then
                    Delete(a[k1],i,1);
                    i+=1;
                    j+=1;
               end;
     writeln(j);        
end.
//123456789012345678901234567890
