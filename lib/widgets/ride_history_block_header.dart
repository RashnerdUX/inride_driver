import 'package:flutter/material.dart';

//This is the light blue header widget for the history block
class RideHistoryBlockHeader extends StatelessWidget {
  const RideHistoryBlockHeader({
    super.key,
    this.day,
    this.date,
  });

  //This is the day of the week for the history scroll
  final String? day;

  //This is the calendar date for that day which has to be formatted to string so for now, it will be a string
  final String? date;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
        color: Color(0xffdce8ff),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Thursday",
            style: TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
          ),
          Text(
            "12/10/24",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
