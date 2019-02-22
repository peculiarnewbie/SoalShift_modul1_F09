# SoalShift_modul1_F09

### No1
Anda diminta tolong oleh teman anda untuk mengembalikan filenya yang telah dienkripsi oleh seseorang menggunakan bash script, file yang dimaksud adalah nature.zip. Karena terlalu mudah kalian memberikan syarat akan membuka seluruh file tersebut jika pukul 14:14 pada tanggal 14 Februari atau hari tersebut adalah hari jumat pada bulan Februari.
Hint: Base64, Hexdump

#### Penyelasian:
sebelum melakukan apapun, file di unzip terlebih dahulu dengan perintah unzip, semua file akan berada di folder nature. 
lalu buat variable untuk looping file2 dalam folder nature dan juga file untuk counting. dalam loop tiap file akan dilakukan decode dengan command base64 lalu di pindah ke file baru dengan perintah xxd -r dan juga lakukan inkrementasi untuk nama file masing2 file.

crontab dibuatkan dua untuk masing2 kondisi (line 1 dan 2)

### No2
Anda merupakan pegawai magang pada sebuah perusahaan retail, dan anda diminta untuk memberikan laporan berdasarkan file WA_Sales_Products_2012-14.csv. Laporan yang diminta berupa:
a.	Tentukan negara dengan penjualan(quantity) terbanyak pada tahun 2012.
b.	Tentukan tiga product line yang memberikan penjualan(quantity) terbanyak pada soal poin a.
c.	Tentukan tiga product yang memberikan penjualan(quantity) terbanyak berdasarkan tiga product line yang didapatkan pada soal poin b.

#### Penyelesaian:
Semua penyelesaian terdapat pada soal no2a.sh

untuk soal a diselesaikan dengan awk. untuk tiap baris Kita membaca kolom ke 7 yang sama dengan 2012 lalu menjumlahkan quantity ke dalam array yang ber-indexkan nama2 negara. bagian END akan print total quantity dan nama negaranya. Lalu kita sort descending dan keluarkan nama negara teratas saja. Hasil outputpun dimasukkan kedalam suatu variabel

untuk soal b kita akan menggunakan data dari variabel soal a. untuk tiap baris kita akan mengecek tahun yang sesuai dengan soal dan nama negara yang sesuai dengan variabel tersebut. Jika benar baru menjumlahkan quantity ke dalam array yang ber-indexkan product line. bagian END lagi akan print total quantity dan nama product line, lalu print nama 3 teratas. Hasil disini juga dimasukkan ke variabel

untuk soal c kita menggunakan variabel soal b dan mengecek hal yang sama ditambah dengan 3 product line yang diinginkan. Karena kita akan print 3 product masing-masing product line, script bagian ini dijalankan 3 kali dengan END yang berbeda. yang pertama akan print quantity dan nama product untuk product line a, yang kedua akan print quantity dan nama product untuk product line b dan yang ketiga akan print quantity dan nama product untuk product line c

### No 3
Buatlah sebuah script bash yang dapat menghasilkan password secara acak sebanyak 12 karakter yang terdapat huruf besar, huruf kecil, dan angka. Password acak tersebut disimpan pada file berekstensi .txt dengan ketentuan pemberian nama sebagai berikut:
a.	Jika tidak ditemukan file password1.txt maka password acak tersebut disimpan pada file bernama password1.txt
b.	Jika file password1.txt sudah ada maka password acak baru akan disimpan pada file bernama password2.txt dan begitu seterusnya.
c.	Urutan nama file tidak boleh ada yang terlewatkan meski filenya dihapus.
d.	Password yang dihasilkan tidak boleh sama.

#### Penyelesaian:

Pertama kita mempersiapkan variabel yang akan dijadikan nama file. cukup dengan integer yang akan diinkremen, lalu akan melakukan loop while yang akan berhenti jika belum ada file yang bernama variabel tersebut.
Langkah kedua membuat password dengan menggunakan perintah /dev/urandom yang mengambil parameter semua huruf dan angka untuk 9 karakter pertama, lalu command selanjutnya untuk huruf kecil, angka dan huruf besar. semua itu digabung ke variable dan di echo kedalam file yang namanya sudah ditentukan sebelumnya

### No 4
Lakukan backup file syslog setiap jam dengan format nama file “jam:menit tanggal-bulan-tahun”. Isi dari file backup terenkripsi dengan konversi huruf (string manipulation) yang disesuaikan dengan jam dilakukannya backup misalkan sebagai berikut:
a.	Huruf b adalah alfabet kedua, sedangkan saat ini waktu menunjukkan pukul 12, sehingga huruf b diganti dengan huruf alfabet yang memiliki urutan ke 12+2 = 14.
b.	Hasilnya huruf b menjadi huruf n karena huruf n adalah huruf ke empat belas, dan seterusnya. 
c.	setelah huruf z akan kembali ke huruf a
d.	Backup file syslog setiap jam.
e.	dan buatkan juga bash script untuk dekripsinya.

#### Penyelesaian:
untuk encrypt, pertama kita mengambil data waktu saat script dijalankan menggunakan date +"%[]" lalu ubah jamnya menjadi integer. Lalu kita kalkulasikan batas bawah (huruf a jika ditambah menjadi apa) dan atas (huruf z saat ditambah menjadi huruf apa) untuk masing2 karakter kecil dan besar yang akan dijumlahkan dengan integer jam tadi. masing2 variable karakter saat ini masih berisi integer, maka diubah menjadi karakter dengan printf didalam awk. 
Lalu untuk data itu sendiri akan di masukkan dengan shift string menggunakan command tr dan dimasukkan ke dalam file sesuai format dan data waktu yang sudah kita ambil sebelumnya
untuk decrypt hampir sama namun data waktu yang kita ambil berasal dari nama file dan penggeseran karakter dibalik
crontab berjalan tiap jam (liine 3)

### No 5
Buatlah sebuah script bash untuk menyimpan record dalam syslog yang memenuhi kriteria berikut:
a.	Tidak mengandung string “sudo”, tetapi mengandung string “cron”, serta buatlah pencarian stringnya tidak bersifat case sensitive, sehingga huruf kapital atau tidak, tidak menjadi masalah.
b.	Jumlah field (number of field) pada baris tersebut berjumlah kurang dari 13.
c.	Masukkan record tadi ke dalam file logs yang berada pada direktori /home/[user]/modul1.
d.	Jalankan script tadi setiap 6 menit dari menit ke 2 hingga 30, contoh 13:02, 13:08, 13:14, dst.

#### Penyelesaian:
diselesaikan dengan awk dimana kita pertama membuat semua huruf menjadi huruf kecil dengan tolower karena kita tidak ingin pencarian case sensitive. lalu kita ambil baris yang mengandung cron dan tidak mengandung sudo dengan /cron/,!/sudo/ karena field yang diminta harus kurang dari 13, kita gunakan syarat print untuk NF<13
crontab berjalan setiap 6 menit antara menit 2 dan 30 (line 4)
