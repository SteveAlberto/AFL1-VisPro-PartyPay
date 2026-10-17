# Architectural Breakdown - PartyPay

Aplikasi PartyPay dirancang dengan menerapkan prinsip Clean Architecture sederhana yang disesuaikan untuk standar Flutter. Tujuan utamanya adalah memastikan pemisahan tugas yang jelas agar kode mudah dipelihara, dibaca, dan tidak ada file yang membengkak (melebihi 200 baris kode).

Struktur Direktori Utama

Seluruh logika aplikasi ditempatkan di dalam folder lib/, yang dipecah menjadi beberapa direktori sesuai dengan fungsinya masing-masing:

main.dart: Berfungsi murni sebagai entry point aplikasi. File ini dibuat sangat ringan karena hanya menangani inisialisasi awal (runApp) dan konfigurasi ThemeData secara global, tanpa memuat logika bisnis apa pun.

screens/: Direktori ini khusus menampung seluruh UI Layer. File seperti home_screen.dart, detail_screen.dart, dan form_screen.dart diletakkan di sini. Setiap screen bertanggung jawab penuh atas tampilan visual dan interaksi pengguna (navigasi, klik, scroll).

models/: Direktori ini menampung definisi struktur data (seperti kelas Party atau Member). Pemisahan direktori ini memastikan UI tidak campur aduk dengan cetak biru data aplikasi.

core/ atau harness.dart: Menampung data dummy statis dan komponen/logika yang dibagikan. Pada tahap ini, harness mensimulasikan sumber data agar pengujian antarmuka bisa berjalan mandiri.

Alasan Pemisahan Kode

Modularitas UI: Dengan memisahkan setiap layar ke file mandiri dalam direktori screens/, setiap perbaikan (seperti penanganan overflow menggunakan NestedScrollView) dapat diisolasi pada satu file tanpa merusak komponen lain.

Manajemen State Terpusat: Karena saat ini masih mengandalkan data statis dan setState(), memisahkan models dari screens membuat aliran data ke dalam widget tree menjadi jauh lebih mudah dilacak.