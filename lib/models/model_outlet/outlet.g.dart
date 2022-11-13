// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Outlet _$$_OutletFromJson(Map<String, dynamic> json) => _$_Outlet(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_OutletToJson(_$_Outlet instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_ListOutlet _$$_ListOutletFromJson(Map<String, dynamic> json) =>
    _$_ListOutlet(
      totalRows: json['totalRows'] as int,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Outlet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOutletToJson(_$_ListOutlet instance) =>
    <String, dynamic>{
      'totalRows': instance.totalRows,
      'data': instance.data,
    };
