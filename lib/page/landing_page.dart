import 'package:flutter/material.dart';
import 'package:langlung/component/appbar/appbar1.dart';
import 'package:langlung/component/appbar/appbar_profile.dart';
import 'package:langlung/component/body/home_landing_body.dart';
import 'package:langlung/component/body/profile.dart';
import 'package:langlung/component/navbar/navi_bot_bar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [callappbar(currentIndex)];
        },
        body: callPage(currentIndex),
      ),
      bottomNavigationBar: NaviBottomNavBar(
        index: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }

  Widget callPage(int current) {
    switch (current) {
      case 0:
        return const Bodyhomelandingpage();
      case 1:
        return const Profile();
      default:
        return const Bodyhomelandingpage();
    }
  }
}

Widget callappbar(int current) {
  switch (current) {
    case 0:
      return const Appbar1();
    case 1:
      return const Appbar1();
    case 2:
      return const Appbar1();
    case 3:
      return const Appbar1();
    case 4:
      return const AppbarProfilePage();
    default:
      return const Appbar1();
  }
}
