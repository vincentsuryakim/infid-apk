import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pakar/models/tim_pakar_models.dart';

Future<dynamic> addNewPakar(Regist timPakar) async {
  var url = Uri.parse('http://pbpempat.herokuapp.com/timPakarCovid/add-from-flutter');
  var response = await http.post(
    url,
    headers: {
      "Access-Control_Allow_Origin": "*",
      "Content-Type": "application/json; charset=utf-8",
    },
    body:jsonEncode(timPakar)
  );
  return jsonDecode(response.body)["success"];
}