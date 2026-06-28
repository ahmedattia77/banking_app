import 'package:banking_app/common_widgets/custom_appbar.dart';
import 'package:banking_app/common_widgets/custom_trans_item_view.dart';
import 'package:banking_app/features/home/views/widgest/see_all_view.dart';
import 'package:banking_app/features/statistics/views/widgest/balance_chart_widget.dart';
import 'package:banking_app/features/home/data/model/transaction_model.dart';
import 'package:banking_app/features/home/data/rebository/transaction_repo.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  final _transactionRepo = TransactionRepo();

  late List<TransactionModel> _transList = [];

  @override
  void initState() {
    _transList = _transactionRepo.getTransactionsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            CustomAppbar(
              title: 'Statistics',
              leadingCallBack: () {},
              actionCallBack: () {},
              action: Icon(Icons.notifications_outlined),
            ),
            const SizedBox(height: 30),
            BalanceChartWidget(),
            const SizedBox(height: 30),
            SeeAllView(),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _transList.length,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                final item = _transList[index];
                return CustomTransItemView(item: item);
              },
            ),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
