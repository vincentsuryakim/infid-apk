import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kontak/kontak_models.dart';

Future<dynamic> addData(Data newData) async {
  var url = Uri.parse('https://pbpempat.herokuapp.com/kontak/add/');
  var response = await http.post(url,
      headers: {
        "Access-Control_Allow_Origin": "*",
        "Content-Type": "application/json; charset=utf-8",
      },
      body: jsonEncode(newData));
  return jsonDecode(response.body)["success"];
}

Future<List<Data>> getData() async {
  var url = Uri.parse('https://pbpempat.herokuapp.com/kontak/get-data');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));
  List<Data> result = [];
  for (var d in data) {
    if (d != null) {
      result.add(Data.fromJson(d));
    }
  }
  return result;
}
