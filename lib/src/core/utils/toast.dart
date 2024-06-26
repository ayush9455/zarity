import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

enum SnackType { success, error, warning, info }

extension on SnackType {
  Color get color {
    switch (this) {
      case SnackType.success:
        return Colors.green;
      case SnackType.error:
        return Colors.red;
      case SnackType.warning:
        return Colors.orange;
      case SnackType.info:
        return Colors.black;
    }
  }
}

void showSnackBar(
  String message, {
  Duration duration = const Duration(seconds: 2),
  Color? backgroundColor,
  double backgroundRadius = 8,
  Color textColor = Colors.white,
  SnackType snackType = SnackType.info,
}) {
  showToast(
    message,
    duration: duration,
    position: ToastPosition.bottom,
    textPadding: const EdgeInsets.all(10),
    backgroundColor: backgroundColor ?? snackType.color,
    radius: backgroundRadius,
  );
}
