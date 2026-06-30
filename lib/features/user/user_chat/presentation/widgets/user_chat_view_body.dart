import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/widgets/custom_text_form_field.dart';
import 'package:velo/features/user/user_chat/presentation/widgets/user_chat_list.dart';

class UserChatViewBody extends StatelessWidget {
  const UserChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 12.h),
          CustomTextFormField(
            hintText: 'Search instructors...',
            prefixIcon: Icon(Icons.search),
          ),
          SizedBox(height: 12.h),
          UserChatList(),
        ],
      ),
    );
  }
}
