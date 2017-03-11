const n=20;
 h=0.045;
var i,j:byte;
 x,y,s,slag,z:real;
 k:integer;
Begin
     x:=0.1;
     z:=1;
     while x<=1 do
          begin
          y:=(exp(x)-exp(-x))/2;
          s:=0;
          slag:=0;
          k:=1;
          for i:=1 to n do
               begin
                    for j:=1 to k do
                         z:=z*j;
                    slag:=exp(ln(x)*k)/z;
                    s:=s+slag;
                    k:=k+2;
                    //writeln(z);
                    z:=1;
               end;
          writeln('!',x:7:2,' !',y:7:3,' !',s:7:3,' !');
          x:=x+h;
          end;
     readln;
end. 
