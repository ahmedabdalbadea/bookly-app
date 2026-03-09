import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/view/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/view/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text("Best Seller", style: Styles.textStyle20),
                ),
              ),
            ],
          ),
        ),

        SliverFillRemaining(child: BestSellerListView()),
      ],
    );
  }
}
