class Data {
  late String namaLengkap;
  late String umur;
  late String kotaKabupaten;
  late String namaIbuKandung;

  Data({
    required this.namaLengkap,
    required this.umur,
    required this.kotaKabupaten,
    required this.namaIbuKandung,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    namaLengkap: json["fields"]["untuk"],
    umur: json["fields"]["dari"],
    kotaKabupaten: json["fields"]["title"],
    namaIbuKandung: json["fields"]["message"],
  );

  Map<String, dynamic> toJson() => {
    "untuk": namaLengkap,
    "dari": umur,
    "title": kotaKabupaten,
    "message": namaIbuKandung,
  };
}