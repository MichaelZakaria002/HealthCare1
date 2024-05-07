import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWindow extends StatelessWidget {
  final Color windowColor;

  const SliderWindow({required this.windowColor});

  @override
  Widget build(BuildContext context) {
    return Container(//color: windowColor,
      decoration: ShapeDecoration(color: windowColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(18)))),
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Positive Vibes',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Color(0xFF344054)),
                  ),
                  SizedBox(height: 21),
                  Text(
                    'Boost your mood with positive vibes',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.play_circle_fill,
                        color: Colors.greenAccent,
                      ),
                      Text(
                        '10 mins',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Image.asset('assets/WalkingtheDog.png'),
        ],
      ),
    );
  }
}