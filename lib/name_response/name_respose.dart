import 'package:freezed_annotation/freezed_annotation.dart';

class Count {
  Count({
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

  factory Count.fromJson(Map<String, dynamic> json) => Count(
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
