program lab3;
uses summa;
var x,s,e,t:real;
begin
x:=0.75;
writeln('----------------------------------------');
writeln('   x        s         e      точность  ');
writeln('----------------------------------------');
while x<1.6 do
begin 
  sum(x,s,e,t);
  writeln(' ', x,'    ',s:2:4,'     ',e:2:4,'    ',t:2:4 );
  writeln('----------------------------------------');
  x:=x+0.1;
  end;
 end.  
