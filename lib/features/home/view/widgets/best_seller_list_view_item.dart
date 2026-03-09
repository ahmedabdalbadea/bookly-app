import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/view/widgets/book_rating.dart';
import 'package:bookly_app/features/home/view/widgets/featured_books_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
      child: SizedBox(
        height: 110,
        child: Row(
          children: [
            CustomImage(image: AssetsData.test),
            const SizedBox(width: 30),
            SizedBox(
              width: MediaQuery.widthOf(context) * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Harry Potter and the Goblet of Fire",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle16,
                  ),
                  Text(
                    "J.K. Rowling",
                    style: Styles.textStyle14.copyWith(
                      color: Colors.white.withValues(alpha: 0.7),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("19.99€", style: Styles.textStyle16),

                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
