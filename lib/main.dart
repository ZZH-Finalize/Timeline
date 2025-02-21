import 'package:flutter/material.dart';

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

class Event extends StatelessWidget {
  DateTime time;
  String what;

  Event(this.time, this.what);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.blue, width: 2.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '时间: ${time.toString()}',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            '事件: $what',
            style: TextStyle(fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}

class Timeline extends StatelessWidget {
  // final eventList = [
  //   Event(DateTime.utc(0), '1'),
  //   Event(DateTime.utc(3), '2'),
  //   Event(DateTime.utc(7), '3'),
  //   Event(DateTime.utc(27), '4'),
  // ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onDoubleTap: () {
          print('double click');
        },
        child: Container(
          height: 120,
          child: Event(DateTime.now(), 'assada'),
        ),
        // child: Container(
        //   color: Colors.blue[300],
        //   height: 7,
        // ),
      ),
    );
  }
}

class TimelineMainPage extends StatelessWidget {
  const TimelineMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Timeline();
  }
}
