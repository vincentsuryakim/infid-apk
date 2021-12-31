import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:protokol/models/artikel.dart';

Future<dynamic> addArtikel(Artikel artikel) async {
  var url =
      Uri.parse('https://pbpempat.herokuapp.com/edukasiProtokol/add-data');
  var response = await http.post(url,
      headers: {
        "Access-Control_Allow_Origin": "*",
        "Content-Type": "application/json; charset=utf-8",
      },
      body: jsonEncode(artikel));
  return jsonDecode(response.body)["success"];
}

Future<List<Artikel>> getArtikel() async {
  var url =
      Uri.parse('https://pbpempat.herokuapp.com/edukasiProtokol/get-data');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));
  List<Artikel> artikel = [];
  for (var d in data) {
    if (d != null) {
      artikel.add(Artikel.fromJson(d));
    }
  }

  return artikel;
}
