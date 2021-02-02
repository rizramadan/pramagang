import 'package:flutter/material.dart';
import 'package:pramagang/pages/homepages/models/item.dart';
import 'package:pramagang/pages/homepages/views/show/itemlist.dart';
import 'package:pramagang/tampilan/warna.dart';

class ShowScreen extends StatelessWidget {
  List<Item> itemList;

  @override
  Widget build(BuildContext context) {
    itemList = listPerusahaan();

    return Scaffold(
      appBar: AppBar(
        title: Text("Perusahaan"),
        backgroundColor: ColorPalette.primaryDarkColor,
      ),
      body: _gridView(),
    );
  }

  Widget _gridView() {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(4.0),
      childAspectRatio: 8.0 / 9.0,
      children: itemList
          .map(
            (Item) => ItemList(item: Item),
          )
          .toList(),
    );
  }

  List<Item> listPerusahaan() {
    return [
      Item(
        id: 0,
        name: 'PT DANONE',
        category: 'Perusahaan Asing',
        desc:
            'Group Danone adalah perusahaan multinternasional yang memproduksi berbagai jenis makanan dan minuman.'
            'Danone memegang beberapa merek terkenal air minum seperti Volvic, Evian, Aqua, dan Badoit.',
        kriteria:
            'Kriteria : Mahasiswa semester 6-7, diutamakan dengan kepribadian yang teliti dan ulet, menguasai ms.excel',
        waktu: 'Waktu magang selama 6 bulan',
        divisi: 'Divisi: admin, quality control team',
        rating: 8.7,
        directors: 'Franck Ribout',
        releaseDate: '1915',
        releaseDateDesc:
            'Cyber 2 Tower Lt.12, Jl. H. R. Rasuna Said No.13, RT.7/RW.2, Kuningan, East Kuningan, South Jakarta City, Jakarta 12950',
        runtime: '35 Lowongan',
        bannerUrl: 'assets/asing/danone.jpg',
        imageUrl: 'assets/asing/danone.jpg',
        trailerImg1: 'assets/asing/danonea.jpg',
        trailerImg2: 'assets/asing/danoneb.jpg',
        trailerImg3: 'assets/asing/danonec.jpg',
      ),
      Item(
        id: 1,
        name: 'PT HONDA',
        category: 'Perusahaan Asing',
        desc:
            'Honda merupakan produsen sepeda motor terbesar di dunia sejak 1959'
            'dan juga produsen mesin pembakaran dalam terbesar dengan produksi lebih dari 14 juta unit tiap tahun.',
        kriteria:
            'Kriteria : Mahasiswa semester 6-7, diutamakan yang mengerti bagian mesin , menguasai mesin dalam motor',
        waktu: 'Waktu magang selama 5 bulan',
        divisi: 'Divisi:customer service, office team',
        rating: 8.9,
        directors: 'Soichiro Honda',
        releaseDate: '1948',
        releaseDateDesc:
            'Jl. Cicendo No.18, Babakan Ciamis, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40171',
        runtime: '39 Lowongan',
        bannerUrl: 'assets/asing/honda.jpg',
        imageUrl: 'assets/asing/honda.jpg',
        trailerImg1: 'assets/asing/hondaa.jpg',
        trailerImg2: 'assets/asing/hondab.jpg',
        trailerImg3: 'assets/asing/hondac.jpg',
      ),
      Item(
        id: 2,
        name: 'PT SAMSUNG',
        category: 'Perusahaan Asing',
        desc:
            'Samsung Group adalah sebuah konglomerat multinasional yang berkantor pusat di Samsung Town, Seoul, Korea Selatan.'
            'perusahaan ini berekspansi ke sejumlah sektor, seperti pemrosesan makanan, tekstil, asuransi, sekuritas, dan ritel.',
        kriteria:
            'Kriteria : Mahasiswa semester 6-7, diutamakan dengan kepribadian yang teliti, menguasai pemrograman mobile',
        waktu: 'Waktu magang selama 6 bulan',
        divisi: 'Divisi: customer services, office team',
        rating: 9.2,
        directors: 'Lee Byung Chul',
        releaseDate: '1938',
        releaseDateDesc:
            'Jl. Asia Afrika No.182, Paledang, Kec. Lengkong, Kota Bandung, Jawa Barat 40261',
        runtime: '43 Lowongan',
        bannerUrl: 'assets/asing/samsung.jpg',
        imageUrl: 'assets/asing/samsung.jpg',
        trailerImg1: 'assets/asing/samsunga.jpg',
        trailerImg2: 'assets/asing/samsungb.jpg',
        trailerImg3: 'assets/asing/samsungc.jpg',
      ),
      Item(
        id: 3,
        name: 'PT TOYOTA',
        category: 'Perusahaan Asing',
        desc:
            'Toyota merupakan pabrikan mobil terbesar di dunia dalam unit sales dan net sales. '
            'Toyota tidak hanya dikenal melalui Toyota Land Cruiser. Mereka juga mengembangkan model yang menjadi favorit dunia, sedan kecil. Pada tahun 1961, Toyota mengeluarkan model Publica dan lima tahun kemudian meluncurkan model Corolla.',
        kriteria:
            'Kriteria : Mahasiswa semester 6-7, diutamakan dengan kepribadian yang jujur dan amanah, menguasai mesin motor dan mobil ',
        waktu: 'Waktu magang selama 6 bulan',
        divisi: 'Divisi: office team, assisten supervisor',
        rating: 8.8,
        directors: 'Kichiro Toyoda',
        releaseDate: '1933',
        releaseDateDesc:
            'Jl. BKR No.118, Cigereleng, Kec. Regol, Kota Bandung, Jawa Barat 40253',
        runtime: '53 Lowongan',
        bannerUrl: 'assets/asing/toyota.jpg',
        imageUrl: 'assets/asing/toyota.jpg',
        trailerImg1: 'assets/asing/toyotaa.jpg',
        trailerImg2: 'assets/asing/toyotab.jpg',
        trailerImg3: 'assets/asing/toyotac.jpg',
      ),
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
      Item(
        id: 5,
        name: 'PT BIOFARMA',
        category: 'BUMN',
        desc:
            'Bio Farma merupakan BUMN produsen Vaksin dan Antisera, saat ini berkembang menjadi perusahaan Life Science'
            'Dengan kapasitas produksi lebih dari 3,2 Miliar dosis pertahun, Bio Farma telah memenuhi kebutuhan vaksin Nasional dan kebutuhan vaksin dunia melalui WHO dan UNICEF. ',
        kriteria:
            'Kriteria : Mahasiswa semester 6-7, diutamakan dengan kepribadian yang rapih dan bersih, menguasai bagian apoteker',
        waktu: 'Waktu magang selama 6 bulan',
        divisi:
            'Divisi: Produksi Vaksin, Teknologi Informasi, Perencanaan Produksi',
        rating: 9.6,
        directors: 'Honesti Basyir',
        releaseDate: '1890',
        releaseDateDesc:
            'Jl. Pasteur No.28, Pasteur, Kec. Sukajadi, Kota Bandung, Jawa Barat 40161',
        runtime: '90 Lowongan',
        bannerUrl: 'assets/BUMN/biofarma.jpg',
        imageUrl: 'assets/BUMN/biofarma.jpg',
        trailerImg1: 'assets/BUMN/biofarmaa.jpg',
        trailerImg2: 'assets/BUMN/biofarmab.jpg',
        trailerImg3: 'assets/BUMN/biofarmac.jpg',
      ),
      Item(
        id: 6,
        name: 'BANK BNI',
        category: 'BUMN',
        desc:
            'Bank Negara Indonesia (BNI) adalah bank komersial tertua dalam sejarah Republik Indonesia. '
            'PT Bank Negara Indonesia Tbk didirikan oleh Margono Djojohadikusumo, yang merupakan satu dari anggota BPUPKI, lalu mendirikan bank sirkulasi/sentral yang bertanggung jawab menerbitkan dan mengelola mata uang RI.',
        kriteria:
            'Kriteria : Mahasiswa semester 6-7, diutamakan dengan kepribadian yang teliti, menguasai ms.excel dan peradministrasian',
        waktu: 'Waktu magang selama 6 bulan',
        divisi: 'Divisi: account office, staff administrasi',
        rating: 9.8,
        directors: 'Royke Tumilaar',
        releaseDate: '1946',
        releaseDateDesc:
            'Jl. Perintis Kemerdekaan, Babakan Ciamis, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40117',
        runtime: '80 Lowongan',
        bannerUrl: 'assets/BUMN/bni.jpg',
        imageUrl: 'assets/BUMN/bni.jpg',
        trailerImg1: 'assets/BUMN/bnia.jpg',
        trailerImg2: 'assets/BUMN/bnib.jpg',
        trailerImg3: 'assets/BUMN/bnic.jpg',
      ),
      Item(
        id: 7,
        name: 'PT KAI',
        category: 'BUMN',
        desc:
            'PT Kereta Api Indonesia (Persero) (disingkat KAI atau PT KAI) adalah Badan Usaha Milik Negara Indonesia yang menyelenggarakan jasa angkutan kereta api.'
            'Sebagai perusahaan kolonial, sebagian besar jalur KA di Indonesia mempunyai dua tujuan: ekonomis dan strategis.',
        kriteria:
            'Kriteria : Mahasiswa semester 6-7, diutamakan dengan kepribadian yang ramah dan mudah senyum, menguasai perpariwisataan',
        waktu: 'Waktu magang selama 6 bulan',
        divisi: 'Divisi: Devisi regional III',
        rating: 9.5,
        directors: 'Didiek Hartantyo ',
        releaseDate: '1945',
        releaseDateDesc:
            ' Jl. Perintis Kemerdekaan No.1, Babakan Ciamis, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40111',
        runtime: '78 Lowongan',
        bannerUrl: 'assets/BUMN/kai.jpg',
        imageUrl: 'assets/BUMN/kai.jpg',
        trailerImg1: 'assets/BUMN/kaia.jpg',
        trailerImg2: 'assets/BUMN/kaib.jpg',
        trailerImg3: 'assets/BUMN/kaic.jpg',
      ),
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
      Item(
        id: 10,
        name: 'PT Astra',
        category: 'Perusahaan Swasta',
        desc:
            'PT Astra  didirikan pada tahun 1957 dengan nama PT Astra International Incorporated. '
            'Perusahaan ini telah tercatat di Bursa Efek Jakarta sejak tanggal 4 April 1990. Per 30 Juni 2018, mayoritas saham Astra dimiliki oleh Jardine Cycle & Carriage Ltd. sebesar 50,11%',
        kriteria:
            'Kriteria : Mahasiswa semester 6-7, menguasai ms.excel dan ms.word',
        waktu: 'Waktu magang selama 6 bulan',
        divisi: 'Divisi: admin, customer service',
        rating: 8.9,
        directors: 'Djony Bunarto Tjondro',
        releaseDate: '1957',
        releaseDateDesc:
            'Soekarno-Hatta St No.452, Sukapura, Kiaracondong, Bandung City, West Java 40285',
        runtime: '54 Lowongan',
        bannerUrl: 'assets/swasta/astra.jpg',
        imageUrl: 'assets/swasta/astra.jpg',
        trailerImg1: 'assets/swasta/astraa.jpg',
        trailerImg2: 'assets/swasta/astrab.jpg',
        trailerImg3: 'assets/swasta/astrac.jpg',
      ),
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
      Item(
        id: 12,
        name: 'PT GUDANG GARAM',
        category: 'Perusahaan Swasta',
        desc:
            'PT Gudang Garam Tbk adalah sebuah merek/perusahaan produsen rokok terbesar di Indonesia yang terpopuler.'
            'Didirikan pada 26 Juni 1958 oleh Surya Wonowidjojo, perusahaan rokok ini merupakan peringkat pertama dan terbesar kelima di Indonesia menurut tahun pendiriannya dalam produksi rokok kretek.',
        kriteria:
            'Kriteria : Mahasiswa semester 6-7, diutamakan yang tidak mempunyai riwayat penyakit asma, menguasai ms.excel dan ms.word',
        waktu: 'Waktu magang selama 6 bulan',
        divisi: 'Divisi: admin customer dan admin distributor',
        rating: 8.9,
        directors: 'Susilo Wonowidjojo ',
        releaseDate: '1958',
        releaseDateDesc:
            'Soekarno-Hatta St No.703, Jatisari, Buahbatu, Bandung City, West Java 40286',
        runtime: '65 Lowongan',
        bannerUrl: 'assets/swasta/gudanggaram.jpg',
        imageUrl: 'assets/swasta/gudanggaram.jpg',
        trailerImg1: 'assets/swasta/gudanggarama.jpg',
        trailerImg2: 'assets/swasta/gudanggaramb.jpg',
        trailerImg3: 'assets/swasta/gudanggaramc.jpg',
      ),
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
      Item(
        id: 14,
        name: 'PT INDOFOOD',
        category: 'Perusahaan Swasta',
        desc:
            'PT Indofood Sukses Makmur Tbk atau lebih dikenal dengan nama Indofood merupakan produsen berbagai jenis makanan dan minuman yang bermarkas di Jakarta, Indonesia.'
            'Perusahaan ini mengekspor bahan makanannya hingga Australia, Asia, dan Eropa.',
        kriteria:
            'Kriteria : Mahasiswa semester 6-7, menguasai ms.excel dan ms.word',
        waktu: 'Waktu magang selama 6 bulan',
        divisi: 'Divisi: admin, quality control team',
        rating: 9.2,
        directors: 'Anthony Salim',
        releaseDate: '1990',
        releaseDateDesc:
            'Jl. Raya Caringin No.353, Kertajaya, Padalarang, Kabupaten Bandung Barat, Jawa Barat 40553',
        runtime: '97 Lowongan',
        bannerUrl: 'assets/swasta/indofood.jpg',
        imageUrl: 'assets/swasta/indofood.jpg',
        trailerImg1: 'assets/swasta/indofooda.jpg',
        trailerImg2: 'assets/swasta/indofoodb.jpg',
        trailerImg3: 'assets/swasta/indofoodc.jpg',
      ),
    ];
  }
}
