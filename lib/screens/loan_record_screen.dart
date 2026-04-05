import 'package:flutter/material.dart';

class LoanRecordScreen extends StatelessWidget {
  final TextEditingController lenderNameController = TextEditingController();
  final TextEditingController borrowerNameController = TextEditingController();
  final TextEditingController loanAmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loan Record'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: lenderNameController,
              decoration: InputDecoration(labelText: 'Lender Name'),
            ),
            TextField(
              controller: borrowerNameController,
              decoration: InputDecoration(labelText: 'Borrower Name'),
            ),
            TextField(
              controller: loanAmountController,
              decoration: InputDecoration(labelText: 'Loan Amount'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle form submission
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}