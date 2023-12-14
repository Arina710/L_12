var
  F_in,F_out: Text;
  S,a: String;
begin
 Write('S: ');
 Readln(S);
 Assign(F_in,'C:\Users\PC\Desktop\text3.txt');
 Reset(F_in);
 Assign(F_out,'C:\Users\PC\Desktop\text3.2.txt');
 Rewrite(F_out);
 While not eof(F_in) do
  begin
   Readln(F_in,a);
   Writeln(F_out,a);
  end;
  Rewrite(F_out);
 Writeln(F_out,S);
 Close(F_in);
 Close(F_out);
 Erase(F_in);
 Rename(F_out,'C:\Users\PC\Desktop\text3.txt');
end.