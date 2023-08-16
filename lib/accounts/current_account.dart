import 'package:conta_bancaria/model/account.dart';
import 'package:conta_bancaria/model/operations.dart';

import '../model/transaction.dart';

class CurrentAccount extends Account implements Operations {
  CurrentAccount(
    super.numberAccount,
    super.name,
    super.balance,
  );

  @override
  void withdraw(double valueWithdraw) {
    if (getBalance < valueWithdraw) {
      print('saldo insuficiente');
    } else {
      setBalance = (getBalance - valueWithdraw);
      print('operação feita com sucesso');
    }

    setListTransaction = Transaction(
      dateTransaction: DateTime.now(),
      valueTransaction: valueWithdraw,
      descriptionTransaction: 'Debito',
    );
  }

  @override
  void extract() {
    print('Nº: $getNumberAccount');
    print('Nome: $getName');
    print('Saldo: ${getBalance.toStringAsFixed(2)}');

    for (var transaction in getListTransaction) {
      print(transaction);
    }
  }
}
