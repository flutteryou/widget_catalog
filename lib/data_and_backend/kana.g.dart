// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kana.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kana _$KanaFromJson(Map<String, dynamic> json) {
  return Kana(
    json['h'] as String,
    json['k'] as String,
    json['r'] as String,
    dh: json['dh'] as String?,
    dk: json['dk'] as String?,
    hdh: json['hdh'] as String?,
    hdk: json['hdk'] as String?,
  );
}

Map<String, dynamic> _$KanaToJson(Kana instance) => <String, dynamic>{
      'h': instance.h,
      'k': instance.k,
      'r': instance.r,
      'dh': instance.dh,
      'dk': instance.dk,
      'hdh': instance.hdh,
      'hdk': instance.hdk,
    };
