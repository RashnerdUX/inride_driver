import 'package:flutter/material.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';

//This widget shows two buttons representing alternate options, one filled and the other outlined in a row
class CustomDualButtonsRow extends StatelessWidget {
  const CustomDualButtonsRow({
    super.key,
    required this.outlinedLabel,
    required this.filledLabel,
    this.width,
  });

  //This is the label for the outlined button. This button comes first and is the secondary option
  final String outlinedLabel;

  //This is the label for the filled button. This button comes second and is the primary option
  final String filledLabel;

  //This is the width of either buttons
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomOutlinedButton(
          label: outlinedLabel,
          width: width ?? 200,
        ),
        CustomFilledButton(
          label: filledLabel,
          width: width ?? 200,
        ),
      ],
    );
  }
}
