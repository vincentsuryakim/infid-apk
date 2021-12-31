class Regist {
  late String nama;
  late String tempatBertugas;
  late String asalUniversitas;
  late String pesan;

  Regist({
    required this.nama,
    required this.tempatBertugas,
    required this.asalUniversitas,
    required this.pesan,

  });

  factory Regist.fromJson(Map<String, dynamic> json) => Regist(
    nama: json["fields"]["nama"],
    tempatBertugas: json["fields"]["tempat_bertugas"],
    asalUniversitas: json["fields"]["asal_universitas"],
    pesan: json["fields"]["pesan"],
  );

  Map<String, dynamic> toJson() => {
    "nama": nama,
    "tempat_bertugas": tempatBertugas,
    "asal_universitas": asalUniversitas,
    "pesan": pesan,

  };

}