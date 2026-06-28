import 'package:banking_app/common_widgets/custom_appbar.dart';
import 'package:banking_app/common_widgets/custom_credit_card_widget.dart';
import 'package:banking_app/common_widgets/custom_trans_item_view.dart';
import 'package:banking_app/features/home/data/model/transaction_model.dart';
import 'package:banking_app/features/home/data/rebository/transaction_repo.dart';
import 'package:banking_app/features/my_card/views/widgest/amount_slider_card.dart';
import 'package:banking_app/features/my_card/views/widgest/monthly_spending_text.dart';
import 'package:flutter/material.dart';

class MyCardsPage extends StatefulWidget {
  const MyCardsPage({super.key});

  @override
  State<MyCardsPage> createState() => _MyCardsPageState();
}

class _MyCardsPageState extends State<MyCardsPage> {
  final _transactionRepo = TransactionRepo();

  late List<TransactionModel> _transList = [];

  @override
  void initState() {
    _transList = _transactionRepo.getTransactionsData();
    super.initState();
  }

  ////// back botton in app bar 
  ///same in settings page
  ///hamdel back ground of nav bar 
  ///onboarding screen
  ///merge collabratoers' code.

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
                CustomAppbar(
                  title: "My Cards",
                  leadingCallBack: () {},
                  actionCallBack: () {},
                  action: Icon(Icons.add),
                ),
                const SizedBox(height: 30),
                CustomCreditCardWidget(),
                // const SizedBox(height: 30),
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
                const SizedBox(height: 30),
                MonthlySpendingText(),
                const SizedBox(height: 30),
                AmountSliderCard(
                  initialValue: 4600,
                  min: 0,
                  max: 10000,
                  onChanged: (value) {},
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
