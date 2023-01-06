import 'dart:developer';

import 'package:arstate/arstate.dart';
import '../models/model_movie/movie.dart';
import '../models/model_outlet/outlet.dart';
import 'http.dart';

class MovieRepository {
  late XHttp http;

  MovieRepository() {
    http = XHttp(xBaseUrl: 'https://api.themoviedb.org/3');
  }

  Future<ApiResult<List<Movie>>> show() async {
    return await http.get(
      // '/discover/movie?api_key=f7db9854f528f8981be41750b1279725',
      '/trending/movie/week?api_key=f7db9854f528f8981be41750b1279725',

      onSuccess: (response) {
        log(response.toString());
        log('>>>>>>>');
        return MovieResult.fromJson(response.data).results;
      },
      authorization: true,
    );
  }

  Future<ApiResult<List<MoviePopular>>> showAll() async {
    return await http.get(
      '/discover/movie?api_key=f7db9854f528f8981be41750b1279725',
      onSuccess: (response) {
        log('$response >>>>>>');
        return MovieResultPopular.fromJson(response.data).results;
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
