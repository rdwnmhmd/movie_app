import 'package:freezed_annotation/freezed_annotation.dart';
part 'outlet.g.dart';
part 'outlet.freezed.dart';

@freezed
class Outlet with _$Outlet {
  const factory Outlet({
    required int id,
    required String name,
    // required String address,
    // required double long,
    // required double lang,
    // String? radius,
    // @JsonKey(name: "deleted_at") String? deletedAt,
    // @JsonKey(name: "created_at") String? createdAt,
    // @JsonKey(name: "updated_at") String? updatedAt,
    // String? status,
    // @JsonKey(name: "target_bulanan") String? targetBulanan,
    // @JsonKey(name: "id_principal") String? idPrincipal,
    // @JsonKey(name: "kode_outlet") String? kodeOutlet,
    // @JsonKey(name: "is_complete") bool? isComplete,
    // @JsonKey(name: "jadwal_kunjungan") String? jadwalKunjungan,
  }) = _Outlet;

  const Outlet._();

  factory Outlet.fromJson(Map<String, dynamic> map) => _$OutletFromJson(map);

  get length => null;
}

@freezed
class OutletResult with _$OutletResult {
  const factory OutletResult({
    required int totalRows,
    List<Outlet>? data,
  }) = _ListOutlet;
  factory OutletResult.fromJson(Map<String, dynamic> map) =>
      _$OutletResultFromJson(map);
}
