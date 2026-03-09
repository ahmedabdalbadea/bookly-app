import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FaIcon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellowAccent,
          size: 18,
        ),
        const SizedBox(width: 6),
        Text("4.8", style: Styles.textStyle16),
        const SizedBox(width: 6),
        Text("(2390)", style: Styles.textStyle14.copyWith(
          color: Colors.white.withValues(alpha: 0.7)
        )),
      ],
    );
  }
}
