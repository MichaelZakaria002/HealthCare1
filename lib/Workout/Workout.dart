import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quiz1/Moody/Moody_Widgets/ExerciseText.dart';
import 'package:quiz1/Workout/WorkoutWidgets/WorkoutExercises.dart';

class WorkoutApp extends StatefulWidget {
  static String routeName = 'workout';

  @override
  State<WorkoutApp> createState() => _WorkoutAppState();
}

class _WorkoutAppState extends State<WorkoutApp> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                Image.asset('assets/Ellipse 10.png', height: 60, width: 60),
                // Adjust height and width as needed
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Jade',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    Text(
                      'Ready to workout?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                const badges.Badge(
                  badgeContent: Text(''),
                  child: Icon(Icons.notifications, size: 33),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
              child: Image.asset('assets/Frame 3466506.png'),
            ),
            const Text(
              'Workout Programs',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            Column(
              children: [
                TabBar(
                  controller: tabController,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 2,
                  isScrollable: true,
                  labelColor: Color(0xFF363F72),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  unselectedLabelColor: Color(0xFF667085),
                  tabs: [
                    Tab(child: Text('All Type', style: TextStyle(fontSize: 20),),),
                    Tab(child: Text('Full body', style: TextStyle(fontSize: 20),),),
                    Tab(child: Text('Upper', style: TextStyle(fontSize: 20),),),
                    Tab(child: Text('Lower', style: TextStyle(fontSize: 20),),),],),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.55 ,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      ListView(children: [
                        WorkoutExercises(exerciseDays: 7, exerciseName: 'Morning Yoga', exercisePurpose: 'Improve mental focus.', exerciseTime: 30, exerciseAsset: 'assets/[removal 2.png',),
                        SizedBox(height: MediaQuery.of(context).size.height * .02,),
                        WorkoutExercises(exerciseDays: 3, exerciseName: 'Plank Exercise', exercisePurpose: 'Improve posture and stability.', exerciseTime: 30, exerciseAsset: 'assets/pngwing 1.png',),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        WorkoutExercises(exerciseDays: 7, exerciseName: 'Morning Yoga', exercisePurpose: 'Improve mental focus.', exerciseTime: 30, exerciseAsset: 'assets/[removal 2.png',),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        WorkoutExercises(exerciseDays: 3, exerciseName: 'Plank Exercise', exercisePurpose: 'Improve posture and stability.', exerciseTime: 30, exerciseAsset: 'assets/pngwing 1.png',),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        WorkoutExercises(exerciseDays: 3, exerciseName: 'Plank Exercise', exercisePurpose: 'Improve posture and stability.', exerciseTime: 30, exerciseAsset: 'assets/pngwing 1.png',
                        ),
                      ]),
                      ListView(children: [
                        WorkoutExercises(
                          exerciseDays: 7,
                          exerciseName: 'Morning Yoga',
                          exercisePurpose: 'Improve mental focus.',
                          exerciseTime: 30,
                          exerciseAsset: 'assets/[removal 2.png',
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        WorkoutExercises(
                          exerciseDays: 3,
                          exerciseName: 'Plank Exercise',
                          exercisePurpose: 'Improve posture and stability.',
                          exerciseTime: 30,
                          exerciseAsset: 'assets/pngwing 1.png',
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        WorkoutExercises(
                          exerciseDays: 3,
                          exerciseName: 'Plank Exercise',
                          exercisePurpose: 'Improve posture and stability.',
                          exerciseTime: 30,
                          exerciseAsset: 'assets/pngwing 1.png',
                        ),
                      ]),
                      ListView(children: [
                        WorkoutExercises(
                          exerciseDays: 7,
                          exerciseName: 'Morning Yoga',
                          exercisePurpose: 'Improve mental focus.',
                          exerciseTime: 30,
                          exerciseAsset: 'assets/[removal 2.png',
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        WorkoutExercises(
                          exerciseDays: 3,
                          exerciseName: 'Plank Exercise',
                          exercisePurpose: 'Improve posture and stability.',
                          exerciseTime: 30,
                          exerciseAsset: 'assets/pngwing 1.png',
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        WorkoutExercises(
                          exerciseDays: 3,
                          exerciseName: 'Plank Exercise',
                          exercisePurpose: 'Improve posture and stability.',
                          exerciseTime: 30,
                          exerciseAsset: 'assets/pngwing 1.png',
                        ),
                      ]),
                      ListView(children: [
                        WorkoutExercises(
                          exerciseDays: 7,
                          exerciseName: 'Morning Yoga',
                          exercisePurpose: 'Improve mental focus.',
                          exerciseTime: 30,
                          exerciseAsset: 'assets/[removal 2.png',
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        WorkoutExercises(
                          exerciseDays: 3,
                          exerciseName: 'Plank Exercise',
                          exercisePurpose: 'Improve posture and stability.',
                          exerciseTime: 30,
                          exerciseAsset: 'assets/pngwing 1.png',
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        WorkoutExercises(
                          exerciseDays: 3,
                          exerciseName: 'Plank Exercise',
                          exercisePurpose: 'Improve posture and stability.',
                          exerciseTime: 30,
                          exerciseAsset: 'assets/pngwing 1.png',
                        ),
                      ]),

                      // Add content for other tabs here
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
