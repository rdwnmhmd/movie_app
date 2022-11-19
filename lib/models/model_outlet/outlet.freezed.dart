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
  double? get long => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_Outlet extends _Outlet {
  const _$_Outlet(
      {required this.id, required this.name, required this.address, this.long})
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
  final double? long;

  @override
  String toString() {
    return 'Outlet(id: $id, name: $name, address: $address, long: $long)';
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
      final double? long}) = _$_Outlet;
  const _Outlet._() : super._();

  factory _Outlet.fromJson(Map<String, dynamic> json) = _$_Outlet.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;
  @override
  double? get long;
}

OutletResult _$OutletResultFromJson(Map<String, dynamic> json) {
  return _ListOutlet.fromJson(json);
}

/// @nodoc
mixin _$OutletResult {
  int get totalRows => throw _privateConstructorUsedError;
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
  final int totalRows;
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
      {required final int totalRows, final List<Outlet>? data}) = _$_ListOutlet;

  factory _ListOutlet.fromJson(Map<String, dynamic> json) =
      _$_ListOutlet.fromJson;

  @override
  int get totalRows;
  @override
  List<Outlet>? get data;
}
