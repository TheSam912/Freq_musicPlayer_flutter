import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

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
      backgroundColor: const Color(0xffD9D9DB),
      appBar: AppBar(
        backgroundColor: const Color(0xffB5D6F1),
        title: const Text(
          "Frequency For Our Mind",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff574437),
              fontSize: 24),
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
              decoration: const BoxDecoration(
                  color: Color(0xffB5D6F1),
                  borderRadius: BorderRadius.only(
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
                  const Text(
                    "639 Hz, Healing Music, Heart Chakra, Harmonize Relationships, Attract Love, Reconnect Relationships",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff574437), fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "00:00",
                          style: TextStyle(color: Color(0xff574437)),
                        ),
                        Expanded(
                          child: Slider(
                            min: 0,
                            max: 100,
                            activeColor: Color(0xff01BCC6),
                            value: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                        ),
                        const Text("10:30",
                            style: TextStyle(color: Color(0xff574437))),
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
                                border: Border.all(
                                    color: const Color(0xff01BCC6), width: 1),
                                color: Colors.white.withOpacity(0.5)),
                            child: const Icon(
                              Icons.arrow_left,
                              color: Color(0xff01BCC6),
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
                                border: Border.all(
                                    color: const Color(0xff01BCC6), width: 1),
                                color: Colors.white.withOpacity(0.5)),
                            child: Icon(
                              isPlaying == false
                                  ? Icons.play_arrow
                                  : Icons.pause,
                              color: const Color(0xff01BCC6),
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
                                border: Border.all(
                                    color: Color(0xff01BCC6), width: 1),
                                color:
                                    const Color(0xffD9D9DB).withOpacity(0.8)),
                            child: const Icon(
                              Icons.arrow_right,
                              color: Color(0xff01BCC6),
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
                itemCount: 3,
                itemBuilder: (context, index) {
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
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
