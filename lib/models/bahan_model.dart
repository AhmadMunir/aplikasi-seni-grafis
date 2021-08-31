class BahanModels {
  String bahan;

  String imgPath;

  BahanModels(this.bahan, this.imgPath);
}

class CetakTinggiModel {
  List<BahanModels> bahan = [
    BahanModels(
        "Papan sebagai alas tinta, Bisa menggunakan kaca atau keramik, bias menggunakan kaca atau keramik",
        "assets/img/praktek/papankeramik.jpg"),
    BahanModels(
        "Hardboard atau papan MDF", "assets/img/praktek/hardboard.jpeg"),
    BahanModels("Tinta cetak atau cat cetak offset",
        "assets/img/praktek/tintacetak.jpg"),
    BahanModels("Kaos, kain, atau kertas", "assets/img/praktek/kaos.jpg"),
    BahanModels(
        "Jika perlu ditambah cat pengering agar pengeringan lebih cepat", ""),
  ];
  List<BahanModels> alat = [
    BahanModels("Pensil", "assets/img/praktek/pensil.jpg"),
    BahanModels("Gunting", "assets/img/praktek/gunting.jpg"),
    BahanModels("Pisau cutter", "assets/img/praktek/cutter.jpg"),
    BahanModels(
        "Woodcut/ pahat atau pencukil kayu, digunakan untuk mmebentuk gambar pada plat/ sebagai klise cetak, kain, atau kertas",
        "assets/img/praktek/woodcut.jpg"),
    BahanModels(
        "Roler/ untuk meratakan warna", "assets/img/praktek/roller.jpg"),
  ];

  List<BahanModels> step = [];
}

class CetakSaringModel {
  List<BahanModels> bahan = [
    BahanModels("Obat sablon, emulsi (sensitizer)., kain, atau kertas",
        "assets/img/cetak_saring/obat.jpg"),
    BahanModels(
        "Cat dan sari warna sablon.", "assets/img/cetak_saring/cat.png"),
  ];
  List<BahanModels> alat = [
    BahanModels(
        "Kerangka screen , bingkai yang terbuat dari kayu atau aluminium Screen (kain kasa) atau Monyl merupakan kain berserat yang berfungsi sebagai sarana untuk membentuk gambar atau tulisan pada benda-benda yang akan disablon",
        "assets/img/cetak_saring/kerangka.jpg"),
    BahanModels("Meja cetak, sebagai alas/tempat untuk melakukan penyablonan",
        "assets/img/cetak_saring/meja.jpg"),
    BahanModels("Rakel, digunakan untuk meratakan tinta di screen. ",
        "assets/img/cetak_saring/rakel.jpg"),
  ];

  List<BahanModels> step = [];
}
