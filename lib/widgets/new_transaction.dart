import 'package:flutter/material.dart';
import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleCont = TextEditingController();
  final amtCont = TextEditingController();

  NewTransaction(this.addTx);

  void submitData() {
    final enteredTitle = titleCont.text;
    final enteredAmount = double.parse(amtCont.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
    return;
  }
    addTx(
        titleCont.text,
        double.parse(amtCont.text),
      );
    }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleCont,
              onSubmitted: (_) => submitData(),
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amtCont,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            FlatButton(
              child: Text('Add Transcation'),
              textColor: Colors.purple,
              onPressed:submitData,
            ),
          ],
        ),
      ),
    );
  }
}
