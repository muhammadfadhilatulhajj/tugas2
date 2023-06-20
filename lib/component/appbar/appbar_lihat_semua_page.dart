import 'package:flutter/material.dart';
import 'package:langlung/component/body/lihat_semua_view.dart';

class AppbarLihatSemuaPage extends StatefulWidget {
  const AppbarLihatSemuaPage({Key? key}) : super(key: key);

  @override
  State<AppbarLihatSemuaPage> createState() => _AppbarLihatSemuaPageState();
}

class _AppbarLihatSemuaPageState extends State<AppbarLihatSemuaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: const Text(
          "Berakhir Segera",
          style: TextStyle(
              color: Color(0xffffffff),
              fontWeight: FontWeight.w700,
              fontSize: 16),
        ),
        backgroundColor: const Color(0xff7DA5F2),
        centerTitle: true,
      )),
      body: const LihatSemuaView(),
    );
  }
}
