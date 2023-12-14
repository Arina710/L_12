var
  F1,F2: Text;
  a: string;
  K,i:integer;
begin
 Write('K: ');
 Readln(K);
 Assign(F1,'C:\Users\PC\Desktop\text4.txt');
 Assign(F2,'C:\Users\PC\Desktop\text4.2.txt');
 Rewrite(F2);
 Reset(F1);
 i:=0;
 While not eof(F1) do
  begin
   inc(i);
   if i=K then Writeln(F2,'');
   Readln(F1,a);
   Writeln(F2,a);
  end;
 Close(F1);
 Close(F2);
 Erase(F1);
 Rename(F2,'C:\Users\PC\Desktop\text4.txt');
end.