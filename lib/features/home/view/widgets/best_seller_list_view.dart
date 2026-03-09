import 'package:bookly_app/features/home/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        
        itemBuilder: (context, index) {
          return BestSellerListViewItem();
        },
      ),
    );
  }
}
