import 'package:arx/config/constants/constants.dart';
import 'package:arx/widgets/froms/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../../logic/bloc/bank_account/bank_account_bloc.dart';
import '../../../models/model_bank_account/bank_account_model.dart';
import '../../../repository/bank_acount.dart';

void bottomSheeteditBank(
  BuildContext context,
  BankAccount bankAccountRequest,
  BankAccountBloc bloc,
) {
  //DIALOG DELETE
  Future<void> _showDialogDelete() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Hapus akun bank'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Apakah anda yakin menghapus'),
                Text('akun bank?'),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Batal'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              onPressed: () {
                bloc.add(BankAccountEvent.delete(bankAccountRequest.id));
                Navigator.pop(context);
              },
              child: const Text('Hapus'),
            ),
          ],
        );
      },
    );
  }

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
      final textCtlName =
          TextEditingController(text: bankAccountRequest.accountName);
      final textCtlBank = TextEditingController(text: bankAccountRequest.bank);
      final textCtlAccountNumber =
          TextEditingController(text: bankAccountRequest.accountNumber);
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

              //BATALKAN & HAPUS BUTTON
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: Navigator.of(context).pop,
                    child: const Text('Batalkan'),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      BankAccountRepository().delete(bankAccountRequest.id);
                      // ignore: use_build_context_synchronously
                      Navigator.of(context).pop;
                    },
                    child: GestureDetector(
                      onTap: _showDialogDelete,
                      child: const Text(
                        'Hapus',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: Constants.kPaddingL),

              //EDIT TEXT TITLE
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Edit Akun Bank',
                      style: TextStyle(
                        fontSize: Constants.kFontSizeXL,
                        color: Colors.black87,
                        fontWeight: Constants.kFontWeightXL,
                      ))),
              const SizedBox(height: Constants.kPaddingL),

              //NAMA BANK
              textInput(textCtlBank, Icons.account_balance, 'Nama Bank'),
              const SizedBox(height: Constants.kPaddingL),

              //NAME REKENING
              textInput(textCtlName, Icons.person, 'Nama Rekening'),
              const SizedBox(height: Constants.kPaddingL),

              //NO REKENING
              textInput(textCtlAccountNumber, Icons.numbers, 'Nomor Rekening'),
              const SizedBox(height: Constants.kPaddingL),

              //SAVE BUTTON
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue.shade900,
                    side: const BorderSide(),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    final dataUpdate = BankAccountRequest(
                      accountName: textCtlName.text,
                      bank: textCtlBank.text,
                      accountNumber: textCtlAccountNumber.text,
                    );

                    bloc.add(
                      BankAccountEvent.update(
                        dataUpdate,
                        bankAccountRequest.id,
                      ),
                    );
                  },
                  child: BlocBuilder<BankAccountBloc, BankAccountState>(
                    bloc: bloc,
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const Text('Save'),
                        isLoading: () => const CircularProgressIndicator(),
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

XInputCustom textInput(
    TextEditingController textCtlName, IconData icon, String labelText) {
  return XInputCustom(
    controller: textCtlName,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(Constants.kRadiusL),
      ),
      filled: true,
      fillColor: const Color.fromARGB(251, 227, 230, 237),
      labelText: labelText,
      labelStyle: const TextStyle(
        fontSize: Constants.kFontSizeS,
      ),
    ),
    prefixIcon: icon,
  );
}
