import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/widgets/custom_button.dart';
import 'package:velo/core/widgets/custom_text_form_field.dart';

class PromoSection extends StatelessWidget {
  const PromoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: CustomTextFormField(hintText: 'Promo Code')),
        SizedBox(width: 8.w),
        Expanded(
          child: CustomButton(title: 'Apply', onTap: () {}),
        ),
      ],
    );
  }
}
