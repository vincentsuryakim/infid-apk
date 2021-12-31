class Artikel {
  late String judul;
  late String imageLink;
  late String artikelLink;
  late String tanggalPublish;
  late String publisher;
  late String deskripsi;

  Artikel({
    required this.judul,
    required this.imageLink,
    required this.artikelLink,
    required this.tanggalPublish,
    required this.publisher,
    required this.deskripsi,
  });

  factory Artikel.fromJson(Map<String, dynamic> json) => Artikel(
        judul: json["fields"]["judul"],
        imageLink: json["fields"]["image_link"],
        artikelLink: json["fields"]["artikel_link"],
        tanggalPublish: json["fields"]["tanggal_publish"],
        publisher: json["fields"]["publisher"],
        deskripsi: json["fields"]["deskripsi"],
      );

  Map<String, dynamic> toJson() => {
        "judul": judul,
        "image_link": imageLink,
        "artikel_link": artikelLink,
        "tanggal_publish": tanggalPublish,
        "publisher": publisher,
        "deskripsi": deskripsi,
      };
}
