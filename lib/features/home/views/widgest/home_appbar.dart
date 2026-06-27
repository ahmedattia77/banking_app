import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  final VoidCallback onSearchTab;
  const HomeAppbar({super.key, required this.onSearchTab});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),

          child: Image.asset(
            'assets/images/ironman.jpg',
            frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
              if (wasSynchronouslyLoaded) return child;
              return AnimatedOpacity(
                opacity: frame == null ? 0 : 1,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                child: child,
              );
            },
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Welcome back",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Tanya Myroniuk",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ],
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
    );
  }
}
