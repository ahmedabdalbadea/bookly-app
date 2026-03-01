import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.yellow, size: 16),
        SizedBox(width: 6.3),
        Text("4.8", style: Styles.textStyle16,),
        SizedBox(width: 5),
        Text("(2390)", style: Styles.textStyle14.copyWith(
          color: Colors.white.withValues(alpha: 0.6)
        ),),
      ],
    );
  }
}
