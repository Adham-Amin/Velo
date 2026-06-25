import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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

  Future<void> _pickImage(ImageSource source) async {
    final picked = await ImagePicker().pickImage(
      source: source,
      imageQuality: 80,
    );

    if (picked != null) {
      onPick(File(picked.path));
    }
  }

  void _showImageSourceSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Gallery'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery);
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Camera'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => _showImageSourceSheet(context),
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
