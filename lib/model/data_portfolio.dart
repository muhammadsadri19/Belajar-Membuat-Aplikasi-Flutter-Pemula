class DataPortfolio {
  String nama;
  String tanggal;
  String deskripsi;
  // ignore: non_constant_identifier_names
  String imageasset;

  DataPortfolio(
      {required this.nama,
      required this.tanggal,
      required this.deskripsi,
      required this.imageasset});
}

var dataPortfolioList = [
  DataPortfolio(
      nama: 'Pemograman Software',
      tanggal: '2 Novermber 2023',
      deskripsi:
          'Pelajari langkah menjadi pengembang software dari tahapan analisis dan perencanaan sampai modifikasi perangkat lunak beserta dokumentasi.',
      imageasset: 'images/pf1.png'),
  DataPortfolio(
      nama: 'Dasar Manajemen Proyek',
      tanggal: '30 Oktober 2023',
      deskripsi:
          'Mempelajari dasar manajemen proyek, siklus dan metodologi manajemen proyek, hingga mengejar karir manajemen proyek.',
      imageasset: 'images/pf2.png'),
  DataPortfolio(
      nama: 'Dasar Structure Query Language (SQL)',
      tanggal: '29 Oktober 2023',
      deskripsi:
          'Pelajari berbagai konsep dasar structured query language (SQL) mulai dari pengenalan data dan basis data hingga berlatih basic query.',
      imageasset: 'images/pf3.png'),
  DataPortfolio(
      nama: 'Belajar AWS Cloud',
      tanggal: '4 Januari 2023',
      deskripsi:
          'Pelajari materi dasar Cloud dengan menggunakan AWS, dari konsep cloud computing, hingga cara membangun arsitektur yang baik.',
      imageasset: 'images/pf4.png'),
  DataPortfolio(
      nama: 'Dasar Pemograman Web',
      tanggal: '5 Februari 2023',
      deskripsi:
          'Pelajari komponen-komponen dasar HTML dan CSS yang merupakan fondasi utama untuk menjadi front-end web developer.',
      imageasset: 'images/pf5.png'),
  DataPortfolio(
      nama: 'Dasar DevOps',
      tanggal: '6 Maret 2023',
      deskripsi:
          'Pelajari kultur, praktik, dan tools pada DevOps yang memungkinkan proses pengembangan aplikasi menjadi lebih cepat, efisien, dan aman.',
      imageasset: 'images/pf6.png')
];
