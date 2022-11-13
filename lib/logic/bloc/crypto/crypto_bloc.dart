//////////////////////////////////////////////////BLOC///////////////////////////////////////////
import 'dart:async';
import 'dart:developer';
import 'package:arstate/arstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/models/model_crypto/crypto.dart';
import 'package:movie_app/repository/crypto.dart';

import '../../../models/model_post/post.dart';
import '../../../repository/post.dart';
part 'crypto_bloc.freezed.dart';
part 'crypto_event.dart';
part 'crypto_state.dart';

class CryptoBloc extends Bloc<CryptoEvent, CryptoState> {
  CryptoBloc() : super(const _Initial()) {
    on<CryptoEvent>(_onCryptoEvent);
  }

  Future<void> _onCryptoEvent(
      CryptoEvent event, Emitter<CryptoState> emit) async {
    log('onCrptoBloc');
    await event.when(
      started: () async {},
      show: () async {
        emit(_getLoadingState());
        final ApiResult<List<Crypto>> apiResult =
            await CryptoRepository().show();
        apiResult.when(
          success: (data) async {
            log(data.length.toString());
            emit(CryptoState.loadedShow(data));
          },
          failure: (NetworkExceptions error) async {
            emit(_getErrorState(error));
          },
        );
      },
    );
  }

  CryptoState _getErrorState(NetworkExceptions networkExceptions) {
    return CryptoState.isError(networkExceptions);
  }

  CryptoState _getLoadingState() {
    return const CryptoState.isLoading();
  }
}
