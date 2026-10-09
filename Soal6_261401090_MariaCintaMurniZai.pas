program Soal6;
uses crt;
var
    tugas, uts, uas, hadir, nilaiAkhir: real;
    indeks: char;
begin
    clrscr;
    write('Nilai Tugas (0-100) : '); readln(tugas);
    write('Nilai UTS (0-100)   : '); readln(uts);
    write('Nilai UAS (0-100)   : '); readln(uas);
    write('Kehadiran (%)       : '); readln(hadir);
    writeln('------------------------------------------');
{ Hitung Nilai Akhir }
  nilaiAkhir := (0.30 * tugas) + (0.30 * uts) + (0.40 * uas);
{ Tentukan Indeks Huruf }
    if nilaiAkhir >= 85 then indeks := 'A'
    else if nilaiAkhir >= 75 then indeks := 'B'
    else if nilaiAkhir >= 60 then indeks := 'C'
    else if nilaiAkhir >= 50 then indeks := 'D'
    else indeks := 'E';
    writeln('Nilai Akhir : ', nilaiAkhir:0:2);
    writeln('Indeks Huruf: ', indeks);
{ Tentukan Status Kelulusan }
    if (nilaiAkhir >= 60) and (hadir >= 80) then
    writeln('Status      : LULUS')
    else
    writeln('Status      : TIDAK LULUS');
    writeln('==========================================');
    readln;
end.