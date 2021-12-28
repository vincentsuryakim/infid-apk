import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pakar/models/tim_pakar_models.dart';

Future<List<Regist>> fetchArtikel(String query) async {
  var url = Uri.parse('http://pbpempat.herokuapp.com/timPakarCovid/search-json?q=$query');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));
  List<Regist> timPakar = [];
  for (var d in data) {
    if (d != null) {
      timPakar.add(Regist.fromJson(d));
    }
  }

  return timPakar;
}