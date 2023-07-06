import 'package:flutter/material.dart';

import '../Models/Transaction.dart';
import 'AddTransaction.dart';
import 'TransactionList.dart';

class LiftTheStateUpTX extends StatefulWidget {
  LiftTheStateUpTX({Key? key}) : super(key: key);

  @override
  State<LiftTheStateUpTX> createState() => _LiftTheStateUpTXState();
}

class _LiftTheStateUpTXState extends State<LiftTheStateUpTX> {
  void AddNewTX(String Name, double Price) {
    setState(() {
      transactions.add(
        Transaction(id: 1, name: Name, date: DateTime.now(), price: Price),
      );
    });
  }

  final List<Transaction> transactions = [
    Transaction(id: 1, name: 't1', date: DateTime.now(), price: 12.03),
    Transaction(id: 2, name: 't2', date: DateTime.now(), price: 24.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddTransaction(AddNewTX: AddNewTX),
        TransactionList(transactions: transactions),
      ],
    );
  }
}
