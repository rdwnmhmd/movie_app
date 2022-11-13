import 'package:arstate/arstate.dart';

import '../models/model_bank_account/bank_account_model.dart';
import 'http.dart';

class BankAccountRepository {
  late XHttp http;

  BankAccountRepository() {
    http = XHttp(xBaseUrl: 'https://consultation.rumahpeluang.com/api');
  }

  Future<ApiResult<BankAccount>> show() async {
    return await http.get(
      '/bank-accounts',
      onSuccess: (response) {
        return BankAccountModel.fromJson(response.data);
      },
      authorization: true,
    );
  }

  Future<ApiResult<List<BankAccount>>> showAll() async {
    return await http.get(
      '/bank-accounts',
      onSuccess: (response) {
        return BankAccountModel.fromJson(response.data).data;
      },
      authorization: true,
    );
  }

  Future<ApiResult<String>> store(BankAccountRequest request) async {
    return await http.post(
      '/bank-accounts',
      data: request.toJson(),
    );
  }

  Future<ApiResult<String>> update(BankAccountRequest request, int id) async {
    return await http.post(
      '/bank-accounts/$id',
      data: request.toJson(),
      onSuccess: (response) => BankAccountModel.fromJson(response.data),
    );
  }

  Future<ApiResult<String>> delete(int id) async {
    return await http.delete(
      '/bank-accounts/$id',
    );
  }
}
