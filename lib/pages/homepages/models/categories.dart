import 'package:flutter/material.dart';

var categories = [
  {
    "category_id": 1,
    "category_img": "assets/homeimage/category/bumn.png",
    "category_name": "BUMN",
    "list_perusahaan": [
      {
        "perusahaan_images": [
          {"image": "assets/image/biofarma.jpg"},
        ],
        "perusahaan_thumb_img": "assets/image/biofarma.jpg",
        "category_name": "PT BIO FARMA",
        "perusahaan_description":
            "Bio Farma merupakan BUMN produsen Vaksin dan Antisera, saat ini berkembang menjadi perusahaan Life Science., didirikan 6 Agustus 1890. "
      },
      {
        "perusahaan_images": [
          {"image": "assets/image/kai.jpg"}
        ],
        "perusahaan_thumb_img": "assets/image/kai.jpg",
        "category_name": "PT KAI PERSERO",
        "perusahaan_description":
            "PT Kereta Api Indonesia (Persero) (disingkat KAI atau PT KAI) adalah Badan Usaha Milik Negara Indonesia yang menyelenggarakan jasa angkutan kereta api. Layanan PT KAI meliputi angkutan penumpang dan barang."
      },
      {
        "perusahaan_images": [
          {"image": "assets/image/bni.jpg"}
        ],
        "perusahaan_thumb_img": "assets/image/bni.jpg",
        "category_name": "PT BANK NEGARA INDONESIA",
        "perusahaan_description":
            "Bank Negara Indonesia atau BNI adalah sebuah institusi bank milik pemerintah, dalam hal ini adalah perusahaan BUMN, di Indonesia. Dalam struktur manajemen organisasinya, Bank Negara Indonesia, dipimpin oleh seorang Direktur Utama yang saat ini dijabat oleh Royke Tumilaar. "
      },
      {
        "perusahaan_images": [
          {"image": "assets/image/telkom.jpg"}
        ],
        "perusahaan_thumb_img": "assets/image/telkom.jpg",
        "category_name": "PT TELEKOMUNIKASI INDONESIA",
        "perusahaan_description":
            "PT Telkom Indonesia (Persero) Tbk (Telkom) adalah Badan Usaha Milik Negara (BUMN) yang bergerak di bidang jasa layanan teknologi informasi dan komunikasi (TIK) dan jaringan telekomunikasi di Indonesia."
      },
      {
        "perusahaan_images": [
          {"image": "assets/homeimage/bumn/pln.jpg"}
        ],
        "perusahaan_thumb_img": "assets/homeimage/bumn/pln.jpg",
        "category_name": "PT PLN PERSERO",
        "perusahaan_description":
            "PT PLN (Persero) adalah perusahaan milik negara yang bergerak di bidang ketenagalistrikan baik dari mulai mengoperasikan pembangkit listrik sampai dengan melakukan transmisi kepada masyarakat di seluruh wilayah Indonesia."
      },
    ]
  },
  {
    "category_id": 2,
    "category_img": "assets/homeimage/category/asing.png",
    "category_name": "PERUSAHAAN ASING",
    "list_perusahaan": [
      {
        "perusahaan_images": [
          {"image": "assets/homeimage/asing/unilever.jpg"}
        ],
        "perusahaan_thumb_img": "assets/homeimage/asing/unilever.jpg",
        "category_name": "PT UNILEVER",
        "perusahaan_description":
            "Unilever adalah perusahaan multinasional yang berkantor pusat di Rotterdam, Belanda dan London, Inggris. Unilever memproduksi makanan, minuman, pembersih, dan juga perawatan tubuh."
      },
      {
        "perusahaan_images": [
          {"image": "assets/homeimage/asing/samsung.jpg"}
        ],
        "perusahaan_thumb_img": "assets/homeimage/asing/samsung.jpg",
        "category_name": "PT SAMSUNG",
        "perusahaan_description":
            "PT. Samsung Electronics Indonesia adalah perusahaan manufaktur elektronik asal Korea Selatan yang telah berdiri selama 25 tahun di Indonesia. ... Perusahaan yang berada di Kawasan Industri Jababeka ini memproduksi Smart Phone, LED TV, STB, dan Blueray."
      },
      {
        "perusahaan_images": [
          {"image": "assets/homeimage/asing/honda.jpg"}
        ],
        "perusahaan_thumb_img": "assets/homeimage/asing/honda.jpg",
        "category_name": "PT ASTRA HONDA MOTOR",
        "perusahaan_description":
            "PT Astra Honda Motor adalah sebuah perusahaan yang bergerak dibidang manufaktur, perakitan dan distributor sepeda motor merek Honda. Dan perusahaan ini merupakan satu-satunya di Indonesia yang memiliki hak sebagai Agen Tunggal Pemegang Merek (ATPM) sepeda motor Honda."
      },
      {
        "perusahaan_images": [
          {"image": "assets/homeimage/asing/danone.jpg"}
        ],
        "perusahaan_thumb_img": "assets/homeimage/asing/danone.jpg",
        "category_name": "PT DANONE",
        "perusahaan_description":
            "Group Danone adalah perusahaan multinternasional yang memproduksi berbagai jenis makanan dan minuman. Danone mengklaim sebagai pemimpin di pasar produk turunan susu atau air minum dalam kemasan. Pada tahun 2006 Danone membeli perusahaan makanan bayi terbesar kedua di dunia setelah membeli Numero."
      },
      {
        "perusahaan_images": [
          {"image": "assets/homeimage/asing/toyota.jpg"}
        ],
        "perusahaan_thumb_img": "assets/homeimage/asing/toyota.jpg",
        "category_name": "PT TOYOTA",
        "perusahaan_description":
            "PT Toyota-Astra Motor atau biasa disingkat dengan TAM merupakan Agen Tunggal Pemegang Merek Mobil Toyota dan Lexus di Indonesia. TAM merupakan perusahaan joint venture antara PT. Astra International Tbk dengan persentase saham 50% dan Toyota Motor Corporation, Jepang dengan persentase saham 50%."
      },
    ]
  },
  {
    "category_id": 3,
    "category_img": "assets/homeimage/category/swasta.jpg",
    "category_name": "PERUSAHAAN SWASTA",
    "list_perusahaan": [
      {
        "perusahaan_images": [
          {"image": "assets/homeimage/swasta/bca.jpg"}
        ],
        "perusahaan_thumb_img": "assets/homeimage/swasta/bca.jpg",
        "category_name": "PT BCA Tbk",
        "perusahaan_description":
            "PT Bank Central Asia Tbk (BCA) (IDX: BBCA) adalah bank swasta terbesar di Indonesia. Bank ini didirikan pada 21 Februari 1957 dengan nama Bank Central Asia NV dan pernah menjadi bagian penting dari Salim Group."
      },
      {
        "perusahaan_images": [
          {"image": "assets/homeimage/swasta/gudanggaram.jpg"}
        ],
        "perusahaan_thumb_img": "assets/homeimage/swasta/gudanggaram.jpg",
        "category_name": "PT GUDANG GARAM Tbk",
        "perusahaan_description":
            "PT Gudang Garam Tbk adalah sebuah merek/perusahaan produsen rokok terbesar di Indonesia yang terpopuler. Didirikan pada 26 Juni 1958 oleh Surya Wonowidjojo, perusahaan rokok ini merupakan peringkat pertama dan terbesar kelima di Indonesia menurut tahun pendiriannya dalam produksi rokok kretek."
      },
      {
        "perusahaan_images": [
          {"image": "assets/homeimage/swasta/indofood.jpg"}
        ],
        "perusahaan_thumb_img": "assets/homeimage/swasta/indofood.jpg",
        "category_name": "PT INDOFOOD SUKSES MAKMUR",
        "perusahaan_description":
            "PT. Indofood Sukses Makmur Tbk. adalah sebuah perusahaan yang memproduksi berbagai jenis makanan dan minuman. Awalnya perusahaan yang berdiri pada 1990 ini bernama PT. ... Indofood terus melakukan perluasan usaha dengan mengakuisisi 80 persen saham perusahaan yang bergerak di bidang perkebunan, agribisnis dan distribus"
      },
      {
        "perusahaan_images": [
          {"image": "assets/homeimage/swasta/indocement.jpg"}
        ],
        "perusahaan_thumb_img": "assets/homeimage/swasta/indocement.jpg",
        "category_name": "PT INDOCEMENT TUNGGAL PRAKARSA Tbk",
        "perusahaan_description":
            "PT Indocement Tunggal Prakarsa Tbk (IDX: INTP) adalah salah satu produsen semen di Indonesia. Indocement merupakan produsen terbesar kedua di Indonesia. Selain memproduksi semen, Indocement juga memproduksi beton siap-pakai, serta mengelola tambang agregat dan tras. Indocement berdiri sejak 16 Januari 1985."
      },
      {
        "perusahaan_images": [
          {"image": "assets/homeimage/swasta/.jpg"}
        ],
        "perusahaan_thumb_img": "assets/homeimage/swasta/.jpg",
        "category_name": "",
        "perusahaan_description": ""
      },
    ]
  },
];
