import 'package:flutter/material.dart';
import 'package:langlung/component/card/card_concept.dart';

class Appbar1 extends StatefulWidget {
  const Appbar1({Key? key}) : super(key: key);
  @override
  Appbar1State createState() => Appbar1State();
}

class Appbar1State extends State<Appbar1> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        automaticallyImplyLeading: false,
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(15))),
        expandedHeight: 70,
        leadingWidth: 390,
        floating: false,
        pinned: false,
        backgroundColor: const Color(0xff7DA5F2),
        flexibleSpace: const FlexibleSpaceBar(
          centerTitle: true,
        ),
        title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 19, bottom: 15),
                child: Image.asset(
                  "assets/icon/logoicon4.png",
                  height: 38,
                  width: 38,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(),
                  child: Container(
                    height: 34,
                    width: 255,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffffffff),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ConceptCard()));
                        },
                        child: const Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Color(0xffD9D9D9),
                            ),
                            Text(
                              "cari barang lelang kesukaanmu",
                              style: TextStyle(
                                  color: Color(0xffD9D9D9),
                                  fontSize: 12.0,
                                  fontFamily: "New Peninim MT",
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        )),
                  ),
                ),
              )
            ]));
  }
}
