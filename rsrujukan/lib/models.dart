class Data {
  late String nama;
  late String tempat;
  late String alamat;
  late String noTelfon;

  Data({
    required this.nama,
    required this.tempat,
    required this.alamat,
    required this.noTelfon,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        nama: json["fields"]["nama"],
        tempat: json["fields"]["tempat"],
        alamat: json["fields"]["alamat"],
        noTelfon: json["fields"]["no_telfon"],
      );

  Map<String, dynamic> toJson() => {
        "nama": nama,
        "tempat": tempat,
        "alamat": alamat,
        "no_telfon": noTelfon,
      };
}
