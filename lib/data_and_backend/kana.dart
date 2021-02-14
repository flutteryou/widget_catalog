import 'package:json_annotation/json_annotation.dart';

part 'kana.g.dart';

@JsonSerializable()

class Kana {
  Kana(this.h, this.k, this.r, {this.dh, this.dk, this.hdh, this.hdk});

  String h;
  String k;
  String r;
  String? dh;
  String? dk;
  String? hdh;
  String? hdk;

  factory Kana.fromJson(Map<String, dynamic> json) => _$KanaFromJson(json);

  Map<String, dynamic> toJson() => _$KanaToJson(this);
}