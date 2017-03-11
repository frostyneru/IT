const
     n=10;
     
var
     a:array[1..n] of string;
     b:array[1..8] of boolean;
     g:array[1..8] of string;
     i,min1,min2,k1,k2:byte;
     l,m:byte;
begin
     g[1]:='p';
     g[2]:='f';
     g[3]:='t';
     g[4]:='th';
     g[5]:='s';
     g[6]:='sh';
     g[7]:='ch';
     g[8]:='k';
     for i:=1 to n do
          readln(a[i]);
     min1:=Length(a[1]);
     min2:=Length(a[2]);;
     k1:=1;
     k2:=2;
     if min1>min2 then
          begin
               min1:=Length(a[2]);
               min2:=Length(a[1]);;
               k1:=2;
               k2:=1;   
          end;
     if n>=3 then
          for i:=3 to n do
               begin
                    if (min1>Length(a[i])) then
                         begin
                              l:=min1;
                              m:=k1;
                              min1:=Length(a[i]);
                              k1:=i;
                              min2:=l;
                              k2:=m;
                         end
                    else
                         if (min2>Length(a[i])) then
                              begin
                                   min2:=Length(a[i]);
                                   k2:=i;
                              end;
               end;
          writeln(a[k1]);
          writeln(a[k2]);
          for i:=1 to 8 do
               if (g[i] in a[k1]=true) or (g[i] in a[k2]=true) then
                    b[i]:=true;
          for i:=1 to 8 do
               if b[i]=true then
                    write(g[i],' ');
end.

//significant
//round
//across
//against
//although
//from
//if 
//nor
//notwithstanding
//cosmetologist
