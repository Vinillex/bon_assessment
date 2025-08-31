import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SvgPicture.asset(
          'assets/logo.svg',
          height: 25,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      floating: true,
      pinned: false,
    );
  }
}
