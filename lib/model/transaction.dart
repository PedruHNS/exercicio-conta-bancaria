
class Transaction {
  DateTime dateTransaction;
  double valueTransaction;
  String descriptionTransaction;
  
  Transaction({
    required this.dateTransaction,
    required this.valueTransaction,
    required this.descriptionTransaction,
  });

  @override
  String toString() {
    return '''
          Data: $dateTransaction
          Valor: $valueTransaction
          Descrição: $descriptionTransaction
    ''';
  }

  
}
