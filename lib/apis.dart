import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

Future<void> getNumFact({required String num}) async {
  final _response =
      await http.get(Uri.parse('http://numbersapi.com/$num?json'));
  final _bodyAsJson = jsonDecode(_response.body) as Map<String, dynamic>;
  print(_bodyAsJson);
}
