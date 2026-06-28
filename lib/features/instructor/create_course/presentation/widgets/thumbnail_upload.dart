import 'dart:io';
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velo/core/utils/app_colors.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/core/widgets/custom_snack_bar.dart';

class ThumbnailUpload extends StatefulWidget {
  final ValueChanged<File?>? onImageSelected;
  const ThumbnailUpload({super.key, this.onImageSelected});

  @override
  State<ThumbnailUpload> createState() => _ThumbnailUploadState();
}

class _ThumbnailUploadState extends State<ThumbnailUpload> {
  File? _pickedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _openGallery() async {
    try {
      final XFile? xFile = await _picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
        maxWidth: 1200,
        maxHeight: 800,
      );

      if (xFile == null) return;

      final file = File(xFile.path);

      final bytes = await file.length();
      if (bytes > 5 * 1024 * 1024) {
        if (mounted) {
          customSnackBar(
            context: context,
            message: 'File is too large. Please choose an image under 5 MB.',
            type: AnimatedSnackBarType.error,
          );
        }
        return;
      }

      setState(() => _pickedImage = file);
      widget.onImageSelected?.call(file);
    } catch (e) {
      if (mounted) {
        customSnackBar(
          context: context,
          message: 'Could not open gallery. Please try again.',
          type: AnimatedSnackBarType.error,
        );
      }
    }
  }

  void _removeImage() {
    setState(() => _pickedImage = null);
    widget.onImageSelected?.call(null);
  }

  @override
  Widget build(BuildContext context) {
    return _pickedImage == null ? _buildPlaceholder() : _buildPreview();
  }

  Widget _buildPlaceholder() {
    return GestureDetector(
      onTap: _openGallery,
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.greyBorder),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cloud_upload_outlined,
              size: 36,
              color: AppColors.greyBorder,
            ),
            SizedBox(height: 8),
            Text(
              'Upload Course Thumbnail',
              style: AppStyles.textRegular14.copyWith(
                color: AppColors.greyBorder,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'PNG, JPG up to 5MB',
              style: AppStyles.textRegular12.copyWith(
                color: AppColors.greyBorder,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPreview() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.file(
            _pickedImage!,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: GestureDetector(
            onTap: _openGallery,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withValues(alpha: 0.30),
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.edit_outlined, color: Colors.white, size: 24),
                  SizedBox(height: 6),
                  Text(
                    'Change Thumbnail',
                    style: AppStyles.textRegular12.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: GestureDetector(
            onTap: _removeImage,
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.close_rounded),
            ),
          ),
        ),
      ],
    );
  }
}
