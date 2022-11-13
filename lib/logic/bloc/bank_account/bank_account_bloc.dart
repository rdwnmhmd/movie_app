//////////////////////////////////////////////////BLOC///////////////////////////////////////////
import 'dart:async';
import 'dart:developer';
import 'package:arstate/arstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../models/model_bank_account/bank_account_model.dart';
import '../../../repository/bank_acount.dart';
part 'bank_account_state.dart';
part 'bank_account_event.dart';
part 'bank_account_bloc.freezed.dart';

class BankAccountBloc extends Bloc<BankAccountEvent, BankAccountState> {
  BankAccountBloc() : super(const _Initial()) {
    on<BankAccountEvent>(_onBankAccountEvent);
  }

  Future<void> _onBankAccountEvent(
    BankAccountEvent event,
    Emitter<BankAccountState> emit,
  ) async {
    await event.when(
      showAll: () {},
      update: (bankAccounRequest, id) async {
        emit(_getLoadingState());
        final ApiResult<String> apiResult =
            await BankAccountRepository().update(bankAccounRequest, id);
        apiResult.when(
          success: (data) async {
            print(data);
            // emit(BankAccountState.loadedShow(data));
          },
          failure: (NetworkExceptions error) async {
            print(error.messageDescription());
            emit(_getErrorState(error));
          },
        );
      },
      delete: (id) async {
        emit(_getLoadingState());
        final ApiResult<String> apiResult =
            await BankAccountRepository().delete(id);
        apiResult.when(
          success: (_) async {
            emit(const BankAccountState.deleted());
          },
          failure: (NetworkExceptions error) async {
            emit(_getErrorState(error));
          },
        );
      },
      create: (bankAccount) async {
        emit(_getLoadingState());
        final ApiResult<String> apiResult =
            await BankAccountRepository().store(bankAccount);
        log(apiResult.toString());

        // apiResult.when(
        //   success: (data) async {
        //     print('success');
        //   },
        //   failure: (NetworkExceptions error) async {
        //     print('failure');
        //     // emit(_getErrorState(error));
        //   },
        // );
      },
      started: () async {},
      show: () async {
        emit(_getLoadingState());
        final ApiResult<List<BankAccount>> apiResult =
            await BankAccountRepository().showAll();
        apiResult.when(
          success: (data) async {
            emit(BankAccountState.loadedShow(data));
          },
          failure: (NetworkExceptions error) async {
            emit(_getErrorState(error));
          },
        );
      },
    );
  }

  BankAccountState _getErrorState(NetworkExceptions networkExceptions) {
    return BankAccountState.isError(networkExceptions);
  }

  BankAccountState _getLoadingState() {
    return const BankAccountState.isLoading();
  }
}
