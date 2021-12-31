class VaksinData {
  late String nama;
  late String deskripsi;
  late String usia;
  late String jadwal;
  late String dosis1;
  late String dosis2;

  VaksinData({
    required this.nama,
    required this.deskripsi,
    required this.usia,
    required this.jadwal,
    required this.dosis1,
    required this.dosis2,
  });

  factory VaksinData.fromJson(Map<String, dynamic> json) => VaksinData(
        nama: json["fields"]["nama"],
        deskripsi: json["fields"]["deskripsi"],
        usia: json["fields"]["usia"],
        jadwal: json["fields"]["jadwal"],
        dosis1: json["fields"]["dosis1"],
        dosis2: json["fields"]["dosis2"],
      );

  Map<String, dynamic> toJson() => {
        "nama": nama,
        "deskripsi": deskripsi,
        "usia": usia,
        "jadwal": jadwal,
        "dosis1": dosis1,
        "dosis2": dosis2,
      };
}
