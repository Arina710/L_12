var
   filetext: text;
   a:string;
   i:integer;
begin
assign(filetext,'C:\Users\PC\Desktop\text1.txt');
rewrite(filetext);
for i:=1 to 10 do
    writeln(filetext, i);
close(filetext);
assign(filetext,'C:\Users\PC\Desktop\text1.txt');
reset(filetext);
for i:=1 to 10 do begin
    readln(filetext, a);
    writeln(a);
end;
close(filetext);
end.