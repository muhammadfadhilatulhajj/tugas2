import 'package:flutter/material.dart';
import 'package:langlung/login.dart';

class LandingSlider extends StatelessWidget {
  const LandingSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landing Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingPageScreen(),
    );
  }
}

class LandingPageScreen extends StatefulWidget {
  const LandingPageScreen({Key? key}) : super(key: key);

  @override
  LandingPageScreenState createState() => LandingPageScreenState();
}

class LandingPageScreenState extends State<LandingPageScreen> {
  int currentPageIndex = 0;

  void goToNextPage() {
    setState(() {
      currentPageIndex++;
    });
  }

  void goToPreviousPage() {
    setState(() {
      currentPageIndex--;
    });
  }

  void goToLastPage() {
    // Perform actions when Done button is pressed
    // e.g., save data, navigate to another screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: currentPageIndex,
              children: const [
                FirstPage(),
                SecondPage(),
                LastPage(),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (currentPageIndex > 0)
                ElevatedButton(
                  onPressed: goToPreviousPage,
                  child: const Text('Previous'),
                ),
              const SizedBox(width: 10),
              if (currentPageIndex < 2)
                ElevatedButton(
                  onPressed: goToNextPage,
                  child: const Text('Next'),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Center(
        child: Image.asset(
          'assets/images/onBoarding1.gif',
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 40),
        child: Text(
          "hallo page pertama ",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "New Peninin MT",
              fontSize: 20,
              color: Color(0xff858585),
              fontWeight: FontWeight.w400),
        ),
      ),
    ]));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Center(
        child: Image.asset(
          'assets/images/onBoarding2.gif',
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 40),
        child: Text(
          "hallo page kedua ",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "New Peninin MT",
              fontSize: 20,
              color: Color(0xff858585),
              fontWeight: FontWeight.w400),
        ),
      ),
    ]));
  }
}

class LastPage extends StatelessWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Column(children: [
            Center(
              child: Image.asset(
                'assets/images/kontraktor.png',
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "hallo page terakhir ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "New Peninin MT",
                    fontSize: 20,
                    color: Color(0xff858585),
                    fontWeight: FontWeight.w400),
              ),
            ),
          ])),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
            child: const Text('Lets go'),
          ),
        ],
      ),
    );
  }
}
