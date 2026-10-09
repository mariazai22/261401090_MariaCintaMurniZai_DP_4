program Soal9_JumlahHariBulan;
uses crt;
var
    tahun, bulan, jumlahHari: integer;
    isKabisat: boolean;
begin
clrscr;
  // Input
    write('Masukkan Tahun: ');
    readln(tahun);
    write('Masukkan Nomor Bulan (1-12): ');
    readln(bulan);
  // 1. Cek Tahun Kabisat
    if (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then
    isKabisat := true
    else
    isKabisat := false;
  // 2. Tentukan Jumlah Hari
    case bulan of
    1, 3, 5, 7, 8, 10, 12: jumlahHari := 31;
    4, 6, 9, 11: jumlahHari := 30;
    2: begin
    if isKabisat then
    jumlahHari := 29
    else
    jumlahHari := 28;
    end;
    else
    writeln('Nomor bulan tidak valid! (Harus 1-12)');
    halt;
    end;
  // Output
    writeln;
    if isKabisat then
    writeln('Tahun ', tahun, ' adalah Tahun Kabisat.')
    else
    writeln('Tahun ', tahun, ' BUKAN Tahun Kabisat.');
    writeln('Jumlah hari pada bulan ke-', bulan, ' adalah: ', jumlahHari, ' hari.');
    
    readln;
end.