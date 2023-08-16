import 'dart:io';

import 'package:conta_bancaria/model/account.dart';

import '../accounts/current_account.dart';
import '../accounts/current_account_with_limit.dart';
import '../accounts/savings_account.dart';

class Repository {
  List<Account> accounts = [
    CurrentAccount(
      '123123123',
      'Pedro',
      0.00,
    ),
    SavingsAccount(
      DateTime(2020, 05, 30),
      '32333222',
      'João',
      0.00,
    ),
    CurrentAccountWithLimit(
      600,
      '123332222',
      'Siqueira',
      0.00,
    )
  ];

  String input({required String mensage}) {
    String? input;
    while (input == null) {
      print(mensage);
      input = stdin.readLineSync();
    }
    return input;
  }

  void selectAccount() {
    int option = int.parse(input(mensage: '''
    digite:
      1 - conta corrente
      2 - conta poupança
      3 - conta corrente com limite
      4 - finalizar sistema '''));
    switch (option) {
      case 1:
        selectOperation(account: accounts[0]);

        break;

      case 2:
        selectOperation(account: accounts[1]);
        break;

      case 3:
        selectOperation(account: accounts[2]);

        break;
      case 4:
        print('sistema finalizado');
        break;

      default:
        print('conta invalida');
        selectAccount();

        break;
    }
  }

  void selectOperation({required Account account}) {
    var operation = int.parse(input(mensage: '''
    digite:
      1 - deposito
      2 - saque
      3 - extrato 
      4 - voltar '''));

    switch (operation) {
      case 1:
        var value =
            double.parse(input(mensage: 'quanto deseja depositar? R\$: '));
        account.deposit(value);
        selectOperation(account: account);

        break;
      case 2:
        var value = double.parse(input(mensage: 'deseja sacar quanto? R\$:'));
        account.withdraw(value);
        selectOperation(account: account);
        break;
      case 3:
        account.extract();
        selectOperation(account: account);
        break;
      case 4:
        selectAccount();
        break;
      default:
        print('não entendi');
        selectOperation(account: account);
    }
  }

  void start() {
    selectAccount();
  }
}
