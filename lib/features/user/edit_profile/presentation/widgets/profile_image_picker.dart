import 'dart:io';
import 'package:flutter/material.dart';
import 'package:velo/core/functions/show_image_source_sheet.dart';
import 'package:velo/core/utils/app_assets.dart';
import 'package:velo/core/utils/app_colors.dart';

class ProfileImagePicker extends StatelessWidget {
  final File? file;
  final Function(File?) onPick;

  const ProfileImagePicker({
    super.key,
    required this.file,
    required this.onPick,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => showImageSourceSheet(context, onPick: onPick),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: file != null
                  ? FileImage(file!)
                  : AssetImage(AppAssets.imagesPlacehorderPhoto)
                        as ImageProvider,
            ),
            CircleAvatar(
              radius: 15,
              backgroundColor: AppColors.primary,
              child: Icon(
                Icons.camera_alt_rounded,
                size: 20,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
