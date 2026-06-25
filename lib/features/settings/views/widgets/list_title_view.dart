import 'package:flutter/material.dart';

class ListTitleView extends StatelessWidget {
  final String category;
  final String? subCategory;
  final VoidCallback onTap;
  const ListTitleView({
    super.key,
    required this.category,
    this.subCategory,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Text(
        category,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            subCategory ?? "",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () => onTap(),
            icon: Icon(Icons.navigate_before, size: 30, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
