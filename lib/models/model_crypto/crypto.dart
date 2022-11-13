import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto.g.dart';
part 'crypto.freezed.dart';

@freezed
class Crypto with _$Crypto {
  const factory Crypto({
    required String id,
    required String symbol,
    required String name,
    required String image,
    // @JsonKey(name: "current_price") double? currentPrice,
    // @JsonKey(name: "market_cap") double? marketCap,
    // @JsonKey(name: "market_cap_rank") int? markerCapRank,
    // @JsonKey(name: "fully_diluted_valuation") int? fullyDilutedValuation,
    // @JsonKey(name: "total_volume") int? totalVolume,
    // @JsonKey(name: "high_24h") double? high24h,
    // @JsonKey(name: "low_24h") double? low24h,
    // @JsonKey(name: "price_change_24h") double? priceChange24h,
    // @JsonKey(name: "price_change_percentage_24h")
    //     double? priceChangePercentage24h,
    // @JsonKey(name: "market_cap_change_24h") int? marketCapChange24h,
    // @JsonKey(name: "market_cap_change_percentage_24h")
    //     double? marketCapChangePercentage24h,
    // @JsonKey(name: "circulating_supply") int? circulatingSupply,
    // @JsonKey(name: "total_supply") int? totalSupply,
    // @JsonKey(name: "max_supply") int? maxSupply,
    // int? ath,
    // @JsonKey(name: "ath_change_percentage") double? athChangePercentage,
    // @JsonKey(name: "ath_date") String? athDate,
    // double? atl,
    // @JsonKey(name: "atl_change_percentage") String? atlChangePercentage,
    // @JsonKey(name: "atl_date") String? atlDate,
    // @JsonKey(name: "last_update") String? lastUpdated,
  }) = _Crypto;

  const Crypto._();

  factory Crypto.fromJson(Map<String, dynamic> map) => _$CryptoFromJson(map);
}

@freezed
class ListCrypto with _$ListCrypto {
  const factory ListCrypto({List<Crypto>? data}) = _ListCrypto;
  factory ListCrypto.fromJson(Map<String, dynamic> map) =>
      _$ListCryptoFromJson(map);
}
