import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quiz1/Moody/Moody_Widgets/ExerciseText.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz1/Moody/Moody_Widgets/SliderWindow.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Moody extends StatefulWidget {
  static String routeName = 'moody';

  @override
  State<Moody> createState() => _MoodyState();
}

class _MoodyState extends State<Moody> {
  @override
  final screens = [
    const SliderWindow(
      windowColor: Color(0xFFECFDF3),
    ),
    const SliderWindow(windowColor: Colors.yellow),
    const SliderWindow(
      windowColor: CupertinoColors.systemBlue,
    ),
  ];
  int myCurrentIndex = 0;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Image.asset('assets/logo.png'),
                const Text(
                  'Moody',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 33,
                  ),
                ),
                Spacer(),
                const badges.Badge(
                  badgeContent: Text(''),
                  child: Icon(Icons.notifications, size: 33),
                ),
              ],
            ),
            const SizedBox(height: 22),
            Row(
              children: [
                RichText(
                  text: const TextSpan(
                    text: "Hello, ",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "Sara Rose",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            const Text('How are you feeling today ?',
                style: TextStyle(fontSize: 17)),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Image.asset('assets/love.png'),
                    const Text('Love')
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Image.asset('assets/Cool.png'),
                    const Text('Cool')
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Image.asset('assets/Happy.png'),
                    const Text('Happy')
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Image.asset(
                      'assets/Sad.png',
                    ),
                    const Text('Sad')
                  ],
                ))
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            Row(
              children: [
                const Text(
                  'Feature',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See More >',
                    style: TextStyle(fontSize: 23, color: Colors.green),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .01),
            CarouselSlider(
              items: screens,
              options: CarouselOptions(
                autoPlay: false,
                enableInfiniteScroll: false,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    myCurrentIndex = index;
                  });
                },
              ),
            ),
            Center(
              child: AnimatedSmoothIndicator(
                activeIndex: myCurrentIndex,
                count: screens.length,
                effect: const ScrollingDotsEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: Color(0xFF98A2B3),
                    dotColor: Color(0xFFD9D9D9)),
              ),
            ),
            Row(
              children: [
                const Text(
                  'Exercise',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See More >',
                    style: TextStyle(fontSize: 23, color: Colors.green),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .01),
            Row(
              children: [
                ExerciseText(
                    buttonText: 'Relaxation',
                    buttonColor: const Color(0xFFF9F5FF),
                    buttonAsset: 'assets/Vector.png'),
                SizedBox(width: MediaQuery.of(context).size.width * .05),
                ExerciseText(
                    buttonText: 'Meditation',
                    buttonColor: const Color(0xFFFDF2FA),
                    buttonAsset: 'assets/Group.png'),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .01),
            Row(
              children: [
                ExerciseText(
                    buttonText: 'Beathing',
                    buttonColor: const Color(0xFFFFFAF5),
                    buttonAsset: 'assets/Frame (1).png'),
                SizedBox(width: MediaQuery.of(context).size.width * .05),
                ExerciseText(
                    buttonText: 'Yoga',
                    buttonColor: const Color(0xFFF0F9FF),
                    buttonAsset: 'assets/Group (1).png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
