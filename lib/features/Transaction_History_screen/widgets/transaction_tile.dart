import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../model/transaction_item.dart';

class TransactionTile extends StatelessWidget {
  final TransactionItem item;

  const TransactionTile({super.key, required this.item});

  Color _getIconColor() {
    if (item.title == 'Grocery') {
      return const Color(0xFFE16364);
    } else if (item.title == 'Spotify') {
      return const Color(0xFF1FAA47);
    } else {
      return Colors.black;
    }
  }

  Widget _buildIcon() {
    final iconColor = _getIconColor();
    final String path = item.imagePath;

    if (path.endsWith('.svg')) {
      return SvgPicture.asset(
        path,
        width: 24,
        height: 24,
        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
      );
    } else {
      return Image.asset(path, width: 24, height: 24, color: iconColor);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: Color(0xFFF4F4F4),
              shape: BoxShape.circle,
            ),
            child: Center(child: _buildIcon()),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  item.subtitle,
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          Text(
            item.formattedAmount,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
