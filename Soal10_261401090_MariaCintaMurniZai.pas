program Soal10_NamaHari;
uses crt;
var
noHari: integer;
begin
    clrscr;
  // Input
    write('Input: ');
    readln(noHari);
// Logika Pemilihan Nama Hari (menggunakan case-of)
    case noHari of
    1: writeln('Output: "Hari Senin"');
    2: writeln('Output: "Hari Selasa"');
    3: writeln('Output: "Hari Rabu"');
    4: writeln('Output: "Hari Kamis"');
    5: writeln('Output: "Hari Jumat"');
    6: writeln('Output: "Hari Sabtu"');
    7: writeln('Output: "Hari Minggu"');
    else
    writeln('Output: Angka tidak valid (Harus 1 - 7)');
    end;

    readln;
end.