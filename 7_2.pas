const
     Stotal=12;
     Ntotal=10000;
var
     Sfix,x,y:real;
     Nfix:integer;
     i:integer;
begin
     for i:=1 to Ntotal do
          begin
               x:=random*4;
               y:=random*3;
               if ((x<=1) and (y<=1.5))
               or ((x<=1.5) and (x>=1) and (y>=1) and (y<=3)) 
               or ((x>=1.5) and (x<=2.5) and (y>=2) and (y<=3)) 
               or ((x>=2.5) and (x<=4)) then
                    nfix:=nfix+1;
          end;
     Sfix:=Nfix/Ntotal*Stotal;   
     writeln(Sfix);
end.
