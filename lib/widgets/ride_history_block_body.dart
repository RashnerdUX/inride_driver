import 'package:flutter/material.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

//This is the body of the history block showing a list of RideHistoryBlockItems separated by a divider
class RideHistoryBlockBody extends StatelessWidget {
  const RideHistoryBlockBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => const RideHistoryBlockItem(),
        separatorBuilder: (context, index) => const Divider(
          thickness: 2,
          color: Color(0xffF7F9FC),
        ),
        itemCount: 3,
      ),
    );
  }
}
