import 'package:flutter/material.dart';
import 'package:golink/components/banner.dart';
import 'package:golink/themes.dart';

class EventListScreen extends StatefulWidget {
  const EventListScreen({super.key});

  static String routeName = '/event-list';

  @override
  State<EventListScreen> createState() => _EventListScreenState();
}

class _EventListScreenState extends State<EventListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Events"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const HomeBannerSlider(dataBanner: [
              'assets/images/olahraga.jpg',
              'assets/images/olahraga.jpg',
            ]),
            const SizedBox(height: 10),
            const Text(
              "List Event",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey,
                ),
                color: Themes.darkBlueColor,
              ),
              child: Column(
                children: [
                  const Text(
                    "Pekan Olahraga Nasional",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Divider(),
                  GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      childAspectRatio: 2.15 / 1,
                    ),
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/prize.png',
                            width: 25,
                          ),
                          const Text(
                            "Rp. 100.000",
                            style: TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/schedule.png',
                            width: 25,
                          ),
                          const Text(
                            "20-08-2023",
                            style: TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/google-maps.png',
                            width: 25,
                          ),
                          const Text(
                            "Pahoman",
                            style: TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey,
                ),
                color: Themes.darkBlueColor,
              ),
              child: Column(
                children: [
                  const Text(
                    "Piala Gubernur",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Divider(),
                  GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      childAspectRatio: 1.7 / 1,
                    ),
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/prize.png',
                            width: 25,
                          ),
                          const Text(
                            "Rp. 100.000",
                            style: TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/schedule.png',
                            width: 25,
                          ),
                          const Text(
                            "05-09-2023",
                            style: TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/google-maps.png',
                            width: 25,
                          ),
                          const Text(
                            "UBL",
                            style: TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey,
                ),
                color: Themes.darkBlueColor,
              ),
              child: Column(
                children: [
                  const Text(
                    "Piala Presiden",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Divider(),
                  GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      childAspectRatio: 1.7 / 1,
                    ),
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/prize.png',
                            width: 25,
                          ),
                          const Text(
                            "Rp. 100.000",
                            style: TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/schedule.png',
                            width: 25,
                          ),
                          const Text(
                            "05-10-2023",
                            style: TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/google-maps.png',
                            width: 25,
                          ),
                          const Text(
                            "PKOR",
                            style: TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
