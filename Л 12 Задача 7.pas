var
  f1,f2: text;
  n, i, m, a, s:integer;
  d: string;
begin
  writeln('Введите число');
  readln(n);
  assign(f1,'C:\Users\PC\Desktop\text7.txt');
  assign(f2,'C:\Users\PC\Desktop\text7.2.txt');
  Rewrite(f1);
  d:='n';
  write(f1, n);
  s:=0;
  for i:=1 to n do
  begin
     a:=0;
     for m:=1 to n do 
     begin
       if i mod m = 0 then
         a:=a+1;
     end;
      if a=5 then s:=s+i;
  end;
  rewrite(f2);
  writeln(f2, s);
  close(f1);
  close(f2);
end.