import 'package:flutter/material.dart';
import 'package:velo/core/utils/app_styles.dart';
import 'package:velo/features/home/presentation/pages/home_view.dart';
import 'package:velo/features/main/custom_bottom_nav_bar.dart';

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
    Center(child: Text('Search', style: AppStyles.textBold18)),
    Center(child: Text('My Course', style: AppStyles.textBold18)),
    Center(child: Text('Profile', style: AppStyles.textBold18)),
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
