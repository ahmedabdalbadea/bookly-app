import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          
          child: Column(
            children: [
              CustomAppBar(
                logo: AssetsData.kLogo,
                icon: FontAwesomeIcons.magnifyingGlass,
                onPressed: () {},
              ),
              FeaturedBooksListView(),
              BestSellerHeading(title: "Best Seller"),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(child: BestSellerListView()),
      ],
    );
  }
}

class BestSellerHeading extends StatelessWidget {
  const BestSellerHeading({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Align(
        alignment: AlignmentGeometry.centerLeft,
        child: Text(
          title,
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
