//////////////////////////////////////////////////BLOC///////////////////////////////////////////
import 'dart:async';
import 'package:arstate/arstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/model_post/post.dart';
import '../../../repository/post.dart';
part 'post_bloc.freezed.dart';
part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(const _Initial()) {
    on<PostEvent>(_onPostEvent);
  }

  Future<void> _onPostEvent(PostEvent event, Emitter<PostState> emit) async {
    await event.when(
      started: () async {},
      show: (int id) async {
        emit(_getLoadingState());
        final ApiResult<Post> apiResult = await PostRepository().show(id);
        apiResult.when(
          success: (Post data) async {
            emit(PostState.loadedShow(data));
          },
          failure: (NetworkExceptions error) async {
            emit(_getErrorState(error));
          },
        );
      },
    );
  }

  PostState _getErrorState(NetworkExceptions networkExceptions) {
    return PostState.isError(networkExceptions);
  }

  PostState _getLoadingState() {
    return const PostState.isLoading();
  }
}
