import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 24,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 32, right: 32, top: 40, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "How would you like to be paid",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Space.h(10),
              const Text(
                "The amount will be deposited to your account once the trip is completed.",
                style: TextStyle(
                  color: Color(0xff767676),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Space.h(24),
              const CustomChoiceListTile(
                leading: Icons.money_rounded,
                title: "Cash",
                subtitle: "Traditional payment method using physical currency.",
              ),
              Space.h(16),
              const CustomChoiceListTile(
                leading: Icons.attach_money_rounded,
                title: "Bank Transfers",
                subtitle:
                    "Transfer funds electronically between bank accounts.",
              ),
              Space.h(16),
              const CustomChoiceListTile(
                leading: Icons.wallet_rounded,
                title: "Mobile Wallet",
                subtitle:
                    "Digital wallets linked to credit cards, debit cards, or bank accounts.",
              ),
              // Space.h(72),
              Spacer(),
              Text(
                "Don't worry, we don't store your payment information",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff767676),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomChoiceListTile extends StatelessWidget {
  const CustomChoiceListTile({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
  });

  //This is the leading icon for the tile
  final IconData leading;

  //This is the title of the tile
  final String title;

  //This is the subtitle of the tile
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromARGB(255, 226, 226, 226)),
      child: ListTile(
        leading: Icon(
          leading,
          size: 30,
          color: Palette.accentTextColor,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xff202020),
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xff515152),
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 24,
          color: Color(0xff1d1d1d),
        ),
      ),
    );
  }
}
