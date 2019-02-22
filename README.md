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
