import 'dart:developer';

import 'package:arstate/arstate.dart';
import 'package:arx/config/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/logic/bloc/outlet/outlet_bloc.dart';
import 'package:movie_app/views/crypto/widget/shimmer_bank_account.dart';
import '../../models/model_outlet/outlet.dart';
import '../bank_account/widget/bottom_sheet_edit.dart';
import '../global/widget/appbar_title_text.dart';

class OutletWrapperRoute extends StatelessWidget {
  const OutletWrapperRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => OutletBloc()..add(const OutletEvent.show())),
      child: const OutletPage(),
    );
  }
}

class OutletPage extends StatelessWidget {
  const OutletPage({Key? key}) : super(key: key);

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
              //   context.read<OutletBloc>(),
              // );
            },
          )
        ],
        title: const AppbarTitleText(titleText: 'Akun Bank'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<OutletBloc>().add(const OutletEvent.show());
        },
        child: const OutletBody(),
      ),
    );
  }
}

class OutletBody extends StatelessWidget {
  const OutletBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OutletBloc, OutletState>(
      bloc: context.read<OutletBloc>()..add(const OutletEvent.show()),
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const ShimmerCrypto(),
          isError: (e) {
            return StateWidget.error(
              stateContentType: StateContentType.full,
              error: e,
              onRetry: () {
                context.read<OutletBloc>().add(const OutletEvent.show());
              },
            );
          },
          loadedShow: (outletList) {
            print(outletList.length.toString());
            return OutletListWidget(outletList);
            // return Container();
          },
        );
      },
    );
  }
}

class OutletListWidget extends StatelessWidget {
  final List<Outlet> bankAccountList;
  const OutletListWidget(this.bankAccountList, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bankAccountList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(
            Constants.kPaddingM,
            Constants.kPaddingS,
            Constants.kPaddingM,
            Constants.kPaddingS,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(Constants.kRadiusL),
            ),
            width: double.infinity,
            height: 110,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                Constants.kPaddingM,
                Constants.kPaddingM,
                Constants.kPaddingM,
                Constants.kPaddingM,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.account_balance, size: 13),
                      const SizedBox(width: 10),
                      Text(
                        bankAccountList[index].id.toString(),
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: Constants.kFontWeightM,
                          fontSize: Constants.kFontSizeL,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 20,
                    thickness: 2,
                    indent: 1,
                    endIndent: 1,
                  ),

                  //bottom of card
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: Colors.white,
                            child: Text(
                              bankAccountList[index].name,
                              style: const TextStyle(
                                fontSize: Constants.kFontSizeS,
                                fontWeight: Constants.kFontWeightM,
                              ),
                            ),
                          ),
                          Text(bankAccountList[index].id.toString()),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_outlined)
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
