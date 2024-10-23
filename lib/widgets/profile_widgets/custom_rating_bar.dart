import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

//This widget piggybacks a package to allow the driver be rated.
//It will also be used to display a rating
class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({super.key, this.rating, this.function});

  //This is the rating for displaying the bar
  final double? rating;

  //This is the function that is called when the rating bar is used to rate the passenger
  final Function()? function;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      itemSize: 16,
      initialRating: 5,
      minRating: 1,
      maxRating: 5,
      itemCount: 5,
      allowHalfRating: true,
      direction: Axis.horizontal,
      itemPadding: const EdgeInsets.symmetric(horizontal: 2),
      onRatingUpdate: (rating) {},
    );
  }
}
