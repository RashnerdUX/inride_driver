import 'package:flutter/material.dart';

class CustomChoiceWithRadio extends StatelessWidget {
  const CustomChoiceWithRadio({
    super.key,
    required this.label,
    required this.value,
    required this.groupValue,
    this.function,
  });

  //The label of the choice tile
  final String label;

  //The value of the choice tile
  final int value;

  //The overall value of the entire choice tile list
  final int groupValue;

  //The function that confirms a selection from the list
  final Function? function;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: groupValue == value
              ? const Color(0xffd3e2fa)
              : const Color(0xfff7f7f9),
          border: Border.all(
              width: 2,
              color: groupValue == value
                  ? const Color(0xff4285f4)
                  : const Color(0xffdfdfdf))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Radio(
            value: value,
            groupValue: groupValue,
            onChanged: (value) {},
            activeColor: const Color(0xff4285f4),
          ),
        ],
      ),
    );
  }
}
