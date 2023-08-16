1. Um banco trabalha com três tipos de contas:
* conta corrente comum;
* conta corrente com limite;
* conta poupança.

Em todos os casos é necessário guardar o número da conta, o nome
do correntista e o saldo. - ok

Para a conta poupança é necessário guardar o dia do aniversário
da conta (quando são creditados os juros). - ok

Já para a conta com limite é necessário guardar o valor do limite. - ok

As contas também armazenam uma lista de transações. Uma transação
é definida por uma data, valor da transação e descrição. Se o
valor for negativo, a transação é considerada um débito (crédito
caso contrário). ok

As operações possíveis são: depósito, retirada e impressão de
extrato. Essas operações devem ser definidas numa classe abstrata
pura (interface) denominada Conta.

A operação de depósito é igual nos três tipos de conta. - ok

A retirada só é diferente na conta com limite, pois esta admite
que o saldo fique negativo até o limite estabelecido.

Finalmente o extrato é diferente para as três:
* na conta comum exibe o número da conta, nome do cliente,
transações e o saldo; - ok
* na conta limite imprime também o valor do limite; - ok
* na conta poupança imprime também o dia do aniversário. - ok

Implemente a hierarquia de classes das contas explorando
polimorfismo.

2. Faça um programa em C++ que permita ao usuário fazer depósitos,
retiradas e verificação de extrato nas suas contas a partir do
número da conta. Utilize uma única coleção (list ou vector) para
armazenar todos os tipos de contas.

-----------------
FIM