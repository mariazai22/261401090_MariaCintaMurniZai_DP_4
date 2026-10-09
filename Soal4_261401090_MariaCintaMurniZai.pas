program Soal4_KalkulatorSederhana;
uses crt;
var
    pilihan: integer;
    bil1, bil2: real;
    intBil1, intBil2: integer;
    ulang: char;
begin
{ Perulangan repeat-until untuk mengulang kalkulator }
repeat
    clrscr;
    writeln('       PROGRAM KALKULATOR SEDERHANA        ');
    writeln('==========================================');
    { 1. Tampilkan menu pilihan operasi }
    writeln('1. Penjumlahan (+)');
    writeln('2. Pengurangan (-)');
    writeln('3. Perkalian (*)');
    writeln('4. Pembagian Real (/)');
    writeln('5. DIV & MOD');
    writeln('==========================================');
    write('Pilih operasi (1-5): ');
    readln(pilihan);
    writeln;
{ 2. Minta dua operand dan proses menggunakan case-of }
    case pilihan of
1: { Penjumlahan }
        begin
        write('Masukkan angka pertama : '); readln(bil1);
        write('Masukkan angka kedua   : '); readln(bil2);
        writeln('------------------------------------------');
        writeln('Hasil Penjumlahan      : ', (bil1 + bil2):0:2);
        end;
2: { Pengurangan }
        begin
        write('Masukkan angka pertama : '); readln(bil1);
        write('Masukkan angka kedua   : '); readln(bil2);
        writeln('------------------------------------------');
        writeln('Hasil Pengurangan      : ', (bil1 - bil2):0:2);
        end;
3: { Perkalian }
        begin
        write('Masukkan angka pertama : '); readln(bil1);
        write('Masukkan angka kedua   : '); readln(bil2);
        writeln('------------------------------------------');
          writeln('Hasil Perkalian        : ', (bil1 * bil2):0:2);
        end;
4: { Pembagian Real }
        begin
        write('Masukkan angka pertama : '); readln(bil1);
        write('Masukkan angka kedua   : '); readln(bil2);
        writeln('------------------------------------------');
        if bil2 <> 0 then
            writeln('Hasil Pembagian Real   : ', (bil1 / bil2):0:2)
        else
            writeln('Error: Pembagian dengan nol tidak diperbolehkan!');
        end;
        5: { DIV & MOD (Membutuhkan tipe bilangan bulat / Integer) }
        begin
        write('Masukkan angka pertama (Integer): '); readln(intBil1);
        write('Masukkan angka kedua   (Integer): '); readln(intBil2);
        writeln('------------------------------------------');
        if intBil2 <> 0 then
        begin
            writeln('Hasil DIV (Pembagian Bulat) : ', (intBil1 div intBil2));
            writeln('Hasil MOD (Sisa Bagi)       : ', (intBil1 mod intBil2));
        end
        else
            writeln('Error: Pembagian dengan nol tidak diperbolehkan!');
        end;
    else
    writeln('Pilihan menu tidak valid!');
    end;
    writeln;
{ 3. Pertanyaan pengulangan program }
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);
{ Perulangan berjalan sampai pengguna menjawab 'T' atau 't' }
    until (ulang = 'T') or (ulang = 't');
    writeln;
    writeln('Terima kasih telah menggunakan kalkulator!');
    readln;
end.