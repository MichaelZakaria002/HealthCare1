import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AliceContainer extends StatelessWidget {
  final String image;
  final String boldText;
  final String smallText;

  const AliceContainer({required this.image, required this.boldText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        color: Color(0xFFEAECF5),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(image),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          boldText,
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .01,
                        ),
                        Text(
                          smallText,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
