import 'package:flutter/material.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;

  const CustomBottomNavigationItem({
    super.key,
    required this.imageUrl,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
