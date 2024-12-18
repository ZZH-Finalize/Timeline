import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

void main() {
  runApp(const TimelineApp());
}

class TimelineApp extends StatelessWidget {
  const TimelineApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TimelineMainPage(),
      title: 'Timeline',
    );
  }
}

class TimelineMainPage extends StatelessWidget {
  const TimelineMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: Container(
          color: Colors.blueAccent,
        ),

        // child: TimelineTile(
        //   axis: TimelineAxis.vertical,
        //   alignment: TimelineAlign.center,
        //   startChild: Container(
        //     constraints: const BoxConstraints(minHeight: 10),
        //     color: Colors.lightGreenAccent,
        //   ),
        //   // endChild: Container(
        //   //   constraints: const BoxConstraints(minHeight: 10),
        //   //   color: Colors.lightBlueAccent,
        //   // ),
        // ),
      ),
    );
  }
}
