import 'dart:developer';

import 'package:arstate/arstate.dart';
import 'package:movie_app/models/model_crypto/crypto.dart';

import '../models/model_bank_account/bank_account_model.dart';
import 'http.dart';

class CryptoRepository {
  late XHttp http;

  CryptoRepository() {
    http = XHttp(xBaseUrl: 'https://api.coingecko.com/api');
  }

  // 'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd'

  Future<ApiResult<List<Crypto>>> show() async {
    return await http.get(
      '/v3/coins/markets?vs_currency=usd',
      onSuccess: (response) {
        List<Crypto>? list;
        try {
          list = ListCrypto.fromJson(response.data).data;
        } catch (e) {
          log('error: ${e.toString()}');
        }
        log('>>>>>>>>>b');
        return list;
      },
      authorization: false,
    );
  }
}
