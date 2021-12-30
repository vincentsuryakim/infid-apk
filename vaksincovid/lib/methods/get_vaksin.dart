import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vaksincovid/models/vaksin_model.dart';

Future<List<VaksinData>> getDataVaksin() async {
  var url = Uri.parse('https://pbpempat.herokuapp.com/vaksincovid/get-vaksin');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );
  var data = jsonDecode(utf8.decode(response.bodyBytes));
  List<VaksinData> resultVaksin = [];
  for (var d in data) {
    if (d != null) {
      resultVaksin.add(VaksinData.fromJson(d));
    }
  }
  return resultVaksin;
}
