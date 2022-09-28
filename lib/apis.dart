// ignore_for_file: no_leading_underscores_for_local_identifiers
import 'dart:convert';
import 'package:basic_http/name_response/name_respose.dart';
import 'package:http/http.dart' as http;

Future<Count> getNumFact({required String num}) async {
  final _response =
      await http.get(Uri.parse('http://numbersapi.com/$num?json'));
  final _bodyAsJson = jsonDecode(_response.body) as Map<String, dynamic>;
  final _data = Count.fromJson(_bodyAsJson);
  return _data;
}
