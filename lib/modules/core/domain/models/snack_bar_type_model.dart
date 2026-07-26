import 'package:flutter/material.dart';

class SnackBarTypeModel {
  final Color color;
  final String message;
  final Color bgColor;
  const SnackBarTypeModel({
    required this.color,
    required this.bgColor,
    required this.message,
  });

  factory SnackBarTypeModel.error(String message) {
    return SnackBarTypeModel(
      color: const Color.fromARGB(255, 161, 0, 0),
      message: message,
      bgColor: const Color(0xFFFFDDDD),
    );
  }

  factory SnackBarTypeModel.success(String message) {
    return SnackBarTypeModel(
      color: const Color(0xFFFFFFFF),
      message: message,
      bgColor: const Color(0xff0D880D),
    );
  }

  factory SnackBarTypeModel.alert(String message) {
    return SnackBarTypeModel(
      color: const Color.fromARGB(255, 160, 120, 0),
      message: message,
      bgColor: const Color.fromARGB(255, 240, 210, 122),
    );
  }
}
