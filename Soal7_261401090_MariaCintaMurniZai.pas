program Soal7;
uses crt;
var
    kode: char;
    jam: integer;
    totalTarif: longint;
begin
    clrscr;
    writeln('Pilih Kode Kendaraan:');
    writeln('  M : Mobil');
    writeln('  K : Motor');
    writeln('  B : Bus');
    write('Masukkan Kode (M/K/B): '); readln(kode);
    write('Lama Parkir (jam)    : '); readln(jam);
    writeln('------------------------------------------');
kode := upcase(kode); { Ubah huruf kecil jadi kapital }
    case kode of
'M': { Mobil }
    if jam > 10 then totalTarif := 30000
    else if jam > 1 then totalTarif := 5000 + (jam - 1) * 3000
    else totalTarif := 5000;
'K': { Motor }
    if jam > 10 then totalTarif := 10000
      else if jam > 1 then totalTarif := 2000 + (jam - 1) * 1000
    else totalTarif := 2000;
    'B': { Bus }
    if jam > 10 then totalTarif := 50000
      else if jam > 1 then totalTarif := 10000 + (jam - 1) * 5000
    else totalTarif := 10000;
    else
    begin
    writeln('Kode kendaraan tidak valid!');
    readln;
    exit;
    end;
    end;
writeln('Total Tarif Parkir : Rp', totalTarif);
writeln('==========================================');
readln;
end.