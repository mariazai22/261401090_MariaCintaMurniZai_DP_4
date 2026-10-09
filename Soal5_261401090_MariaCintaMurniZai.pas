program Soal5;
uses crt;
var
    M, N, i, j, lulus, tidakLulus: integer;
    nilai, total, rata: real;
begin
    clrscr;
    write('Jumlah Mahasiswa (M): '); readln(M);
    write('Jumlah Tugas (N): '); readln(N);
    writeln;
    lulus := 0; tidakLulus := 0;
{ Nested loop untuk input nilai }
    for i := 1 to M do
    begin
    writeln('--- Mahasiswa ke-', i, ' ---');
    total := 0;
    for j := 1 to N do
    begin
    write('  Nilai Tugas ke-', j, ': '); readln(nilai);
    total := total + nilai;
    end;
    rata := total / N;
    write('  Rata-rata: ', rata:0:2, ' -> Status: ');
    if rata >= 65 then
    begin
    writeln('LULUS');
    lulus := lulus + 1;
    end
    else
    begin
    writeln('TIDAK LULUS');
    tidakLulus := tidakLulus + 1;
    end;
    writeln;
    end;
    writeln('==========================================');
    writeln('Total Mahasiswa LULUS       : ', lulus);
    writeln('Total Mahasiswa TIDAK LULUS : ', tidakLulus);
    writeln('==========================================');
    readln;
end.