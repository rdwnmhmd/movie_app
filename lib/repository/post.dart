import 'package:arstate/arstate.dart';
import 'package:movie_app/repository/http.dart';
import '../models/model_post/post.dart';

class PostRepository {
  late XHttp http;

  PostRepository() {
    http = XHttp();
  }

  Future<ApiResult<Post>> show(int id) async {
    return await http.get(
      '/posts/$id',
      onSuccess: (response) => Post.fromJson(response.data['data']),
      authorization: true,
    );
  }
}
