import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PaymentSettlementScreen extends StatefulWidget {
  const PaymentSettlementScreen({Key? key}) : super(key: key);

  @override
  State<PaymentSettlementScreen> createState() => _PaymentSettlementScreenState();
}

class _PaymentSettlementScreenState extends State<PaymentSettlementScreen> {
  double paymentAmount = 5000;

  Future<void> _launchUPI() async {
    final upiUrl = Uri.parse('upi://pay?pa=receiver@bank&pn=Vishwaspay&am=$paymentAmount&tn=LoanSettlement');
    try {
      if (await canLaunchUrl(upiUrl)) {
        await launchUrl(upiUrl);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('✓ Payment Initiated!')));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settle Payment')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Payment Settlement', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Creditor: John Doe'),
                  SizedBox(height: 8),
                  Text('Amount: ₹5,000'),
                  SizedBox(height: 8),
                  Text('Due Date: 2026-05-05'),
                ],
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _launchUPI,
                icon: const Icon(Icons.payment),
                label: const Text('Pay Now via UPI'),
                style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 16), backgroundColor: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
