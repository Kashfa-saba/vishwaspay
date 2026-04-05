import 'package:flutter/material.dart';

class LoanRecordScreen extends StatefulWidget {
  const LoanRecordScreen({Key? key}) : super(key: key);

  @override
  State<LoanRecordScreen> createState() => _LoanRecordScreenState();
}

class _LoanRecordScreenState extends State<LoanRecordScreen> {
  final _formKey = GlobalKey<FormState>();
  String lenderName = '';
  String borrowerName = '';
  double amount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Record a Loan')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const Text('Two-Way Handshake: Record Loan Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 24),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Lender Name', border: OutlineInputBorder()),
                onSaved: (value) => lenderName = value ?? '',
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Borrower Name', border: OutlineInputBorder()),
                onSaved: (value) => borrowerName = value ?? '',
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Loan Amount (₹)', border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
                onSaved: (value) => amount = double.tryParse(value ?? '0') ?? 0,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('✓ Loan recorded!')));
                },
                child: const Text('Create Loan Record'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
