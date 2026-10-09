program Soal2_VerifikasiLogin;
uses crt;
const
    PASSWORD_RAHASIA = 'pascal123'; { 1. Kata sandi disimpan secara internal }
var
    inputPassword: string;
    percobaan: integer;
begin
    clrscr;
    writeln('         SISTEM VERIFIKASI LOGIN          ');
    writeln('==========================================');
percobaan := 0;
{ 2 & 3. Gunakan perulangan repeat-until }
    repeat
    percobaan := percobaan + 1;
    write('Masukkan kata sandi (Percobaan ke-', percobaan, '): ');
    readln(inputPassword);
{ Cek apakah kata sandi benar }
    if (inputPassword = PASSWORD_RAHASIA) then
    begin
    writeln;
    writeln('Login Berhasil! Selamat Datang'); { Pesan sukses }
    break; { Menghentikan loop sesuai instruksi }
    end
    else
    begin
    if (percobaan < 3) then
        writeln('Kata sandi salah! Silakan coba lagi. (Sisa percobaan: ', 3 - percobaan, ')')
    else
        writeln('Kata sandi salah!');
    end;
    writeln;
    until (percobaan >= 3);
{ 4. Jika pengguna gagal 3 kali dan tidak berhasil login }
    if (inputPassword <> PASSWORD_RAHASIA) and (percobaan >= 3) then
    begin
    writeln('Akses Ditolak! Akun Terkunci.');
    writeln('==========================================');
    end;
readln;
end.