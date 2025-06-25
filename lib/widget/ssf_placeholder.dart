import 'package:flutter/material.dart';
import 'package:sahithyolsav/helper/extensions.dart';
import 'package:sahithyolsav/view/home/home_screen.dart';
import 'package:sahithyolsav/widget/smart_region.dart';

class SsfPlaceHolder extends StatelessWidget {
  final Widget? child;
  final Widget? floatingActionButton;
  final String? title;
  final bool? enableSafeArea;
  final bool? enableBackButton;
  final bool? enableBottomNav;
  const SsfPlaceHolder({super.key, this.child, this.enableSafeArea = true, this.enableBottomNav = true, this.title, this.enableBackButton = true, this.floatingActionButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: enableSafeArea ?? false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (title != null)
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SmartRegion(
                  onTap: () => Navigator.pop(context),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      children: [
                        if (enableBackButton == true) ...[Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20), 8.width],
                        Text(title ?? ""),
                      ],
                    ),
                  ),
                ),
              ),
            Expanded(child: child ?? HomeScreen()),
          ],
        ),
      ),
      // floatingActionButton: floatingActionButton,
      // bottomNavigationBar: enableBottomNav ?? true ? const BottomNavSection() : null,
    );
  }
}
