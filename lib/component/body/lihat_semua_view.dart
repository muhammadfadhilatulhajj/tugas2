import 'dart:async';
import 'package:flutter/material.dart';
import 'package:langlung/component/body/home_landing_body.dart';
import 'package:langlung/model/card_dinner.dart';

class LihatSemuaView extends StatefulWidget {
  final String? idUser;
  const LihatSemuaView({Key? key, this.idUser}) : super(key: key);

  @override
  LihatSemuaViewState createState() => LihatSemuaViewState();
}

class LihatSemuaViewState extends State<LihatSemuaView> {
  int page = 0;
  ScrollController controller = ScrollController();
  List<ModelDinner> a = modelDinnerArray;

  void _onScroll() {
    if (controller.position.pixels == controller.position.maxScrollExtent) {
      if (page < 2) {
        delay();
      }
    }
  }

  Future<void> delay() async {
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      page++;
      a.addAll(List.from(modelDinnerArray));
    });
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_onScroll);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView.builder(
        controller: controller,
        itemCount: page >= 2 ? a.length : a.length + 1,
        itemBuilder: (context, index) {
          if (index >= a.length) {
            return const Center(
                child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                    backgroundColor: Colors.black12));
          } else {
            return CardDinner(a[index]);
          }
        },
      )),
    );
  }
}
