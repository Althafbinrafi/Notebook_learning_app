import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:notebook/Constants/Colors.dart';

class DashHome extends StatefulWidget {
  const DashHome({Key? key}) : super(key: key);

  @override
  _DashHomeState createState() => _DashHomeState();
}

class _DashHomeState extends State<DashHome> {
  late PageController _pageController;
  int _currentPageIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        _currentPageIndex = _pageController.page!.round();
      });
    });

    // Start the timer to swipe containers every 5 seconds
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPageIndex < 2) {
        _currentPageIndex++;
      } else {
        _currentPageIndex = 0;
      }

      _pageController.animateToPage(
        _currentPageIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(81),
        child: MyAppBar(),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 388,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 65),
              child: Text(
                'Hi Althaf',
                style: GoogleFonts.lato(
                    fontSize: 35, height: -0.8, fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              width: 388,
              alignment: Alignment.topLeft,
              child: Text(
                'start your learning with Notebook',
                style: GoogleFonts.lato(
                    fontSize: 17, color: const Color.fromARGB(255, 50, 49, 49)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 187,
              width: 388,
              child: PageView(
                controller: _pageController,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  Icon(
                    Icons.circle,
                    size: 15,
                    color: i == _currentPageIndex
                        ? mainColor
                        : Colors.grey.shade400,
                  ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: mainColor),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: mainColor),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: mainColor),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 35),
              child: Text(
                'Popular Live Classes',
                style:
                    GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25),
      margin: EdgeInsets.only(top: 50),
      width: 388,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.menu_sharp,
                size: 30,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              // Handle menu button press
            },
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 40,
                  color: mainColor,
                ),
                onPressed: () {
                  // Handle search button press
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  size: 40,
                  color: mainColor,
                ),
                onPressed: () {
                  // Handle profile button press
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
