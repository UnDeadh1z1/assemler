Unit summa;
 Interface 
  procedure sum(x:real;var s, e,t:real);
 Implementation
  procedure sum;
  var a,b,c,d:real;
    n:integer;
  begin
  a:=1.0;
  b:=x+x;
  s:=1.0;
  e:=exp(b);
  for n:=1 to  10 do
    begin
    a:=a*b/n;
    s:=s+a;
    end;
    c:=abs(s-e);
    t:=10.0;
    d:=1.0;
    while c<d do
      begin
        t:=d;
        d:=d*0.1;
      end;
    end;
  end.

 
