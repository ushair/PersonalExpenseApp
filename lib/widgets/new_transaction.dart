import 'package:flutter/material.dart';
import 'package:personal_expenses/widgets/user_transaction.dart';
import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleCont = TextEditingController();
  final amtCont = TextEditingController();

  NewTransaction(this.addTx);
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
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amtCont,
              // onChanged: (val) =>
              //   amountInput = val,
            ),
            FlatButton(
              child: Text('Add Transcation'),
              textColor: Colors.purple,
              onPressed: () {
                addTx(
                  titleCont.text,
                  double.parse(amtCont.text),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
