// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Crypto _$$_CryptoFromJson(Map<String, dynamic> json) => _$_Crypto(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_CryptoToJson(_$_Crypto instance) => <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
    };

_$_ListCrypto _$$_ListCryptoFromJson(Map<String, dynamic> json) =>
    _$_ListCrypto(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Crypto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListCryptoToJson(_$_ListCrypto instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
