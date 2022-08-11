import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

NameResponse nameResponseFromJson(String str) =>
    NameResponse.fromJson(json.decode(str));
String nameResponseToJson(NameResponse data) => json.encode(data.toJson());

class NameResponse {
  NameResponse({
    this.text,
    this.number,
    this.found,
    this.type,
  });
  @JsonKey(name: 'text')
  String? text;
  @JsonKey(name: 'number')
  int? number;
  @JsonKey(name: 'found')
  bool? found;
  @JsonKey(name: 'type')
  String? type;

  factory NameResponse.fromJson(Map<String, dynamic> json) => NameResponse(
        text: json["text"],
        number: json["number"],
        found: json["found"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "number": number,
        "found": found,
        "type": type,
      };
}
