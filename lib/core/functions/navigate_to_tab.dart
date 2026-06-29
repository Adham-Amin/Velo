import 'package:flutter/material.dart';
import 'package:velo/features/instructor/main/instructor_main_view.dart';
import 'package:velo/features/user/main/main_view.dart';

void navigateToTab(BuildContext context, int index) {
  MainView.mainViewKey.currentState?.changeTab(index);
  FocusManager.instance.primaryFocus?.unfocus();
}

void navigateToTabInstructor(BuildContext context, int index) {
  InstructorMainView.mainViewKey.currentState?.changeTab(index);
  FocusManager.instance.primaryFocus?.unfocus();
}
