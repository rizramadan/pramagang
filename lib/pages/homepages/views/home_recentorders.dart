import 'package:flutter/material.dart';
import 'package:pramagang/pages/homepages/models/item.dart';
import 'package:pramagang/pages/homepages/utils/work.dart';

class ServiceCards extends StatefulWidget {
  @override
  _MyCardsState createState() => _MyCardsState();
}

class _MyCardsState extends State<ServiceCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CardWork(
              Item(
                id: 9,
                name: 'PT TELKOM',
                category: 'BUMN',
                desc:
                    'Telkom merupakan salah satu BUMN yang 52,09% sahamnya saat ini dimiliki oleh Pemerintah Indonesia, dan 47,91% dimiliki oleh publik. '
                    'Telkom juga menjadi pemegang saham mayoritas di 13 anak perusahaan, seperti PT Telekomunikasi Seluler (Telkomsel), PT Telkom Akses, PT Multimedia Nusantara (TelkomMetra)[4], PT PINS Indonesia (PINS)',
                kriteria:
                    'Kriteria : Mahasiswa semester 6-7, menguasai network security dan cloud basic',
                waktu: 'Waktu magang selama 6 bulan',
                divisi: 'Divisi: DMM, Divisi long distance',
                rating: 9.8,
                directors: 'Ririek Adriansyah',
                releaseDate: '1965',
                releaseDateDesc:
                    'Jl. Japati No.1, Sadang Serang, Kecamatan Coblong, Kota Bandung, Jawa Barat 40133',
                runtime: '147 Lowongan',
                bannerUrl: 'assets/BUMN/telkom.jpg',
                imageUrl: 'assets/BUMN/telkom.jpg',
                trailerImg1: 'assets/BUMN/telkoma.jpg',
                trailerImg2: 'assets/BUMN/telkomb.jpg',
                trailerImg3: 'assets/BUMN/telkomc.jpg',
              ),
            ),
            Divider(),
            CardWork(
              Item(
                id: 8,
                name: 'PT PLN PERSERO',
                category: 'BUMN',
                desc:
                    'Perusahaan Listrik Negara (disingkat PLN) atau nama resminya adalah PT PLN (Persero) adalah sebuah BUMN yang mengurusi semua aspek kelistrikan yang ada di Indonesia'
                    'PLN merupakan satu-satunya perusahaan penjual jasa listrik di Indonesia. Dalam pelayanan pendistribusian kelistrikan PLN membagi-bagi fungsi unit induknya kedalam beberapa unit induk berdasarkan pada sistem tenaga listrik yaitu pembangkitan, transmisi, dan distribusi.',
                kriteria:
                    'Kriteria : Mahasiswa semester 6-7, menguasai ms.excel, ms word, dan mysql',
                waktu: 'Waktu magang selama 6 bulan',
                divisi:
                    'Divisi: Jl. Asia Afrika No.63, Braga, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40111',
                rating: 9.6,
                directors: 'Zulkifli Zaini ',
                releaseDate: '1945',
                releaseDateDesc: 'Jakarta(1945)',
                runtime: '116 Lowongan',
                bannerUrl: 'assets/BUMN/pln.jpg',
                imageUrl: 'assets/BUMN/pln.jpg',
                trailerImg1: 'assets/BUMN/plna.jpg',
                trailerImg2: 'assets/BUMN/plnb.jpg',
                trailerImg3: 'assets/BUMN/plnc.jpg',
              ),
            ),
            Divider(),
            CardWork(
              Item(
                id: 4,
                name: 'PT UNILEVER',
                category: 'Perusahaan Asing',
                desc:
                    'Unilever adalah produsen barang rumah tangga terbesar ketiga di dunia,'
                    'Unilever adalah salah satu perusahaan paling tua di dunia yang masih beroperasi, dan saat ini menjual produknya ke lebih dari 190 negara',
                kriteria:
                    'Kriteria : Mahasiswa semester 6-7, diutamakan dengan kepribadian yang jujur dan teliti, menguasai ms.excel dan ms.office',
                waktu: 'Waktu magang selama 6 bulan',
                divisi: 'Divisi: admin, distributor team',
                rating: 9.4,
                directors: 'Antonius Johannes',
                releaseDate: '1930',
                releaseDateDesc:
                    'Soekarno-Hatta St No.364, Kebon Lega, Bojongloa Kidul, Bandung City, West Java 40235',
                runtime: '79 Lowongan',
                bannerUrl: 'assets/asing/unilever.jpg',
                imageUrl: 'assets/asing/unilever.jpg',
                trailerImg1: 'assets/asing/unilevera.jpg',
                trailerImg2: 'assets/asing/unileverb.jpg',
                trailerImg3: 'assets/asing/unileverc.jpg',
              ),
            ),
            Divider(),
            CardWork(
              Item(
                id: 11,
                name: 'PT BCA',
                category: 'Perusahaan Swasta',
                desc:
                    'Pada tahun 1955 NV Perseroan Dagang Dan Industrie Semarang Knitting Factory berdiri sebagai cikal bakal Bank Central Asia (BCA).'
                    'BCA didirikan oleh Sudono Salim pada tanggal 21 Februari 1957 dan berkantor pusat di Jakarta.',
                kriteria:
                    'Kriteria : Mahasiswa semester 6-7, diutamakan yang berpenampilan menarik, menguasai ms.excel, mysql dan ms.word',
                waktu: 'Waktu magang selama 6 bulan',
                divisi: 'Divisi: Customer service, teller',
                rating: 9.7,
                directors: 'Jahja Setiaatmadja',
                releaseDate: '1957',
                releaseDateDesc:
                    'Jl. Asia Afrika No.122-124, Paledang, Kec. Lengkong, Kota Bandung, Jawa Barat 40261',
                runtime: '134 Lowongan',
                bannerUrl: 'assets/swasta/bca.jpg',
                imageUrl: 'assets/swasta/bca.jpg',
                trailerImg1: 'assets/swasta/bcaa.jpg',
                trailerImg2: 'assets/swasta/bcab.jpg',
                trailerImg3: 'assets/swasta/bcac.jpg',
              ),
            ),
            Divider(),
            CardWork(
              Item(
                id: 13,
                name: 'PT INDOCEMENT',
                category: 'Perusahaan Swasta',
                desc:
                    'Indocement berdiri sejak 16 Januari 1985. Perusahaan ini merupakan hasil penggabungan enam perusahaan semen yang memiliki delapan pabrik Pabrik pertama Indocement sudah beroperasi sejak 4 Agustus 1975.'
                    'Indocement memiliki 12 buah pabrik, sembilan diantaranya berada di Citeureup, Kabupaten Bogor, Jawa Barat. Dua berada di Cirebon, Jawa Barat, dan satu di Tarjun, Kotabaru, Kalimantan Selatan.',
                kriteria:
                    'Kriteria : Mahasiswa semester 6-7, diutamakan dengan kepribadian tekun dan ulet, menguasai ms.excel dan mysql',
                waktu: 'Waktu magang selama 6 bulan',
                divisi: 'Divisi: admin, assistant kepala unit',
                rating: 9.1,
                directors: 'Christian Kartawijaya',
                releaseDate: '1985',
                releaseDateDesc:
                    'Jl. Raya Batujajar No.30, Cimareme, Kec. Ngamprah, Kabupaten Bandung Barat, Jawa Barat 40552',
                runtime: '86 Lowongan',
                bannerUrl: 'assets/swasta/indocement.jpg',
                imageUrl: 'assets/swasta/indocement.jpg',
                trailerImg1: 'assets/swasta/indocementa.JPG',
                trailerImg2: 'assets/swasta/indocementb.jpg',
                trailerImg3: 'assets/swasta/indocementc.jpg',
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
