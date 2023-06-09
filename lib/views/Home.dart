import 'package:flutter/material.dart';

import '../model/model.dart';
import '../utils/colors.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPlaying = false;
  double _value = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: lightBlue,
        title: Text(
          "Frequency For Our Mind",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: textColor, fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: lightBlue,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: const Image(
                        image: AssetImage('assets/images/music_cover.jpg'),
                        width: 250,
                        height: 250,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "639 Hz, Healing Music, Heart Chakra, Harmonize Relationships, Attract Love, Reconnect Relationships",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: textColor, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "00:00",
                          style: TextStyle(color: textColor),
                        ),
                        Expanded(
                          child: Slider(
                            min: 0,
                            max: 100,
                            activeColor: mainBlue,
                            value: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                        ),
                        Text("10:30", style: TextStyle(color: textColor)),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: mainBlue, width: 1),
                                color: Colors.white.withOpacity(0.5)),
                            child: Icon(
                              Icons.arrow_left,
                              color: mainBlue,
                              size: 60,
                            ),
                          )),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              isPlaying = !isPlaying;
                            });
                          },
                          icon: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: mainBlue, width: 1),
                                color: lightWhite),
                            child: Icon(
                              isPlaying == false
                                  ? Icons.play_arrow
                                  : Icons.pause,
                              color: mainBlue,
                              size: 42,
                            ),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: mainBlue, width: 1),
                                color: lightWhite),
                            child: Icon(
                              Icons.arrow_right,
                              color: mainBlue,
                              size: 60,
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              margin: const EdgeInsets.all(2),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: myList.length,
                  itemBuilder: (context, index) {
                    if (index == myList.length - 1) {
                      return Container(
                          height: 250,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xffD9D9DB)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_right,
                                    size: 60,
                                  )),
                              const Text(
                                "More",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ));
                    }
                    return Container(
                      height: 250,
                      margin: const EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: const Image(
                          image: AssetImage("assets/images/music_cover.jpg"),
                          width: 250,
                          height: 250,
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
