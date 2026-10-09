program Soal1_HitungBelanja;
uses crt;
var
    N, i: integer;
    harga, totalSebelumDiskon, persenDiskon, besarDiskon, totalBayar: real;
begin
    clrscr;
    writeln('==========================================');
    writeln('        SYSTEM KASIR TOKO BUKU           ');
    writeln('==========================================');
{ 1. Minta pengguna memasukkan jumlah barang (N) }
    write('Masukkan jumlah barang yang dibeli (N): ');
    readln(N);
    writeln;
    totalSebelumDiskon := 0;  
{ 2. Perulangan for-to-do untuk menginput harga barang }
    for i := 1 to N do
    begin
    write('Masukkan harga barang ke-', i, ': Rp');
    readln(harga);
    totalSebelumDiskon := totalSebelumDiskon + harga;
    end;
{ 3. Hitung diskon menggunakan struktur kondisi if-else }
    if (totalSebelumDiskon < 100000) then
    persenDiskon := 0.0
    else if (totalSebelumDiskon >= 100000) and (totalSebelumDiskon < 500000) then
    persenDiskon := 0.10
    else
    persenDiskon := 0.20;
    besarDiskon := totalSebelumDiskon * persenDiskon;
    totalBayar := totalSebelumDiskon - besarDiskon;
{ 4. Tampilkan Rincian Belanja }
    writeln;
    writeln('==========================================');
    writeln('             RINCIAN BELANJA              ');
    writeln('==========================================');
    writeln('Total Sebelum Diskon : Rp', totalSebelumDiskon:0:2);
    writeln('Diskon (', (persenDiskon * 100):0:0, '%)       : Rp', besarDiskon:0:2);
    writeln('------------------------------------------');
    writeln('Total Bayar Akhir    : Rp', totalBayar:0:2);
    writeln('==========================================');
    readln;
end.