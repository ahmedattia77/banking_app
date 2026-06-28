import 'package:banking_app/common_widgets/custom_credit_card_widget.dart';
import 'package:banking_app/common_widgets/custom_trans_item_view.dart';
import 'package:banking_app/features/home/data/model/transaction_model.dart';
import 'package:banking_app/features/home/data/rebository/transaction_repo.dart';
import 'package:banking_app/features/home/views/widgest/home_appbar.dart';
import 'package:banking_app/features/home/views/widgest/home_icon_contianer.dart';
import 'package:banking_app/features/home/views/widgest/see_all_view.dart';
import 'package:banking_app/features/onboarding/views/pages/request_money_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: MediaQuery.heightOf(context) * 0.40,
            child: Image.asset("assets/images/ston_background.png"),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                HomeAppbar(onSearchTab: () {}),
                const SizedBox(height: 30),
                CustomCreditCardWidget(),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeIconContianer(
                      onClick: () => null,
                      icon: Icon(Icons.north),
                      title: 'sent',
                    ),
                    HomeIconContianer(
                      onClick: () => null,
                      icon: Icon(Icons.south),
                      title: 'Receive',
                    ),
                    HomeIconContianer(
                      onClick: () => null,
                      icon: Icon(Icons.monetization_on_outlined),
                      title: 'Loan',
                    ),
                    HomeIconContianer(
                      onClick: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RequestMoneyScreen(),
                        ),
                      ),
                      icon: Icon(Icons.cloud_upload_outlined),
                      title: 'Topup',
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                SeeAllView(),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _transList.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemBuilder: (context, index) {
                    final item = _transList[index];
                    return CustomTransItemView(item: item);
                  },
                ),
                const SizedBox(height: 30,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}