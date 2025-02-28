import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget({
    required this.onTap,
    required this.child,
    this.width = double.infinity,
    this.height = 50,
    this.buttonShape,
    super.key,
  });

  // on tap.
  void Function()? onTap;

  // widget into button.
  Widget child;

  // put width & height.
  double width, height;

  // shape button.
  OutlinedBorder? buttonShape;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      /// ON TAP BUTTON.
      onPressed: onTap,

      /// STYLE OF MY BUTTON.
      style: ElevatedButton.styleFrom(
        /// MANAGEMENT SIZE OF MY BUTTON.
        minimumSize: Size(width, height),

        /// MANAGEMENT SHAPE OF MY BUTTON.
        shape:
            buttonShape ??
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

      ),

      /// PUT WIDGET IN BUTTON.
      child: child,
    );
  }
}
