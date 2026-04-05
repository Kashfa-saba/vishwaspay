import 'package:flutter/material.dart';

class TrustScoreDashboard extends StatelessWidget {
  const TrustScoreDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trust Score Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text('Your Trust Profile', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue.shade400, Colors.blue.shade700]),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                children: [
                  Text('Trust Score', style: TextStyle(color: Colors.white70, fontSize: 16)),
                  SizedBox(height: 8),
                  Text('850 / 1000', style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Excellent', style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Text('Statistics', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            _StatTile('On-Time Repayments', '95%', Colors.green),
            const SizedBox(height: 12),
            _StatTile('Active Loans', '3', Colors.orange),
            const SizedBox(height: 12),
            _StatTile('Hearts Available', '4/5', Colors.red),
          ],
        ),
      ),
    );
  }

  Widget _StatTile(String label, String value, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(border: Border.all(color: color.withOpacity(0.3)), borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(label), Text(value, style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 16))],
      ),
    );
  }
}
