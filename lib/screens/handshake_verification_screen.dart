import 'package:flutter/material.dart';

class HandshakeVerificationScreen extends StatefulWidget {
  const HandshakeVerificationScreen({Key? key}) : super(key: key);
  @override
  State<HandshakeVerificationScreen> createState() => _HandshakeVerificationScreenState();
}

class _HandshakeVerificationScreenState extends State<HandshakeVerificationScreen> {
  bool isVerified = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Two-Way Handshake')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Loan Details Pending Verification', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)),
                child: const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Lender: John Doe'),
                  SizedBox(height: 8),
                  Text('Borrower: Jane Smith'),
                  SizedBox(height: 8),
                  Text('Amount: ₹5,000'),
                ]),
              ),
              const SizedBox(height: 32),
              ElevatedButton.icon(
                onPressed: () => setState(() => isVerified = true),
                icon: const Icon(Icons.handshake),
                label: const Text('Accept & Verify'),
              ),
              if (isVerified) const Padding(
                padding: EdgeInsets.only(top: 24),
                child: Text('✓ Handshake Complete!', style: TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
