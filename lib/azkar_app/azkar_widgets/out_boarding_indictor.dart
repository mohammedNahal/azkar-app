import 'package:flutter/material.dart';

class OutBoardingIndicator extends StatelessWidget {
  OutBoardingIndicator({
    super.key,
    required this.isSelected,
  });
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 7,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.red: Colors.grey,
      ),
    );
  }
}