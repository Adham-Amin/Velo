import 'package:flutter/material.dart';
import 'package:velo/features/instructor/instructor_chat/presentation/pages/instructor_chat_view.dart';
import 'package:velo/features/instructor/my_courses/presentation/pages/instructor_my_courses_view.dart';
import 'package:velo/features/instructor/dashboard/presentation/pages/instructor_dashboard_view.dart';
import 'package:velo/features/instructor/main/custom_instructor_bottom_nav_bar.dart';

class InstructorMainView extends StatefulWidget {
  const InstructorMainView({super.key});

  static final GlobalKey<MainPageState> mainViewKey = GlobalKey();

  @override
  State<InstructorMainView> createState() => MainPageState();
}

class MainPageState extends State<InstructorMainView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    InstructorDashboardView(),
    InstructorMyCoursesView(),
    InstructorChatView(),
    Center(child: Text('Profile')),
  ];

  void changeTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: CustomInstructorBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
