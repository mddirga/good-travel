import 'package:flutter/material.dart';
import 'package:good_travel/config/themes/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Page',
        style: blackTextStyle.copyWith(
          fontSize: 20,
          fontWeight: semiBold,
        ),
      ),
    );
  }
}
