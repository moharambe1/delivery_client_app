import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class WButtomNavBar extends StatefulWidget {
  const WButtomNavBar({Key? key}) : super(key: key);

  @override
  State<WButtomNavBar> createState() => _WButtomNavBarState();
}

const navigationBarItem = [
  ["assets/icons/icon_deliver_packages.png", "الطرود"],
  ["assets/icons/icon_deliver_delivering.png", "قيد توصيل"],
  ["assets/icons/icon_deliver_success.png", "تم توصيل"],
  ["assets/icons/icon_deliver_failed.png", "فشل توصيل"]
];

class _WButtomNavBarState extends State<WButtomNavBar> {
  int indexSlecte = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        onItemSelected: (index) => {
              setState(() {
                indexSlecte = index;
              })
            },
        selectedIndex: indexSlecte,
        showElevation: true,
        backgroundColor: Theme.of(context).colorScheme.background,
        items: List.generate(navigationBarItem.length, (index) {
          return BottomNavyBarItem(
            activeColor: Colors.pink,
            icon: Image.asset(
              navigationBarItem[index][0],
              fit: BoxFit.contain,
              width: 8.2.w,
            ),
            title: Text(
              navigationBarItem[index][1],
              style: const TextStyle(fontSize: 15),
            ),
            textAlign: TextAlign.center,
          );
        }));
  }
}
