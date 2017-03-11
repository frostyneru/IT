const
     Stotal=16;
     Ntotal=10000;
var
     Sfix,x,y:real;
     Nfix:integer;
     i:integer;
begin
     for i:=1 to Ntotal do
          begin
               x:=random*4;
               y:=random*4;
               if ((x<=1) and (y>=1))
               or ((x>=1) and (x<=2) and (y<=3))
               or ((x>=2) and (x<=3) and (y<=2))
               or ((x>=3) and (y<=1))
               then
                    Nfix:=Nfix+1;
          end;
     Sfix:=Nfix/Ntotal*Stotal;   
     writeln(Sfix);
end.
