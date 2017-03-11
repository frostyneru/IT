const n=40;
 h=pi/20;
var i:byte;
 x,y,s,slag:real;
Begin
     x:=-pi/5;
     while x<=9*pi/5 do
          begin
          y:=-ln(abs(2*sin(x/2)));
          s:=0; 
          slag:=0;
          for i:=1 to n do
               begin
                    slag:=cos(i*x)/i;
                    s:=s+slag;
               end;
          writeln('!',x:7:2,' !',y:7:3,' !',s:7:3,' !');
          x:=x+h;
          end;
     readln;
