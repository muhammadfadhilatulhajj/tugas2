import 'package:flutter/material.dart';
import 'package:langlung/component/appbar/appbar1.dart';
import 'package:langlung/component/body/home_landing_body.dart';
import 'package:langlung/component/body/noprofile.dart';
import 'package:langlung/component/navbar/navi_bot_bar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

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
        return const NoProfile();
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
    default:
      return const Appbar1();
  }
}
