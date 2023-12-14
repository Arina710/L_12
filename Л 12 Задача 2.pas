var 
  f: text;
  N,K,i: integer;
begin
  writeln('Введите N и K');
  readln(N);
  readln(K);
  assign(f,'C:\Users\PC\Desktop\text2.txt');
  rewrite(f);
  for i:=1 to N do
      writeln(f,K*'*');
  close(f);
end.