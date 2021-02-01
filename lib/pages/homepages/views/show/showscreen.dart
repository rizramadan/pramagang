import 'package:flutter/material.dart';
import 'package:pramagang/pages/homepages/models/item.dart';
import 'package:pramagang/pages/homepages/views/show/itemlist.dart';

class ShowScreen extends StatelessWidget {
  List<Item> itemList;

  @override
  Widget build(BuildContext context) {
    itemList = _itemList();

    return Scaffold(
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

  List<Item> _itemList() {
    return [
      Item(
        id: 0,
        name: 'PT DANONE',
        category: 'Perusahaan Asing',
        desc:
            'Group Danone adalah perusahaan multinternasional yang memproduksi berbagai jenis makanan dan minuman.'
            'Pada tahun 2006 Danone membeli perusahaan makanan bayi terbesar kedua di dunia setelah membeli Numero.'
            'Danone memegang beberapa merek terkenal air minum seperti Volvic, Evian, Aqua, dan Badoit.',
        rating: 8.7,
        directors: 'Franck Ribout',
        releaseDate: '1915',
        releaseDateDesc: 'Spanyol (1915)',
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
            'dan juga produsen mesin pembakaran dalam terbesar dengan produksi lebih dari 14 juta unit tiap tahun.'
            'Mobil Honda terkenal dengan daya tahan dan jarang rusak. Honda di Indonesia paling terkenal dengan sepeda motornya.'
            '',
        rating: 8.9,
        directors: 'Soichiro Honda',
        releaseDate: '1948',
        releaseDateDesc: 'Tokyo (1948)',
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
            'perusahaan ini berekspansi ke sejumlah sektor, seperti pemrosesan makanan, tekstil, asuransi, sekuritas, dan ritel.'
            'Sejak tahun 1990, Samsung meningkatkan penjualan produknya di luar Korea Selatan, terutama produk ponsel dan semikonduktornya yang kemudian menjadi sumber pendapatan paling penting. Hingga tahun 2020, Samsung memiliki nilai merek tertinggi kedelapan di dunia',
        rating: 9.2,
        directors: 'Lee Byung Chul',
        releaseDate: '1938',
        releaseDateDesc: 'Daegu (1938)',
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
            'Pabrikan terbesar di Jepang ini menghasilkan 8-8,5 juta unit mobil di seluruh dunia tiap tahunnya.'
            'Toyota tidak hanya dikenal melalui Toyota Land Cruiser. Mereka juga mengembangkan model yang menjadi favorit dunia, sedan kecil. Pada tahun 1961, Toyota mengeluarkan model Publica dan lima tahun kemudian meluncurkan model Corolla.',
        rating: 8.8,
        directors: 'Kichiro Toyoda',
        releaseDate: '1933',
        releaseDateDesc: 'Toyota (1933)',
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
            'Unilever memproduksi makanan, minuman, pembersih, dan juga perawatan tubuh.'
            'Unilever adalah salah satu perusahaan paling tua di dunia yang masih beroperasi, dan saat ini menjual produknya ke lebih dari 190 negara',
        rating: 9.4,
        directors: 'Antonius Johannes',
        releaseDate: '1930',
        releaseDateDesc: 'Inggris (1930)',
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
            'didirikan 6 Agustus 1890. Selama 126 tahun pendiriannya Bio Farma telah berkontribusi untuk meningkatkan kualitas hidup bangsa, baik yang berada di Indonesia maupun mancanegara. '
            'Dengan kapasitas produksi lebih dari 3,2 Miliar dosis pertahun, Bio Farma telah memenuhi kebutuhan vaksin Nasional dan kebutuhan vaksin dunia melalui WHO dan UNICEF. ',
        rating: 9.6,
        directors: 'Honesti Basyir',
        releaseDate: '1890',
        releaseDateDesc: 'Bandung (1890)',
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
            'Saat ini BNI mempunyai 2.262 kantor cabang di Indonesia dan 8 di luar negeri.'
            'PT Bank Negara Indonesia Tbk didirikan oleh Margono Djojohadikusumo, yang merupakan satu dari anggota BPUPKI, lalu mendirikan bank sirkulasi/sentral yang bertanggung jawab menerbitkan dan mengelola mata uang RI.',
        rating: 9.8,
        directors: 'Royke Tumilaar',
        releaseDate: '1946',
        releaseDateDesc: 'Jakarta (1946)',
        runtime: '80 Lowongan',
        bannerUrl: 'assets/BUMN/bni.jpg',
        imageUrl: 'assets/BUMN/bni.jpg',
        trailerImg1: 'assets/BUMN/bnia.jpeg',
        trailerImg2: 'assets/BUMN/bnib.jpeg',
        trailerImg3: 'assets/BUMN/bnic.jpg',
      ),
      Item(
        id: 7,
        name: 'PT KAI',
        category: 'BUMN',
        desc:
            'PT Kereta Api Indonesia (Persero) (disingkat KAI atau PT KAI) adalah Badan Usaha Milik Negara Indonesia yang menyelenggarakan jasa angkutan kereta api.'
            'Sebagai perusahaan kolonial, sebagian besar jalur KA di Indonesia mempunyai dua tujuan: ekonomis dan strategis.'
            'Selain di Jawa, pembangunan rel KA juga dilakukan di Aceh, menghubungkan Banda Aceh hingga Pelabuhan Uleelhee, dengan lebar sepur 1.067 mm, yang digunakan untuk keperluan militer',
        rating: 9.5,
        directors: 'Didiek Hartantyo ',
        releaseDate: '1945',
        releaseDateDesc: 'Bandung (1945)',
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
            'Ketenagalistrikan di Indonesia dimulai pada akhir abad ke-19, ketika beberapa perusahaan Belanda mendirikan pembangkitan tenaga listrik untuk keperluan sendiri. '
            'LN merupakan satu-satunya perusahaan penjual jasa listrik di Indonesia. Dalam pelayanan pendistribusian kelistrikan PLN membagi-bagi fungsi unit induknya kedalam beberapa unit induk berdasarkan pada sistem tenaga listrik yaitu pembangkitan, transmisi, dan distribusi.',
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
            'Telkom merupakan salah satu BUMN yang 52,09% sahamnya saat ini dimiliki oleh Pemerintah Indonesia, dan 47,91% dimiliki oleh publik.'
            'Telkom juga menjadi pemegang saham mayoritas di 13 anak perusahaan, seperti PT Telekomunikasi Seluler (Telkomsel), PT Telkom Akses, PT Multimedia Nusantara (TelkomMetra)[4], PT PINS Indonesia (PINS)',
        rating: 9.8,
        directors: 'Ririek Adriansyah',
        releaseDate: '1965',
        releaseDateDesc: 'Bandung(1945)',
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
            'Pada tahun 1990, perseroan mengubah namanya menjadi PT Astra International Tbk'
            'Perusahaan ini telah tercatat di Bursa Efek Jakarta sejak tanggal 4 April 1990. Per 30 Juni 2018, mayoritas saham Astra dimiliki oleh Jardine Cycle & Carriage Ltd. sebesar 50,11%',
        rating: 8.9,
        directors: 'Djony Bunarto Tjondro',
        releaseDate: '1957',
        releaseDateDesc: 'Jakarta (1957)',
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
            'BCA didirikan oleh Sudono Salim pada tanggal 21 Februari 1957 dan berkantor pusat di Jakarta.'
            'BCA melakukan merger dengan dua bank lain pada 1977. Salah satunya Bank Gemari yang dimiliki Yayasan Kesejahteraan Angkatan Bersenjata Republik Indonesia. Kantor Bank Gemari pun dijadikan kantor cabang BCA. Merger itu membuat BCA bisa menjadi bank devisa',
        rating: 9.7,
        directors: 'Jahja Setiaatmadja',
        releaseDate: '1957',
        releaseDateDesc: 'Jakarta (1957)',
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
        rating: 8.9,
        directors: 'Susilo Wonowidjojo ',
        releaseDate: '1958',
        releaseDateDesc: 'Kediri (1957)',
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
            'Indocement juga memiliki kapasitas produksi beton siap-pakai sebesar 4,4 Juta meter kubik per tahun dengan 41 batching plant dan 706 truk mixer, serta memproduksi agregat sebesar 2,7 juta ton.'
            'Indocement memiliki 12 buah pabrik, sembilan diantaranya berada di Citeureup, Kabupaten Bogor, Jawa Barat. Dua berada di Cirebon, Jawa Barat, dan satu di Tarjun, Kotabaru, Kalimantan Selatan.',
        rating: 9.1,
        directors: 'Christian Kartawijaya',
        releaseDate: '1985',
        releaseDateDesc: 'Jakarta (1985)',
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
            'Perusahaan ini didirikan pada tanggal 14 Agustus 1990 oleh Sudono Salim dengan nama PT Panganjaya Intikusuma yang pada tanggal 5 Februari 1994 menjadi Indofood Sukses Makmur. '
            'Perusahaan ini mengekspor bahan makanannya hingga Australia, Asia, dan Eropa.',
        rating: 9.2,
        directors: 'Anthony Salim',
        releaseDate: '1990',
        releaseDateDesc: 'Jakarta (1990)',
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
