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

### No3
Buatlah sebuah script bash yang dapat menghasilkan password secara acak sebanyak 12 karakter yang terdapat huruf besar, huruf kecil, dan angka. Password acak tersebut disimpan pada file berekstensi .txt dengan ketentuan pemberian nama sebagai berikut:
a.	Jika tidak ditemukan file password1.txt maka password acak tersebut disimpan pada file bernama password1.txt
b.	Jika file password1.txt sudah ada maka password acak baru akan disimpan pada file bernama password2.txt dan begitu seterusnya.
c.	Urutan nama file tidak boleh ada yang terlewatkan meski filenya dihapus.
d.	Password yang dihasilkan tidak boleh sama.

#### Penyelesaian:
