import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

class EarningsTabView extends StatelessWidget {
  const EarningsTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        width: double.infinity,
        height: 260,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              width: 186,
              height: 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xffE2E7F1),
              ),
              child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelPadding: const EdgeInsets.all(2),
                  tabs: earningsHistoryTabs),
            ),
            Space.h(12),
            SizedBox(
                width: double.infinity,
                height: 164,
                child: TabBarView(children: earningsTabView)),
          ],
        ),
      ),
    );
  }
}

List<Widget> earningsHistoryTabs = [
  const Tab(text: "Daily"),
  const Tab(text: "Weekly"),
  const Tab(text: "Monthly")
];

List<Widget> earningsTabView = [
  Container(
    width: double.infinity,
    color: Colors.blueGrey,
  ),
  Container(
    width: double.infinity,
    color: Colors.green,
  ),
  Container(
    width: double.infinity,
    color: Colors.red,
  ),
];
