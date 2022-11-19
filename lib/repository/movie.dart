import 'dart:developer';

import 'package:arstate/arstate.dart';
import '../models/model_movie/movie.dart';
import '../models/model_outlet/outlet.dart';
import 'http.dart';

class MovieRepository {
  late XHttp http;

  MovieRepository() {
    http = XHttp(
        xBaseUrl:
            'https://api.themoviedb.org/3/discover/movie?api_key=f7db9854f528f8981be41750b1279725');
  }

  Future<ApiResult<List<Movie>>> show() async {
    return await http.get(
      '&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate',
      onSuccess: (response) {
        log(response.toString());
        return MovieResult.fromJson(response.data).results;
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
