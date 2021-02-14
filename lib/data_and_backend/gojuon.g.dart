// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gojuon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gojuon _$GojuonFromJson(Map<String, dynamic> json) {
  return Gojuon(
    (json['a'] as List<dynamic>)
        .map((e) => Kana.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['ka'] as List<dynamic>)
        .map((e) => Kana.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['sa'] as List<dynamic>)
        .map((e) => Kana.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['ta'] as List<dynamic>)
        .map((e) => Kana.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['na'] as List<dynamic>)
        .map((e) => Kana.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['ha'] as List<dynamic>)
        .map((e) => Kana.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['ma'] as List<dynamic>)
        .map((e) => Kana.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['ya'] as List<dynamic>)
        .map((e) => Kana.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['ra'] as List<dynamic>)
        .map((e) => Kana.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['wa'] as List<dynamic>)
        .map((e) => Kana.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['n'] as List<dynamic>)
        .map((e) => Kana.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$GojuonToJson(Gojuon instance) => <String, dynamic>{
      'a': instance.a.map((e) => e.toJson()).toList(),
      'ka': instance.ka.map((e) => e.toJson()).toList(),
      'sa': instance.sa.map((e) => e.toJson()).toList(),
      'ta': instance.ta.map((e) => e.toJson()).toList(),
      'na': instance.na.map((e) => e.toJson()).toList(),
      'ha': instance.ha.map((e) => e.toJson()).toList(),
      'ma': instance.ma.map((e) => e.toJson()).toList(),
      'ya': instance.ya.map((e) => e.toJson()).toList(),
      'ra': instance.ra.map((e) => e.toJson()).toList(),
      'wa': instance.wa.map((e) => e.toJson()).toList(),
      'n': instance.n.map((e) => e.toJson()).toList(),
    };
