import 'package:flutter/material.dart';
import 'package:good_travel/config/themes/theme.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Transaction Page',
        style: blackTextStyle.copyWith(
          fontSize: 20,
          fontWeight: semiBold,
        ),
      ),
    );
  }
}
