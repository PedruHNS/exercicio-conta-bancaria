import 'package:conta_bancaria/model/operations.dart';

import '../model/account.dart';
import '../model/transaction.dart';

class CurrentAccountWithLimit extends Account implements Operations {
  CurrentAccountWithLimit(
    this._limitValue,
    super.numberAccount,
    super.name,
    super.balance,
  );

  double _limitValue;

  double get getLimitValue => _limitValue;
  set setLimitValue(limitValue) => _limitValue = limitValue;

  @override
  void withdraw(double valueWithdraw) {
    var totalValue = getBalance + getLimitValue;

    if (totalValue < valueWithdraw) {
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
    print('Limite: $getLimitValue');
    print('Saldo: $getBalance');

    for (var transaction in getListTransaction) {
      print(transaction);
    }
  }
}
