import 'package:flutter/material.dart';

import '../Models/Transaction.dart';

class TransactionList extends StatelessWidget {
  List<Transaction> transactions = [];

  TransactionList({required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Row(
              children: [
                CircleAvatar(
                  child: Text(
                    "\$${transactions[index].price.toStringAsFixed(2)}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  maxRadius: 32,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transactions[index].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        transactions[index].date.toString(),
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
