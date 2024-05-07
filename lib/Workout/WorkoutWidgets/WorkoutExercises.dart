import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkoutExercises extends StatelessWidget {
  final int exerciseDays;
  final String exerciseName;
  final String exercisePurpose;
  final int exerciseTime;
  final String exerciseAsset;

  const WorkoutExercises({
    required this.exerciseDays,
    required this.exerciseName,
    required this.exercisePurpose,
    required this.exerciseTime,
    required this.exerciseAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        color: Color(0xFFEAECF5),
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric( horizontal: 4),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(13),
                      color: const Color(0xFFE4E7EC),
                    ),
                    child: Text('$exerciseDays days',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),
                  ),
                  Text(
                    exerciseName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23)
                  ),
                  SizedBox(height: 10),
                  Text(
                    exercisePurpose,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height *.008,),
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.clock,
                        color: Colors.black45,
                      ),
                      Text(
                        '$exerciseTime mins',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Image.asset(exerciseAsset)
        ],
      ),
    );
  }
}
