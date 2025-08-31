import 'package:flutter/material.dart';
import '../models/credit_card_bill.dart';
import 'bill_card.dart';

class CreditCardBillsList extends StatelessWidget {
  const CreditCardBillsList({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for credit card bills
    final List<CreditCardBill> bills = [
      const CreditCardBill(
        cardName: 'Chase Freedom',
        cardNumber: '**** **** **** 1234',
        amount: 1250.75,
        dueDate: '2024-01-15',
        status: 'Pending',
        statusColor: Colors.orange,
        cardIcon: 'assets/chasefreedom7.png',
      ),
      const CreditCardBill(
        cardName: 'American Express Gold',
        cardNumber: '**** **** **** 5678',
        amount: 890.50,
        dueDate: '2024-01-20',
        status: 'Paid',
        statusColor: Colors.green,
        cardIcon: 'assets/amexgold.png',
      ),
      const CreditCardBill(
        cardName: 'Discover It',
        cardNumber: '**** **** **** 9012',
        amount: 567.25,
        dueDate: '2024-01-25',
        status: 'Overdue',
        statusColor: Colors.red,
        cardIcon: 'assets/discover.png',
      ),
    ];

    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        if (index == 0) {
          // Section header
          return Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
            child: Text(
              'Credit Card Bills',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          );
        } else if (index <= bills.length) {
          // Bill cards (index - 1 because index 0 is the header)
          final bill = bills[index - 1];
          return BillCard(bill: bill);
        } else {
          // End of list message
          return Padding(
            padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
            child: Center(
              child: Text(
                "That's all folks!",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          );
        }
      }, childCount: bills.length + 2), // +2 for header and end message
    );
  }
}
