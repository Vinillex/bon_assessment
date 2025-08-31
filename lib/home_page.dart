import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/reward_card.dart';
import 'widgets/credit_card_bills_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              // Custom App Bar
              const CustomAppBar(),

              // Reward Card
              const RewardCard(),

              // Credit Card Bills List
              const CreditCardBillsList(),
            ],
          ),

          // Lottie overlay covering the entire screen
          Positioned.fill(
            child: IgnorePointer(
              child: Lottie.asset(
                'assets/celebration.json',
                fit: BoxFit.cover,
                repeat: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
