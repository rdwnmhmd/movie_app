// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'outlet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Outlet _$OutletFromJson(Map<String, dynamic> json) {
  return _Outlet.fromJson(json);
}

/// @nodoc
mixin _$Outlet {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;
  double get lang => throw _privateConstructorUsedError;
  String? get radius => throw _privateConstructorUsedError;
  @JsonKey(name: "deleted_at")
  String? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "target_bulanan")
  String? get targetBulanan => throw _privateConstructorUsedError;
  @JsonKey(name: "id_principal")
  String? get idPrincipal => throw _privateConstructorUsedError;
  @JsonKey(name: "kode_outlet")
  String? get kodeOutlet => throw _privateConstructorUsedError;
  @JsonKey(name: "is_complete")
  bool? get isComplete => throw _privateConstructorUsedError;
  @JsonKey(name: "jadwal_kunjungan")
  String? get jadwalKunjungan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_Outlet extends _Outlet {
  const _$_Outlet(
      {required this.id,
      required this.name,
      required this.address,
      required this.long,
      required this.lang,
      this.radius,
      @JsonKey(name: "deleted_at") this.deletedAt,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      this.status,
      @JsonKey(name: "target_bulanan") this.targetBulanan,
      @JsonKey(name: "id_principal") this.idPrincipal,
      @JsonKey(name: "kode_outlet") this.kodeOutlet,
      @JsonKey(name: "is_complete") this.isComplete,
      @JsonKey(name: "jadwal_kunjungan") this.jadwalKunjungan})
      : super._();

  factory _$_Outlet.fromJson(Map<String, dynamic> json) =>
      _$$_OutletFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String address;
  @override
  final double long;
  @override
  final double lang;
  @override
  final String? radius;
  @override
  @JsonKey(name: "deleted_at")
  final String? deletedAt;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  final String? status;
  @override
  @JsonKey(name: "target_bulanan")
  final String? targetBulanan;
  @override
  @JsonKey(name: "id_principal")
  final String? idPrincipal;
  @override
  @JsonKey(name: "kode_outlet")
  final String? kodeOutlet;
  @override
  @JsonKey(name: "is_complete")
  final bool? isComplete;
  @override
  @JsonKey(name: "jadwal_kunjungan")
  final String? jadwalKunjungan;

  @override
  String toString() {
    return 'Outlet(id: $id, name: $name, address: $address, long: $long, lang: $lang, radius: $radius, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, status: $status, targetBulanan: $targetBulanan, idPrincipal: $idPrincipal, kodeOutlet: $kodeOutlet, isComplete: $isComplete, jadwalKunjungan: $jadwalKunjungan)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutletToJson(
      this,
    );
  }
}

abstract class _Outlet extends Outlet {
  const factory _Outlet(
          {required final int id,
          required final String name,
          required final String address,
          required final double long,
          required final double lang,
          final String? radius,
          @JsonKey(name: "deleted_at") final String? deletedAt,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt,
          final String? status,
          @JsonKey(name: "target_bulanan") final String? targetBulanan,
          @JsonKey(name: "id_principal") final String? idPrincipal,
          @JsonKey(name: "kode_outlet") final String? kodeOutlet,
          @JsonKey(name: "is_complete") final bool? isComplete,
          @JsonKey(name: "jadwal_kunjungan") final String? jadwalKunjungan}) =
      _$_Outlet;
  const _Outlet._() : super._();

  factory _Outlet.fromJson(Map<String, dynamic> json) = _$_Outlet.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;
  @override
  double get long;
  @override
  double get lang;
  @override
  String? get radius;
  @override
  @JsonKey(name: "deleted_at")
  String? get deletedAt;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  String? get status;
  @override
  @JsonKey(name: "target_bulanan")
  String? get targetBulanan;
  @override
  @JsonKey(name: "id_principal")
  String? get idPrincipal;
  @override
  @JsonKey(name: "kode_outlet")
  String? get kodeOutlet;
  @override
  @JsonKey(name: "is_complete")
  bool? get isComplete;
  @override
  @JsonKey(name: "jadwal_kunjungan")
  String? get jadwalKunjungan;
}

OutletResult _$OutletResultFromJson(Map<String, dynamic> json) {
  return _ListOutlet.fromJson(json);
}

/// @nodoc
mixin _$OutletResult {
  String get totalRows => throw _privateConstructorUsedError;
  List<Outlet>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_ListOutlet implements _ListOutlet {
  const _$_ListOutlet({required this.totalRows, final List<Outlet>? data})
      : _data = data;

  factory _$_ListOutlet.fromJson(Map<String, dynamic> json) =>
      _$$_ListOutletFromJson(json);

  @override
  final String totalRows;
  final List<Outlet>? _data;
  @override
  List<Outlet>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OutletResult(totalRows: $totalRows, data: $data)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOutletToJson(
      this,
    );
  }
}

abstract class _ListOutlet implements OutletResult {
  const factory _ListOutlet(
      {required final String totalRows,
      final List<Outlet>? data}) = _$_ListOutlet;

  factory _ListOutlet.fromJson(Map<String, dynamic> json) =
      _$_ListOutlet.fromJson;

  @override
  String get totalRows;
  @override
  List<Outlet>? get data;
}
