import 'package:flutter/material.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:inride_driver/functions.dart';

//This is the widget that shows the most recent customer reviews for the driver
class CustomUserReviewCard extends StatelessWidget {
  const CustomUserReviewCard(
      {super.key,
      required this.customer,
      required this.message,
      this.image,
      required this.time});

  //This is the name of the customer offering the review
  final String customer;

  //This is the message added by the customer
  final String message;

  //This is the image of the customer that is shown if the customer has one on their profile
  final Image? image;

  //This is the time stamp for when the review was delivered by the customer
  //This will be a DateTime object received from the backend that will be formatted to a string in this widget
  final String time;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
      child: Container(
        width: 260,
        height: 126,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  radius: 20,
                  // backgroundImage: image,
                  child: image ??
                      Text(
                        //This widget will convert the user's name and use it to display the first letter as the avatar
                        letterImage(customer).toUpperCase(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                ),
                Space.w(8),
                Text(
                  customer,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Space.h(8),
            Row(
              children: [
                const CustomRatingBar(),
                Space.w(4),
                Text(
                  time,
                  style: const TextStyle(
                      color: Color(0xff7A7A7A),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Space.h(8),
            Text(
              message,
              maxLines: 2,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
