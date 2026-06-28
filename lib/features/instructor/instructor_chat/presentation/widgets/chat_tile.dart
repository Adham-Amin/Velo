import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/instructor/instructor_chat/domain/entities/chat_contact_entity.dart';
import 'package:velo/features/instructor/instructor_chat/presentation/widgets/chat_avatar.dart';

class ChatTile extends StatelessWidget {
  final ChatContactEntity contact;
  final VoidCallback onTap;

  const ChatTile({super.key, required this.contact, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (direction) {},
      background: Container(
        padding: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12.r),
        ),
        alignment: Alignment.centerRight,
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12.r),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ChatAvatar(
                  url: contact.avatarUrl,
                  name: contact.name,
                  unreadCount: contact.unreadCount,
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            contact.name,
                            style: AppStyles.textSemiBold16.copyWith(
                              fontWeight: contact.unreadCount > 0
                                  ? FontWeight.w700
                                  : FontWeight.w600,
                            ),
                          ),
                          Text(
                            contact.time,
                            style: AppStyles.textRegular12.copyWith(
                              color: AppColors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        contact.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.textRegular12.copyWith(
                          color: contact.unreadCount > 0
                              ? AppColors.black.withValues(alpha: .8)
                              : AppColors.black.withValues(alpha: .4),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
