import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseText extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final String buttonAsset;
  final String nextRoute;

  ExerciseText(
      {required this.buttonText,
      required this.buttonColor,
      required this.buttonAsset,
      required this.nextRoute});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(context, nextRoute as Route<Object?>);
        },
        child: Container(
          decoration: ShapeDecoration(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            color: buttonColor,
          ),
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Image.asset(buttonAsset),
              SizedBox(
                width: 15,
              ),
              Text(buttonText,
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
