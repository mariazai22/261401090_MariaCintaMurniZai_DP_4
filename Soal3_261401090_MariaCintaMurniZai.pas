program Soal3;
uses crt;
var
    N, kat, i: integer;
begin
    clrscr;
    write('Masukkan nilai N: '); readln(N);
    writeln('Kategori (1: Ganjil, 2: Genap)');
    write('Pilihan (1/2): '); readln(kat);
    writeln;
    i := 1;
{ While loop dari 1 hingga N }
    while (i <= N) do
    begin
{ 1. Cek kelipatan 5 }
    if (i mod 5 = 0) then
    begin
    i := i + 1;
    continue;
    end;
{ 2. Cek kategori: lewati ganjil jika memilih genap, lewati genap jika memilih ganjil }
    if ((kat = 1) and (i mod 2 = 0)) or ((kat = 2) and (i mod 2 <> 0)) then
    begin
    i := i + 1;
    continue;
    end;
{ Tampilkan angka yang lolos penyaringan }
    write(i, ' ');
    i := i + 1;
    end;
    writeln;
    readln;
end.