import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vaksincovid/models/vaksincovidmodel.dart';

Future<List<vaksinData>> getDataVaksin() async {
  var url = Uri.parse('https://pbpempat.herokuapp.com/vaksincovid/load_more2');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );
  var data = jsonDecode(utf8.decode(response.bodyBytes));
  List<vaksinData> resultVaksin = [];
  for (var d in data) {
    if (d != null) {
      resultVaksin.add(vaksinData.fromJson(d));
    }
  }
  return resultVaksin;
}
