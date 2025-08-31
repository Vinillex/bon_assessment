import 'package:flutter/material.dart';

class CreditCardBill {
  final String cardName;
  final String cardNumber;
  final double amount;
  final String dueDate;
  final String status;
  final Color statusColor;
  final String cardIcon;

  const CreditCardBill({
    required this.cardName,
    required this.cardNumber,
    required this.amount,
    required this.dueDate,
    required this.status,
    required this.statusColor,
    required this.cardIcon,
  });
}
