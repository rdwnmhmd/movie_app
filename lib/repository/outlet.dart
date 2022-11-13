import 'package:arstate/arstate.dart';
import '../models/model_outlet/outlet.dart';
import 'http.dart';

class OutletRepository {
  late XHttp http;

  OutletRepository() {
    http = XHttp(xBaseUrl: 'https://aviramawp.com/api/');
  }

  Future<ApiResult<List<Outlet>>> show() async {
    return await http.get(
      'store',
      onSuccess: (response) {
        return OutletResult.fromJson(response.data).data;
      },
      authorization: true,
    );
  }
}

//   Future<ApiResult<List<BankAccount>>> showAll() async {
//     return await http.get(
//       '/bank-accounts',
//       onSuccess: (response) {
//         return BankAccountModel.fromJson(response.data).data;
//       },
//       authorization: true,
//     );
//   }

//   Future<ApiResult<String>> store(BankAccountRequest request) async {
//     return await http.post(
//       '/bank-accounts',
//       data: request.toJson(),
//     );
//   }

//   Future<ApiResult<String>> update(BankAccountRequest request, int id) async {
//     return await http.post(
//       '/bank-accounts/$id',
//       data: request.toJson(),
//       onSuccess: (response) => BankAccountModel.fromJson(response.data),
//     );
//   }

//   Future<ApiResult<String>> delete(int id) async {
//     return await http.delete(
//       '/bank-accounts/$id',
//     );
//   }
// }
