import 'package:flutter/material.dart';
import 'package:planeje/modules/core/domain/models/snack_bar_type_model.dart';
import 'package:planeje/modules/core/presenter/widgets/custom_snack_bar_widget.dart';

class SnackBarFactory {
  static void error({
    required String message,
    required ScaffoldMessengerState messenger,
    bool replaceCurrent = true,
    Duration duration = const Duration(seconds: 2, milliseconds: 500),
    double? fontSize,
  }) {
    return CustomSnackBarWidget(
      messenger,
      duration: duration,
      fontSize: fontSize,
    ).show(SnackBarTypeModel.error(message), replaceCurrent: replaceCurrent);
  }

  static void alert({
    required String message,
    required ScaffoldMessengerState messenger,
    bool replaceCurrent = true,
    Duration duration = const Duration(seconds: 2, milliseconds: 500),
    double? fontSize,
  }) {
    return CustomSnackBarWidget(
      messenger,
      duration: duration,
    ).show(SnackBarTypeModel.alert(message), replaceCurrent: replaceCurrent);
  }

  static void success({
    required String message,
    required ScaffoldMessengerState messenger,
    bool replaceCurrent = true,
    Duration duration = const Duration(seconds: 2, milliseconds: 500),
    double? fontSize,
  }) {
    return CustomSnackBarWidget(
      duration: duration,
      messenger,
    ).show(SnackBarTypeModel.success(message), replaceCurrent: replaceCurrent);
  }
}
