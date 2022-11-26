// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/home_category_item.dart';
import 'package:space/widgets/product_grid_item.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AppBar(
          elevation: 0,
          backgroundColor: kWhiteColor,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                iconSize: 32,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.chevron_left),
                color: kBlackColor,
              ),
              SizedBox(
                width: 18,
              ),
              Text(
                'Chair',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/icon_search.png',
                width: 24,
              ),
              SizedBox(
                width: 18,
              ),
              Image.asset(
                'assets/icon_filter.png',
                width: 24,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(
            height: 18,
          ),
          HomeCategoryItem(
            title: 'Minimalis Chair',
            subtitle: 'Chair',
            imageUrl: 'assets/image_product_category1.png',
          ),
          SizedBox(
            height: 24,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 16,
            runSpacing: 20,
            children: [
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: 'assets/image_product_grid1.png',
                price: 34,
                isWishlist: false,
              ),
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: 'assets/image_product_grid2.png',
                price: 34,
                isWishlist: true,
              ),
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: 'assets/image_product_grid3.png',
                price: 34,
                isWishlist: false,
              ),
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: 'assets/image_product_grid4.png',
                price: 34,
                isWishlist: false,
              ),
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: 'assets/image_product_grid1.png',
                price: 34,
                isWishlist: false,
              ),
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: 'assets/image_product_grid2.png',
                price: 34,
                isWishlist: true,
              ),
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: 'assets/image_product_grid3.png',
                price: 34,
                isWishlist: false,
              ),
              ProductGridItem(
                title: 'Poan Chair',
                imageUrl: 'assets/image_product_grid4.png',
                price: 34,
                isWishlist: false,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
