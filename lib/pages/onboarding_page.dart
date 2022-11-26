// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/onboarding_item.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: [
                OnboardingItem(
                  imageUrl: 'assets/image_onboarding1.png',
                  title: 'Buy Furniture Easily',
                  subtitle:
                      'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse',
                ),
                OnboardingItem(
                  imageUrl: 'assets/image_onboarding2.png',
                  title: 'Fast Delivery',
                  subtitle:
                      'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse',
                ),
                OnboardingItem(
                  imageUrl: 'assets/image_onboarding3.png',
                  title: 'Best Price',
                  subtitle:
                      'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse',
                ),
              ],
              options: CarouselOptions(
                  initialPage: currentIndex,
                  height: double.infinity,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, _) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              carouselController: carouselController,
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      //carouselController.animateToPage(2);
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/sign-in', (route) => false);
                    },
                    child: Text(
                      'SKIP',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              currentIndex == 0 ? kBlackColor : kLineDarkColor,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              currentIndex == 1 ? kBlackColor : kLineDarkColor,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              currentIndex == 2 ? kBlackColor : kLineDarkColor,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      if (currentIndex == 2) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/sign-in', (route) => false);
                      } else {
                        carouselController.nextPage();
                      }
                    },
                    child: Text(
                      'NEXT',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
