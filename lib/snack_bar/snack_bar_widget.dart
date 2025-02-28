import 'package:flutter/material.dart';

class SnackBarWidget {
  void showSnackBar(
    BuildContext context, {
    required Widget content,
    Color? backgroundColor,
    int? duration,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: content,
        backgroundColor: backgroundColor ?? Colors.grey,
        duration: Duration(seconds: duration ?? 1),
      ),
    );
  }
}
