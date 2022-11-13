import 'package:arstate/arstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/logic/bloc/crypto/crypto_bloc.dart';
import 'package:movie_app/views/bank_account/widget/bank_list_detail.dart';
import 'package:movie_app/views/bank_account/widget/bottom_sheet_add.dart';
import 'package:movie_app/views/bank_account/widget/shimmer_bank_account.dart';
import 'package:movie_app/views/crypto/widget/crypto_list_detail.dart';
import 'package:movie_app/views/crypto/widget/shimmer_bank_account.dart';
import '../../logic/bloc/bank_account/bank_account_bloc.dart';
import '../global/widget/appbar_title_text.dart';

class CryptoWrapperRoute extends StatelessWidget {
  const CryptoWrapperRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => CryptoBloc()..add(const CryptoEvent.show())),
      child: const CryptoPage(),
    );
  }
}

class CryptoPage extends StatelessWidget {
  const CryptoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue.shade900,
          ),
        ),
        actions: [
          //ADD ICON BANK ACCOUNT ON APPBAR
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.blue.shade900,
            ),
            onPressed: () {
              //SHOW MODAL SHEET
              // bottomSheetAddBank(
              //   context,
              //   context.read<CryptoBloc>(),
              // );
            },
          )
        ],
        title: const AppbarTitleText(titleText: 'Akun Bank'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<CryptoBloc>().add(const CryptoEvent.show());
        },
        child: const CryptoBody(),
      ),
    );
  }
}

class CryptoBody extends StatelessWidget {
  const CryptoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CryptoBloc, CryptoState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const ShimmerCrypto(),
          isError: (e) {
            return StateWidget.error(
              stateContentType: StateContentType.full,
              error: e,
              onRetry: () {
                context.read<CryptoBloc>().add(const CryptoEvent.show());
              },
            );
          },
          loadedShow: (cryptoList) {
            return CryptoListWidget(cryptoList);
          },
        );
      },
    );
  }
}
