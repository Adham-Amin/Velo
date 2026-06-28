import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_colors.dart';

class StarRow extends StatelessWidget {
  final double rating;

  const StarRow({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (i) {
        final filled = i < rating.floor();
        final half = !filled && (i < rating);
        return Icon(
          filled
              ? Icons.star
              : half
              ? Icons.star_half
              : Icons.star_border,
          color: AppColors.yellow,
          size: 20,
        );
      }),
    );
  }
}
