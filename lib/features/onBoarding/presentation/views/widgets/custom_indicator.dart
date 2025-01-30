import 'package:flutter/material.dart';
import 'package:myapp/core/theme/app_colors.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, required this.active});
  final bool active;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        color: active ? AppColors.primaryColor : AppColors.grayColor,
        borderRadius: BorderRadius.circular(100),
      ),
      duration: const Duration(
        milliseconds: 300,
      ),
      height: 10,
      width: active ? 30 : 10,
    );
  }
}