import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {

  Function AddNewTX;
  AddTransaction({required this.AddNewTX});
  final nameController = TextEditingController();
  final priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(label: Text('Transaction Name')),
            controller: nameController,
          ),
          TextField(
            decoration: InputDecoration(label: Text('Transaction Price')),
            controller: priceController,
            keyboardType: TextInputType.number,
          ),
          TextButton(
            child: Text('Add Transaction'),
            onPressed: () {
              AddNewTX(nameController.text,double.parse(priceController.text));
            },
          )
        ],
      ),
    );
  }
}
