import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

//This is the item that summarises the history of the ride
class RideHistoryBlockItem extends StatelessWidget {
  const RideHistoryBlockItem({
    super.key,
    this.name,
    this.amount,
  });

  //This is the name of the passenger who took the ride
  final String? name;

  //This is the amount spent by the passenger
  final int? amount;

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(
        Icons.drive_eta_rounded,
        color: Palette.backgroundColor,
        size: 20,
      ),
      title: Text(
        "Passenger Name",
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
      ),
      trailing: Text(
        "+\$6000",
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
      ),
    );
  }
}
