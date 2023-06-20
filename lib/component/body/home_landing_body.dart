import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:langlung/component/appbar/appbar_lihat_semua_page.dart';

import 'package:shimmer/shimmer.dart';

import '../../model/card_dinner.dart';

class Bodyhomelandingpage extends StatefulWidget {
  const Bodyhomelandingpage({Key? key}) : super(key: key);

  @override
  BodyhomelandingpageState createState() => BodyhomelandingpageState();
}

class BodyhomelandingpageState extends State<Bodyhomelandingpage> {
  bool loadData = true;

  @override
  void initState() {
    Timer(const Duration(milliseconds: 3000), () {
      setState(() {
        loadData = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return loadData ? const AnimationLoadData() : const Loaded();
  }
}

class Loaded extends StatelessWidget {
  const Loaded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/banner1.png?alt=media&token=63118ed4-006e-4f7f-b33f-c907cddd0f4a",
      "https://firebasestorage.googleapis.com/v0/b/recipeadmin-9b5fb.appspot.com/o/banner2.png?alt=media&token=b445b1ad-9f7d-45e1-9527-470ed7ab995a",
      "https://www.pushengage.com/wp-content/uploads/2022/02/WordPress-Coming-Soon-Page-Plugins.png",
      "https://i0.wp.com/dianisa.com/wp-content/uploads/2022/10/1-Gambar-pemandangan-gunung-dengan-hutan-asri.jpg?ssl=1",
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 19, left: 22),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 180,
                  aspectRatio: 24 / 18,
                  viewportFraction: 0.9,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: imgList.map((item) {
                  return Container(
                    width: 349,
                    height: 211,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 4.0),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 9.0,
                              spreadRadius: 7.0,
                              color: Colors.black12.withOpacity(0.03))
                        ],
                        image: DecorationImage(
                            image: NetworkImage(item), fit: BoxFit.cover),
                        color: Colors.blue),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27, top: 26, bottom: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kategori Menarik ",
                      style: TextStyle(
                          fontFamily: "popins",
                          fontSize: 15.5,
                          color: Colors.black.withOpacity(0.9),
                          fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      "cari dan temukan yang kamu inginkan ",
                      style: TextStyle(
                          fontFamily: "New Peninin MT",
                          fontSize: 12,
                          color: Color(0xff858585),
                          fontWeight: FontWeight.w400),
                    )
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27, bottom: 33),
              child: SizedBox(
                height: 106,
                width: 450,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    CardPopular(
                        image: "assets/icon/mewarnai4.png",
                        title: "Karya Seni",
                        category: "Karya Seni"),
                    CardPopular(
                        image: "assets/icon/rumahicon4.png",
                        title: "Rumah Tangga",
                        category: "Rumah Tangga"),
                    CardPopular(
                        image: "assets/icon/bayiicon4.png",
                        title: "Perlengkapan Bayi",
                        category: "Perlengkapan Bayi"),
                    CardPopular(
                        image: "assets/icon/mewarnai4.png",
                        title: "Elektronik",
                        category: "Karya Seni"),
                    CardPopular(
                        image: "assets/icon/rumahicon4.png",
                        title: "Otomotif dan Aksesoris",
                        category: "Rumah Tangga"),
                    CardPopular(
                        image: "assets/icon/bayiicon4.png",
                        title: "Barang antik dan kuno",
                        category: "Perlengkapan Bayi"),
                    CardPopular(
                        image: "assets/icon/mewarnai4.png",
                        title: "Tiket dan Voucher",
                        category: "Karya Seni"),
                    CardPopular(
                        image: "assets/icon/rumahicon4.png",
                        title: "Rumah Tangga",
                        category: "Rumah Tangga"),
                    CardPopular(
                        image: "assets/icon/bayiicon4.png",
                        title: "Hewan peliharaan dan Aksesoris",
                        category: "Perlengkapan Bayi"),
                  ],
                ),
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 20,
                top: 10,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Berakhir Segera",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          color: Color(0xff1D1F21),
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.grey,
                        textStyle: const TextStyle(fontSize: 15),
                      ),
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AppbarLihatSemuaPage()));
                      }),
                      child: const Text(
                        'Lihat Semua',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 8,
                            color: Color(0xff858585),
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ]),
            ),
            ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              shrinkWrap: true,
              primary: false,
              itemBuilder: (ctx, index) {
                return CardDinner(modelDinnerArray[index]);
              },
              itemCount: modelDinnerArray.length,
            ),
          ],
        ),
      ),
    );
  }
}

