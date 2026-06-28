import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int _currentPage = 0;
  final Color selectedColor = const Color(0xFF0066FF);

  final List<Widget> _navPages = [
    const Center(child: Text("Home")),
    const Center(child: Text("My Cart")),
    const Center(child: Text("Statistics")),
    const Center(child: Text("Settings")),
  ];

  @override
  Widget build(BuildContext context) {
    final Color unselectedColor =
        Theme.of(context).iconTheme.color ?? Colors.grey;

    return Scaffold(
      body: _navPages.elementAt(_currentPage),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF13141F),
        currentIndex: _currentPage,
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: unselectedColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/home_icon.svg',
              colorFilter: ColorFilter.mode(
                _currentPage == 0 ? selectedColor : unselectedColor,
                BlendMode.srcIn,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/card_icon.svg',
              colorFilter: ColorFilter.mode(
                _currentPage == 1 ? selectedColor : unselectedColor,
                BlendMode.srcIn,
              ),
            ),
            label: "My Cards",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/statistics.svg',
              colorFilter: ColorFilter.mode(
                _currentPage == 2 ? selectedColor : unselectedColor,
                BlendMode.srcIn,
              ),
            ),
            label: "Statistics",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/settings_icon.svg',
              colorFilter: ColorFilter.mode(
                _currentPage == 3 ? selectedColor : unselectedColor,
                BlendMode.srcIn,
              ),
            ),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
