// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Outlet _$$_OutletFromJson(Map<String, dynamic> json) => _$_Outlet(
      id: json['id'] as int,
      name: json['name'] as String,
      address: json['address'] as String,
      long: (json['long'] as num).toDouble(),
      lang: (json['lang'] as num).toDouble(),
      radius: json['radius'] as String?,
      deletedAt: json['deleted_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      status: json['status'] as String?,
      targetBulanan: json['target_bulanan'] as String?,
      idPrincipal: json['id_principal'] as String?,
      kodeOutlet: json['kode_outlet'] as String?,
      isComplete: json['is_complete'] as bool?,
      jadwalKunjungan: json['jadwal_kunjungan'] as String?,
    );

Map<String, dynamic> _$$_OutletToJson(_$_Outlet instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'long': instance.long,
      'lang': instance.lang,
      'radius': instance.radius,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'status': instance.status,
      'target_bulanan': instance.targetBulanan,
      'id_principal': instance.idPrincipal,
      'kode_outlet': instance.kodeOutlet,
      'is_complete': instance.isComplete,
      'jadwal_kunjungan': instance.jadwalKunjungan,
    };

_$_ListOutlet _$$_ListOutletFromJson(Map<String, dynamic> json) =>
    _$_ListOutlet(
      totalRows: json['totalRows'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Outlet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOutletToJson(_$_ListOutlet instance) =>
    <String, dynamic>{
      'totalRows': instance.totalRows,
      'data': instance.data,
    };
