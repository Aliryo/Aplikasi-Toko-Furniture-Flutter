import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class OnboardingItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  const OnboardingItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Image.asset(
              imageUrl,
              width: double.infinity,
            ),
            SizedBox(
              height: 127,
            ),
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 26,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
