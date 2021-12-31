class Data {
  late String nama;
  late String email;
  late String nomorKontak;

  Data({
    required this.nama,
    required this.email,
    required this.nomorKontak,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        nama: json["fields"]["nama"],
        email: json["fields"]["email"],
        nomorKontak: json["fields"]["nomor_kontak"],
      );

  Map<String, dynamic> toJson() => {
        "nama": nama,
        "email": email,
        "nomor_kontak": nomorKontak,
      };
}
