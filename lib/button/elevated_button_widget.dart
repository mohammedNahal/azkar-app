import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget({
    required this.onTap,
    required this.child,
    this.width = double.infinity,
    this.height = 50,
    this.buttonShape,
    this.backgroundColor,
    this.childColor,
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

  // background color.
  Color? backgroundColor;

  // foreground Color.
  Color? childColor;

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

        /// Background Color.
        backgroundColor: backgroundColor ?? Colors.black,

        /// Child Color.
        foregroundColor: childColor ?? Colors.white,
      ),

      /// PUT WIDGET IN BUTTON.
      child: child,
    );
  }
}
