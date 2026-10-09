program Soal8_HitungGaji;
uses crt;

var
  golongan: char;
  totalJamKerja, jamLembur: integer;
  gajiPokok, lembur, bonus, totalGaji: longint;

begin
  clrscr;
  
  // Input
  write('Masukkan Golongan (A/B/C): ');
  readln(golongan);
  golongan := UpCase(golongan); // Ubah ke huruf besar
  
  write('Masukkan Total Jam Kerja: ');
  readln(totalJamKerja);
  
  // Inisialisasi
  gajiPokok := 0;
  lembur := 0;
  bonus := 0;
  
  // 1. Tentukan Gaji Pokok berdasarkan Golongan
  case golongan of
    'A': gajiPokok := 1500000;
    'B': gajiPokok := 2000000;
    'C': gajiPokok := 2500000;
  else
    writeln('Golongan tidak valid!');
    halt;
  end;
  
  // 2. Tentukan Uang Lembur (Jam Standar = 40)
  if totalJamKerja > 40 then
  begin
    jamLembur := totalJamKerja - 40;
    lembur := jamLembur * 20000;
  end;
  
  // 3. Tentukan Bonus Khusus Golongan C (Jam Kerja > 50)
  if (golongan = 'C') and (totalJamKerja > 50) then
  begin
    bonus := 100000;
  end;
  
  // 4. Total Gaji
  totalGaji := gajiPokok + lembur + bonus;
  
  // Output Rincian
  writeln;
  writeln('--- RINCIAN GAJI KARYAWAN ---');
  writeln('Gaji Pokok : Rp ', gajiPokok);
  writeln('Lembur     : Rp ', lembur);
  writeln('Bonus      : Rp ', bonus);
  writeln('-----------------------------');
  writeln('Total Gaji : Rp ', totalGaji);
  
  readln;
end.