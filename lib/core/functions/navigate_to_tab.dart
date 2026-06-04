import 'package:flutter/material.dart';
import 'package:velo/features/main/main_view.dart';

void navigateToTab(BuildContext context, int index) {
  MainView.mainViewKey.currentState?.changeTab(index);
  FocusManager.instance.primaryFocus?.unfocus();
}
