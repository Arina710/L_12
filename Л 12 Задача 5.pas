var A: array[1..100] of integer;
    f1, f2: text;
    i, mi, ma, l: integer;
begin
 assign(f1, 'C:\Users\PC\Desktop\text5.txt');
 reset(f1);
 i := 0;
 while not eof(f1) do begin
    i := i + 1;
    readln(f1,l);
    a[i]:=l;
    end; 
 close(f1);    
mi:=a[1];
for n:integer:=1 to i do
  if mi>a[n] then mi:=a[n];
ma:=a[1];
for n:integer:=1 to i do
  if ma<a[n] then ma:=a[n];
assign(f2, 'C:\Users\PC\Desktop\text5.2.txt');
rewrite(f2);
writeln(f2, 'Максимальный элемент = ', ma); 
writeln(f2, 'Минимальный элемент = ', mi); 
close(f2);
end.