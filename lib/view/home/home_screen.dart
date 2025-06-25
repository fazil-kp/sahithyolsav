import 'package:flutter/material.dart';
import 'package:sahithyolsav/config/colors.dart';
import 'package:sahithyolsav/config/theme.dart';
import 'package:sahithyolsav/helper/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      image: "assets/images/bg_Image1.png",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              HomeCard(title: "Score Board", onTap: () {}),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                spacing: 8,
                children: [
                  HomeCard(title: "Result", onTap: () {}),
                  HomeCard(title: "Schedule", onTap: () {}),
                ],
              ),
              // HomeCard(title: "Events", onTap: () {}),
            ],
          ),

          30.height,
          Text(
            "Created By",
            style: context.bodySmall?.copyWith(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w500),
          ),
          Text(
            "fazilkp.in",
            style: context.bodySmall?.copyWith(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),
          ).onTap(() {
            ("https://www.fazilkp.in/").launchUrlString();
          }),
          20.height,
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Widget child;
  final String? image;
  const CustomContainer({super.key, required this.child, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage(image ?? "assets/images/bg_Image2.png"), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}

class HomeCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const HomeCard({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(6)),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: context.bodySmall?.copyWith(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
            ),
            10.width,
            Icon(Icons.arrow_forward, color: whiteColor, size: 18),
          ],
        ),
      ),
    );
  }
}
