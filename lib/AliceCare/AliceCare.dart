import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quiz1/AliceCare/AliceCareWidgets/AliceContainer.dart';

import 'AliceCareWidgets/HotTopics.dart';

class AliceCare extends StatefulWidget {
  static String routeName = 'Alice';

  @override

  State<AliceCare> createState() => _AliceCareState();
}

class _AliceCareState extends State<AliceCare> with TickerProviderStateMixin {
  late TabController aliceTabController;

  @override
  void initState() {
    aliceTabController = TabController(length: 4, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  final screens = [
    const HotTopics(topic: 'Self-Care', text: '10 Easy Self-Care Ideas That Can Help Boost Your Health', imagePath:'assets/b16a678c8ff94f2b76795b26595ed29a.jpeg' ),
    const HotTopics(topic: 'Self-Care', text: '10 Easy Self-Care Ideas That Can Help Boost Your Health', imagePath:'assets/b16a678c8ff94f2b76795b26595ed29a.jpeg' ),
  ];
  int myCurrentIndex = 0;
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.accessibility_new_sharp, color: Colors.pink, size: 40),
                  Text(
                    'AliceCare',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[300],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
                    hintText: 'Articles, Video, Audio and More,...',
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.search,
                      size: 28,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Column(
                children: [
                  TabBar(
                    controller: aliceTabController,
                    indicator: null,
                    indicatorColor: Colors.transparent,
                    unselectedLabelColor: Color(0xFF667085),
                    labelColor: Color(0xFF5925DC),
                    isScrollable: true,
                    tabs: [
                      Tab(
                        child: Text('Discover',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      Tab(
                        child: Text(
                          'News',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Most Viewd',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Saved',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.66 ,
                    child: TabBarView(
                      controller: aliceTabController,
                      children: [
                        ListView(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Text('Hot Topics', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                                const Spacer(),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('See all >', style: TextStyle(fontSize: 23, color: Color(0xFF5925DC)),),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height *.2,
                            child:
                            CarouselSlider(
                              items: screens,
                              options: CarouselOptions(
                                autoPlay: false,
                                enableInfiniteScroll: false,
                                viewportFraction: 1,
                                enlargeCenterPage: true,
                                disableCenter: true,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    myCurrentIndex = index;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height *.01,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Text(
                                  'Get Tips', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                                const Spacer(),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'See all >',
                                    style: TextStyle(
                                        fontSize: 23, color: Color(0xFF5925DC)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AliceContainer(image: 'assets/Doctor-PNG-Images 1.png' ,boldText: 'Connect with doctors & get suggestions', smallText: 'Connect now and get expert insights'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height *.01,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Text(
                                  'Get Tips',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 22),
                                ),
                                const Spacer(),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'See all >',
                                    style: TextStyle(
                                        fontSize: 23, color: Color(0xFF5925DC)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AliceContainer(image: 'assets/Doctor-PNG-Images 1.png' ,boldText: 'Connect with doctors & get suggestions', smallText: 'Connect now and get expert insights'),

                        ]),
                        ListView(children: [
                          AliceContainer(image: 'assets/Doctor-PNG-Images 1.png' ,boldText: 'Connect with doctors & get suggestions', smallText: 'Connect now and get expert insights'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),

                          AliceContainer(image: 'assets/Doctor-PNG-Images 1.png' ,boldText: 'Connect with doctors & get suggestions', smallText: 'Connect now and get expert insights'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          AliceContainer(image: 'assets/Doctor-PNG-Images 1.png' ,boldText: 'Connect with doctors & get suggestions', smallText: 'Connect now and get expert insights'),
                        ]),
                        ListView(children: [
                          AliceContainer(image: 'assets/Doctor-PNG-Images 1.png' ,boldText: 'Connect with doctors & get suggestions', smallText: 'Connect now and get expert insights'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),

                          AliceContainer(image: 'assets/Doctor-PNG-Images 1.png' ,boldText: 'Connect with doctors & get suggestions', smallText: 'Connect now and get expert insights'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          AliceContainer(image: 'assets/Doctor-PNG-Images 1.png' ,boldText: 'Connect with doctors & get suggestions', smallText: 'Connect now and get expert insights'),
                        ]),
                        ListView(children: [
                          AliceContainer(image: 'assets/Doctor-PNG-Images 1.png' ,boldText: 'Connect with doctors & get suggestions', smallText: 'Connect now and get expert insights'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),

                          AliceContainer(image: 'assets/Doctor-PNG-Images 1.png' ,boldText: 'Connect with doctors & get suggestions', smallText: 'Connect now and get expert insights'),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .01,
                          ),
                          AliceContainer(image: 'assets/Doctor-PNG-Images 1.png' ,boldText: 'Connect with doctors & get suggestions', smallText: 'Connect now and get expert insights'),
                        ]),

                        // Add content for other tabs here
                      ],
                    ),
                  ),
                ],)
            ],
          ),
        ));
  }
}
