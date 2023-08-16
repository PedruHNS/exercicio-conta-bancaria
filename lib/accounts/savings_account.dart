import 'package:conta_bancaria/model/account.dart';
import 'package:conta_bancaria/model/operations.dart';
import 'package:conta_bancaria/model/transaction.dart';

class SavingsAccount extends Account implements Operations {
  SavingsAccount(
    this._birthday,
    super.numberAccount,
    super.name,
    super.balance,
  );

  DateTime _birthday;

  DateTime get getBirthday => _birthday;

  set setBirthday(DateTime birthday) => _birthday = birthday;

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
    print('aniversário: $getBirthday');
    print('Saldo: $getBalance');

    for (var transaction in getListTransaction) {
      print(transaction);
    }
  }
}
