import 'package:edu_app/View/ThirdScreen.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            ClipPath(
              clipper: DiagonalPathClipperTwo(),
              child: Container(
                height: 150,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Row(
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: const Icon(Icons.arrow_back_sharp),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ThirdScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    const Center(
                      child: Text(
                        "My Qutor",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: const <Widget>[
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Hafiz Ahsan",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.vpn_key,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/pic.png"),
                      radius: (55),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: SizedBox(
                        width: 300,
                        child: Text(
                          "Ahamdulillah, for 1 more year being on this platform, and it shaped me.",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: const <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.orange,
                      ),
                      Text(
                        "Wagsa Maju",
                        style: TextStyle(color: Colors.orange),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Text(
                        "2 years",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: ContainedTabBarView(
                  tabBarProperties: const TabBarProperties(
                    width: double.infinity,
                    height: 50,
                    indicatorColor: Colors.blue,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                  ),
                  tabs: const [
                    Text(
                      'Availability',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      'Reviews',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                  views: [
                    SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 20,
                          ),
                          ExpansionTile(
                            trailing: const SizedBox(),
                            title: Row(
                              children: <Widget>[
                                ClipPath(
                                  clipper:
                                      ArrowClipper(25.0, 120.0, Edge.RIGHT),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.10,
                                    width: MediaQuery.of(context).size.width *
                                        0.23,
                                    child: Column(
                                      children: const <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 10.0,
                                          ),
                                          child: Text(
                                            "Mon \n 18",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  children: const <Widget>[
                                    Text(
                                      "Class Duration",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        "1.5 hrs approx:",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                                // Todo: Set Divider here
                                const Divider(
                                  thickness: 5,
                                  indent: 10,
                                  endIndent: 10,
                                  color: Colors.black,
                                ),
                                Column(
                                  children: const <Widget>[
                                    Text(
                                      "Timings (All Day)",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        "Intensive Quran Recitation",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // children: const <Widget>[
                            //   ListTile(title: Text('This is tile number 1')),
                            // ],
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        left: 60.0,
                                        bottom: 20.0,
                                      ),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              179, 217, 211, 211),
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                          left: 20.0,
                                          right: 60.0,
                                          top: 5.0,
                                          bottom: 5.0,
                                        ),
                                        child: Text(
                                          '9AM - 11AM (Morning)',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 60.0,
                                      bottom: 20.0,
                                    ),
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            179, 217, 211, 211),
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                        left: 20.0,
                                        right: 60.0,
                                        top: 5.0,
                                        bottom: 5.0,
                                      ),
                                      child: Text(
                                        '5PM - 7PM (Evening)',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ExpansionTile(
                            trailing: const SizedBox(),
                            title: Row(
                              children: <Widget>[
                                ClipPath(
                                  clipper:
                                      ArrowClipper(25.0, 120.0, Edge.RIGHT),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.10,
                                    width: MediaQuery.of(context).size.width *
                                        0.23,
                                    child: Column(
                                      children: const <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 10.0,
                                          ),
                                          child: Text(
                                            "Sun \n 17",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  children: const <Widget>[
                                    Text(
                                      "Class Duration",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        "2 hrs approx:",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                                // Todo: Set Divider here
                                const Divider(
                                  thickness: 5,
                                  indent: 10,
                                  endIndent: 10,
                                  color: Colors.black,
                                ),
                                Column(
                                  children: const <Widget>[
                                    Text(
                                      "Timings (2 slots)",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        "Al-Quran Basic Class",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        left: 60.0,
                                        bottom: 20.0,
                                      ),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              179, 217, 211, 211),
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                          left: 20.0,
                                          right: 60.0,
                                          top: 5.0,
                                          bottom: 5.0,
                                        ),
                                        child: Text(
                                          '9AM - 11AM (Morning)',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 60.0,
                                      bottom: 20.0,
                                    ),
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            179, 217, 211, 211),
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                        left: 20.0,
                                        right: 60.0,
                                        top: 5.0,
                                        bottom: 5.0,
                                      ),
                                      child: Text(
                                        '5PM - 7PM (Evening)',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ExpansionTile(
                            trailing: const SizedBox(),
                            title: Row(
                              children: <Widget>[
                                ClipPath(
                                  clipper:
                                      ArrowClipper(25.0, 120.0, Edge.RIGHT),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.10,
                                    width: MediaQuery.of(context).size.width *
                                        0.23,
                                    child: Column(
                                      children: const <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 10.0,
                                          ),
                                          child: Text(
                                            "Thu \n 14",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  children: const <Widget>[
                                    Text(
                                      "Class Duration",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        "2 hrs approx:",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                                // Todo: Set Divider here
                                const Divider(
                                  thickness: 5,
                                  indent: 10,
                                  endIndent: 10,
                                  color: Colors.black,
                                ),
                                Column(
                                  children: const <Widget>[
                                    Text(
                                      "Timings (2 slots)",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        "Intensive Quran Recitation",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        left: 60.0,
                                        bottom: 20.0,
                                      ),
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              179, 217, 211, 211),
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                          left: 20.0,
                                          right: 60.0,
                                          top: 5.0,
                                          bottom: 5.0,
                                        ),
                                        child: Text(
                                          '9AM - 11AM (Morning)',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 60.0,
                                      bottom: 20.0,
                                    ),
                                    decoration: BoxDecoration(
                                      // color: Colors.white60,
                                      color: const Color.fromARGB(
                                          179, 217, 211, 211),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                        left: 20.0,
                                        right: 60.0,
                                        top: 5.0,
                                        bottom: 5.0,
                                      ),
                                      child: Text(
                                        '5PM - 7PM (Evening)',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Padding(
                              padding: EdgeInsets.all(18.0),
                              child: Text(
                                "Student Reviews",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                const CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/pic.png"),
                                  radius: (25),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Text(
                                      "Nadia",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 300,
                                      child: Text(
                                        "This tutor is really nice, he helped me getting the most out of me.",
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                const CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/pic.png"),
                                  radius: (25),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Text(
                                      "Ana",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 300,
                                      child: Text(
                                        "I Loved the way Master Zubair teaches, he is calm personality.",
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
