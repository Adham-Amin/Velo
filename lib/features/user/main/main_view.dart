import 'package:flutter/material.dart';
import 'package:velo/features/user/home/presentation/pages/home_view.dart';
import 'package:velo/features/user/main/custom_bottom_nav_bar.dart';
import 'package:velo/features/user/my_courses/presentation/pages/my_courses_view.dart';
import 'package:velo/features/user/profile/presentation/pages/profile_view.dart';
import 'package:velo/features/user/search/presentation/pages/search_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static final GlobalKey<MainPageState> mainViewKey = GlobalKey();

  @override
  State<MainView> createState() => MainPageState();
}

class MainPageState extends State<MainView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeView(),
    const SearchView(),
    MyCoursesView(),
    const ProfileView(),
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
      bottomNavigationBar: CustomBottomNavBar(
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