class AnimationLoadData extends StatelessWidget {
  final color = Colors.black38;

  const AnimationLoadData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15,
          top: 10,
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Shimmer.fromColors(
            baseColor: color,
            highlightColor: Colors.white,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40.0,
                    width: 170.0,
                    decoration: const BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0)),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 45.0,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 200.0,
                    width: double.infinity,
                    color: Colors.black12,
                    alignment: Alignment.topRight,
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 120.0,
                    color: Colors.black12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 3.8,
                            color: Colors.black12,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 3.8,
                            color: Colors.black12,
                          ),
                        ),
                        Container(
                          height: 100.0,
                          width: MediaQuery.of(context).size.width / 3.8,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 120.0,
                    color: Colors.black12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 2.5,
                            color: Colors.black12,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            height: 100.0,
                            width: MediaQuery.of(context).size.width / 2.5,
                            color: Colors.black12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

class CardPopular extends StatelessWidget {
  final String? image, title, userId, category;
  const CardPopular(
      {Key? key, this.title, this.image, this.userId, this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 9,
        right: 9,
      ),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 106,
              width: 106,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xffEBEBEB),
                      blurRadius: 3.0,
                      spreadRadius: 1.0)
                ],
                color: const Color(0xffFFFFFF),
                border: Border.all(color: const Color(0xffEBEBEB), width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        image!,
                        height: 46,
                        width: 38,
                        colorBlendMode: BlendMode.darken,
                      )),
                  const SizedBox(
                    height: 7.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      title!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.black,
                          fontFamily: "latto",
                          fontSize: 8,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardDinner extends StatelessWidget {
  final ModelDinner _modelDinner;
  const CardDinner(this._modelDinner, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.only(
              top: 10.0, left: 30, right: 15.0, bottom: 15),
          child: Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  blurRadius: 100,
                  spreadRadius: 3,
                  color: Colors.black12.withOpacity(0.1))
            ]),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    color: const Color(0xFF1E2026),
                    child: Container(
                      height: 101,
                      width: 101,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(_modelDinner.image!),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: const [
                          BoxShadow(blurRadius: 10.0, color: Colors.black87)
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                        gradient: const LinearGradient(
                            colors: [
                              Color(0x00000000),
                              Color(0x00000000),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 200,
                              child: Text(
                                _modelDinner.title!,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: const TextStyle(
                                    color: Color(0xff1D1F21),
                                    fontFamily: "Exo",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              height: 2.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    "Sisa Waktu : ",
                                    style: TextStyle(
                                        color: Color(0xff1D1F21),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "lato",
                                        fontSize: 13),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    _modelDinner.time.toString(),
                                    style: const TextStyle(
                                        color: Color(0xffCE1C1C),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "lato",
                                        fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 2),
                                  child: Text(
                                    "Harga Buka : ",
                                    style: TextStyle(
                                        color: Color(0xff1D1F21),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "lato",
                                        fontSize: 13),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Text(
                                    _modelDinner.harga.toString(),
                                    style: const TextStyle(
                                        color: Color(0xff858585),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "lato",
                                        fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 2),
                                  child: Text(
                                    "Bid Terakhir : ",
                                    style: TextStyle(
                                        color: Color(0xff1D1F21),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "lato",
                                        fontSize: 13),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Text(
                                    _modelDinner.bidterakhir.toString(),
                                    style: const TextStyle(
                                        color: Color(0xffD28E27),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "lato",
                                        fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ])),
                ]),
          ),
        ));
  }
}
