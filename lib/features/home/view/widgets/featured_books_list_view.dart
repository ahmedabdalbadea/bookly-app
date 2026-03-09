import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/home/view/widgets/featured_books_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, bottom: 30),
      child: SizedBox(
        height: MediaQuery.heightOf(context) * 0.3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CustomImage(image: AssetsData.test),
            );
          },
        ),
      ),
    );
  }
}
