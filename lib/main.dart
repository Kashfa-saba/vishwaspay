import 'package:flutter/material.dart';
import 'screens/loan_record_screen.dart';
import 'screens/handshake_verification_screen.dart';
import 'screens/trust_score_dashboard.dart';
import 'screens/payment_settlement_screen.dart';

void main() {
  runApp(const VishwaspayApp());
}

class VishwaspayApp extends StatelessWidget {
  const VishwaspayApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vishwaspay - Legal Ledger',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const HomeScreen(),
      routes: {
        '/record': (context) => const LoanRecordScreen(),
        '/verify': (context) => const HandshakeVerificationScreen(),
        '/dashboard': (context) => const TrustScoreDashboard(),
        '/settle': (context) => const PaymentSettlementScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vishwaspay')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(16)),
                child: const Column(
                  children: [
                    Icon(Icons.handshake, size: 64, color: Colors.blue),
                    SizedBox(height: 16),
                    Text('Vishwaspay', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blue)),
                    SizedBox(height: 8),
                    Text('Legal Ledger & Social Trust Platform', style: TextStyle(fontSize: 14, color: Colors.grey)),
                  ],
                ),
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => Navigator.pushNamed(context, '/record'),
                  icon: const Icon(Icons.add_circle),
                  label: const Text('Record Loan'),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => Navigator.pushNamed(context, '/verify'),
                  icon: const Icon(Icons.check_circle),
                  label: const Text('Verify Handshake'),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => Navigator.pushNamed(context, '/dashboard'),
                  icon: const Icon(Icons.trending_up),
                  label: const Text('Trust Dashboard'),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => Navigator.pushNamed(context, '/settle'),
                  icon: const Icon(Icons.payment),
                  label: const Text('Settle Payment'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
