import 'package:banking_app/features/home/views/pages/home_page.dart';
import 'package:banking_app/features/settings/views/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int _currentPage = 0;
  Color selectedColor = Color(0xFF0066FF);
  final List<Widget> _navPages = [
    // here create your own screen
    /*
    lib
      features
        home
          views
            pages
    */
    const HomePage(), 
    const Center(child: Text("may cart")),
    const Center(child: Text("statistics")),
    const SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final navTheme = theme.bottomNavigationBarTheme;

    // الحصول على الألوان المحددة جوه الـ AppThemes تلقائياً
    Color activeColor = navTheme.selectedItemColor ?? const Color(0xFF0066FF);
    Color inactiveColor = navTheme.unselectedItemColor ?? const Color(0xFFFFFFFF).withOpacity(0.38);
    // Color unselectedColor = Theme.of(context).iconTheme.color ?? Colors.black;
    return Scaffold(
      body: _navPages.elementAt(_currentPage),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        // unselectedItemColor: unselectedColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/home_icon.svg',
              colorFilter: ColorFilter.mode(
                _currentPage == 0 ? activeColor : inactiveColor,
                BlendMode.srcIn,
              ),
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/card_icon.svg',
              colorFilter: ColorFilter.mode(
                _currentPage == 1 ? activeColor : inactiveColor,
                BlendMode.srcIn,
              ),
            ),
            label: "My Cards",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/statistics.svg',
              colorFilter: ColorFilter.mode(
                _currentPage == 2 ? activeColor : inactiveColor,
                BlendMode.srcIn,
              ),
            ),
            label: "My Cards",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svgs/settings_icon.svg',
              colorFilter: ColorFilter.mode(
                _currentPage == 3 ? activeColor : inactiveColor,
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
