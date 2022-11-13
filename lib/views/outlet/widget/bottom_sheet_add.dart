import 'package:arx/config/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:movie_app/views/bank_account/widget/bottom_sheet_edit.dart';

import '../../../logic/bloc/bank_account/bank_account_bloc.dart';
import '../../../models/model_bank_account/bank_account_model.dart';

void bottomSheetAddBank(
  BuildContext context,
  BankAccountBloc bloc,
) {
  showMaterialModalBottomSheet(
    //rounded_bottom_sheet TOP RL
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    context: context,
    builder: (context) {
      final textCtlName = TextEditingController();
      final textCtlBank = TextEditingController();
      final textCtlAccountNumber = TextEditingController();

      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          color: Colors.white,
        ),
        height: MediaQuery.of(context).size.height * 0.93,
        child: Padding(
          padding: const EdgeInsets.all(Constants.kPaddingM),
          child: Column(
            children: [
              const Center(
                child: Divider(
                  thickness: 5,
                  color: Color.fromARGB(77, 158, 158, 158),
                  indent: 130,
                  endIndent: 130,
                ),
              ),
              const SizedBox(height: Constants.kPaddingL),

              //BATALKAN
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: Navigator.of(context).pop,
                    child: const Text('Batalkan'),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: Constants.kPaddingL),

              //TAMBAH AKUN BANK
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Tambah Akun Bank',
                  style: TextStyle(
                    fontSize: Constants.kFontSizeXL,
                    color: Colors.black87,
                    fontWeight: Constants.kFontWeightXL,
                  ),
                ),
              ),
              const SizedBox(height: Constants.kPaddingL),

              //FIELD NAMA BANK
              textInput(textCtlBank, Icons.account_balance, 'Nama Bank'),
              const SizedBox(height: Constants.kPaddingL),

              //FIELD NAMA REKENING
              textInput(textCtlName, Icons.person, 'Nama Rekening'),
              const SizedBox(height: Constants.kPaddingL),

              //FIELD NO REKENING
              textInput(textCtlAccountNumber, Icons.numbers, 'No Rekening'),
              const SizedBox(height: Constants.kPaddingL),

              //TOMBOL SAVE
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(Constants.kRadiusL),
                    ),
                    primary: Colors.blue.shade900,
                  ),
                  onPressed: () async {
                    if (textCtlAccountNumber.text.isNotEmpty &
                        textCtlName.text.isNotEmpty &
                        textCtlBank.text.isNotEmpty) {}
                    final bankResult = BankAccountRequest(
                      bank: textCtlBank.text,
                      accountName: textCtlName.text,
                      accountNumber: textCtlAccountNumber.text,
                    );
                    bloc.add(BankAccountEvent.create(bankResult));
                    Navigator.pop(context);
                  },
                  child: BlocBuilder<BankAccountBloc, BankAccountState>(
                    bloc: bloc,
                    builder: (context, state) {
                      return state.maybeWhen(
                        stored: () => const Text('SAVE'),
                        orElse: () => const Text('SAVE'),
                        isLoading: () => const Padding(
                          padding: EdgeInsets.all(1.0),
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
