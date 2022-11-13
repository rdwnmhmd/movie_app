//////////////////////////////////////////////////BLOC///////////////////////////////////////////
import 'dart:async';
import 'dart:developer';
import 'package:arstate/arstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/models/model_outlet/outlet.dart';
import 'package:movie_app/repository/crypto.dart';

import '../../../models/model_post/post.dart';
import '../../../repository/outlet.dart';
import '../../../repository/post.dart';
part 'outlet_bloc.freezed.dart';
part 'outlet_event.dart';
part 'outlet_state.dart';

class OutletBloc extends Bloc<OutletEvent, OutletState> {
  OutletBloc() : super(const _Initial()) {
    on<OutletEvent>(_onOutletEvent);
  }

  Future<void> _onOutletEvent(
      OutletEvent event, Emitter<OutletState> emit) async {
    await event.when(
      started: () async {},
      show: () async {
        emit(_getLoadingState());
        final ApiResult<List<Outlet>> apiResult =
            await OutletRepository().show();
        apiResult.when(
          success: (data) async {
            log(data.length.toString());
            emit(OutletState.loadedShow(data));
          },
          failure: (NetworkExceptions error) async {
            log('error');
            emit(_getErrorState(error));
          },
        );
      },
    );
  }

  OutletState _getErrorState(NetworkExceptions networkExceptions) {
    return OutletState.isError(networkExceptions);
  }

  OutletState _getLoadingState() {
    return const OutletState.isLoading();
  }
}
