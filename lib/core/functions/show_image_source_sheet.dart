import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<void> _pickImage(
  ImageSource source, {
  required void Function(File) onPick,
}) async {
  final picked = await ImagePicker().pickImage(
    source: source,
    imageQuality: 80,
  );

  if (picked != null) {
    onPick(File(picked.path));
  }
}

void showImageSourceSheet(
  BuildContext context, {
  required void Function(File) onPick,
}) {
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
                _pickImage(ImageSource.gallery, onPick: onPick);
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Camera'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.camera, onPick: onPick);
              },
            ),
          ],
        ),
      );
    },
  );
}
