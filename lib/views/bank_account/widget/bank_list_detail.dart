import 'package:arx/config/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/views/bank_account/widget/bottom_sheet_edit.dart';

import '../../../logic/bloc/bank_account/bank_account_bloc.dart';
import '../../../models/model_bank_account/bank_account_model.dart';

class BankAccountListWidget extends StatelessWidget {
  final List<BankAccount> bankAccountList;
  const BankAccountListWidget(this.bankAccountList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bankAccountList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => bottomSheeteditBank(
            context,
            bankAccountList[index],
            context.read<BankAccountBloc>(),
          ),
          child: Padding(
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
                          bankAccountList[index].bank,
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
                                bankAccountList[index].accountName,
                                style: const TextStyle(
                                  fontSize: Constants.kFontSizeS,
                                  fontWeight: Constants.kFontWeightM,
                                ),
                              ),
                            ),
                            Text(bankAccountList[index].accountNumber),
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
          ),
        );
      },
    );
  }
}
