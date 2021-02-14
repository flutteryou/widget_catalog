import 'package:json_annotation/json_annotation.dart';

import 'kana.dart';

part 'gojuon.g.dart';

@JsonSerializable(explicitToJson: true)

class Gojuon {
  Gojuon(
    this.a,
    this.ka,
    this.sa,
    this.ta,
    this.na,
    this.ha,
    this.ma,
    this.ya,
    this.ra,
    this.wa,
    this.n,
  );

  List<Kana> a;
  List<Kana> ka;
  List<Kana> sa;
  List<Kana> ta;
  List<Kana> na;
  List<Kana> ha;
  List<Kana> ma;
  List<Kana> ya;
  List<Kana> ra;
  List<Kana> wa;
  List<Kana> n;

  factory Gojuon.fromJson(Map<String, dynamic> json) => _$GojuonFromJson(json);
  Map<String, dynamic> toJson() => _$GojuonToJson(this);
}
