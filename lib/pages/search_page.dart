import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/product_list_item.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kWhiteColor,
          elevation: 0,
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
                width: 12,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 8),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: kWhiteGreyColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          onFieldSubmitted: (value) {
                            Navigator.pushNamed(context, '/search-result');
                          },
                          cursorColor: kBlackColor,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Search furniture',
                            hintStyle: greyTextStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.search,
                        color: kGreyColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(
            height: 41,
          ),
          Text(
            'Recommendation',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ProductListItem(
            title: 'Poan Chair',
            price: 34,
            imageUrl: 'assets/image_product_list1.png',
          ),
          ProductListItem(
            title: 'Poan Chair',
            price: 36,
            imageUrl: 'assets/image_product_list2.png',
          ),
          ProductListItem(
            title: 'Poan Chair',
            price: 34,
            imageUrl: 'assets/image_product_list3.png',
          ),
          ProductListItem(
            title: 'Poan Table',
            price: 45,
            imageUrl: 'assets/image_product_list4.png',
          ),
        ],
      ),
    );
  }
}
