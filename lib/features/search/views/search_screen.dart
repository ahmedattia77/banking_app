import 'package:flutter/material.dart';
import '../models/transaction_item.dart';
import '../widgets/search_app_bar.dart';
import '../widgets/search_field_widget.dart';
import '../widgets/transaction_list.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  static const Color _circleColor = Color(0xFFF4F4F4);

  final List<TransactionItem> _allTransactions = const [
    TransactionItem(
      name: 'Apple Store',
      category: 'Entertainment',
      amount: '- \$5,99',
      isNegative: true,
      circleColor: _circleColor,
      iconColor: Colors.black87,
      iconPath: 'assets/svgs/search1.svg',
    ),
    TransactionItem(
      name: 'Spotify',
      category: 'Music',
      amount: '- \$12,99',
      isNegative: true,
      circleColor: _circleColor,
      iconColor: const Color(0xFF1ED760),
      iconPath: 'assets/mages/Group (4).png',
    ),
    TransactionItem(
      name: 'Money Transfer',
      category: 'Transaction',
      amount: '\$300',
      isNegative: false,
      circleColor: _circleColor,
      iconColor: Colors.black87,
      iconPath: 'assets/svgs/search3.svg',
    ),
    TransactionItem(
      name: 'Grocery',
      category: 'Shopping',
      amount: '- \$ 88',
      isNegative: true,
      circleColor: _circleColor,
      iconColor: Colors.red,
      iconPath: 'assets/svgs/search4.svg',
    ),
    TransactionItem(
      name: 'Apple Store',
      category: 'Entertainment',
      amount: '- \$5,99',
      isNegative: true,
      circleColor: _circleColor,
      iconColor: Colors.black87,
      iconPath: 'assets/svgs/search1.svg',
    ),
    TransactionItem(
      name: 'Money Transfer',
      category: 'Transaction',
      amount: '\$300',
      isNegative: false,
      circleColor: _circleColor,
      iconColor: Colors.black87,
      iconPath: 'assets/svgs/search3.svg',
    ),
    TransactionItem(
      name: 'Apple Store',
      category: 'Entertainment',
      amount: '- \$5,99',
      isNegative: true,
      circleColor: _circleColor,
      iconColor: Colors.black87,
      iconPath: 'assets/svgs/search1.svg',
    ),
    TransactionItem(
      name: 'Spotify',
      category: 'Music',
      amount: '- \$12,99',
      isNegative: true,
      circleColor: _circleColor,
      iconColor: const Color(0xFF1ED760),
      iconPath: 'assets/svgs/search2.svg',
    ),
  ];

  List<TransactionItem> _filtered = [];

  @override
  void initState() {
    super.initState();
    _filtered = _allTransactions;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearch(String query) {
    setState(() {
      _filtered = query.isEmpty
          ? _allTransactions
          : _allTransactions
                .where(
                  (t) =>
                      t.name.toLowerCase().contains(query.toLowerCase()) ||
                      t.category.toLowerCase().contains(query.toLowerCase()),
                )
                .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SearchAppBar(),
            const SizedBox(height: 16),
            SearchFieldWidget(
              controller: _searchController,
              onChanged: _onSearch,
            ),
            const SizedBox(height: 8),
            Expanded(child: TransactionList(items: _filtered)),
          ],
        ),
      ),
    );
  }
}
