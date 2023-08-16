import 'package:conta_bancaria/model/operations.dart';
import 'package:conta_bancaria/model/transaction.dart';

abstract class Account implements Operations {
  Account(
    this._numberAccount,
    this._name,
    this._balance,
  );

  String _numberAccount;
  String _name;
  double _balance = 0.00;
  final List<Transaction> _listTransaction = [];

  String get getNumberAccount => _numberAccount;
  String get getName => _name;
  double get getBalance => _balance;
  List<Transaction> get getListTransaction => _listTransaction;

  set setNumberAccount(String numberAccount) {
    _numberAccount = numberAccount;
  }

  set setName(String name) {
    _name = name;
  }

  set setBalance(double balance) {
    _balance = balance;
  }

  set setListTransaction(Transaction transaction) {
    _listTransaction.add(transaction);
  }

  @override
  void deposit(double valueDeposit) {
    setBalance = (getBalance + valueDeposit);
    print('operação feita com sucesso');

    setListTransaction = Transaction(
      dateTransaction: DateTime.now(),
      valueTransaction: valueDeposit,
      descriptionTransaction: 'Credito',
    );
  }

  @override
  void transfer(String id, double value) {}
}
