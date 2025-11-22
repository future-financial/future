import 'package:flutter/material.dart' hide BottomNavigationBar;
import 'package:future/screens/home_screen.dart';
import 'package:future/shared/constants/border.dart';
import 'package:future/shared/extensions/build_context_extensions.dart';
import 'package:future/shared/ui/bottom_navigation_bar.dart';
import 'package:heroicons/heroicons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    _pageController.jumpToPage(index);
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
        },
        children: [
          HomeScreen(),

          /// TODO: Replace with actual screens
          Center(child: Text("Coming Soon")),
          Center(child: Text("Coming Soon")),
          Center(child: Text("Coming Soon")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _onTabTapped(index);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: AppBorders.borderRadiusFull,
        ),
        onPressed: () {
          context.showInfoSnackBar("This feature is coming soon!");
        },
        child: HeroIcon(HeroIcons.plus),
      ),
    );
  }
}
