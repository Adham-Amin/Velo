import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';

class ChatAvatar extends StatelessWidget {
  final String url;
  final String name;
  final int unreadCount;

  const ChatAvatar({
    super.key,
    required this.url,
    required this.name,
    required this.unreadCount,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(radius: 26, backgroundImage: NetworkImage(url)),
        if (unreadCount > 0)
          Positioned(
            top: -2,
            right: -2,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                '$unreadCount',
                style: AppStyles.textBold12.copyWith(color: AppColors.white),
              ),
            ),
          ),
      ],
    );
  }
}
