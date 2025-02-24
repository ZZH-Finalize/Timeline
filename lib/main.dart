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

class EventBubble extends StatelessWidget {
  final DateTime time;
  final String what;

  const EventBubble(this.time, this.what, {super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12.0),
            // border: Border.all(color: Colors.blue, width: 2.0),
          ),
          child: Text(
            '事件: $what',
            style: const TextStyle(fontSize: 14.0),
          ),
        ),
        Container(
          width: 2,
          height: 20,
          color: color,
        )
      ],
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
    final color = Theme.of(context).colorScheme.secondary;
    return Center(
      child: GestureDetector(
        onDoubleTap: () {
          print('double click');
        },
        child: Container(
          height: 10,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            // border: Border.all(color: Colors.blue, width: 2.0),
          ),
        ),
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
