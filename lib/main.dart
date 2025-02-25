import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

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

class TimelineMainPage extends StatelessWidget {
  const TimelineMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var timelineComp = Timeline.tileBuilder(
          scrollDirection: Axis.horizontal,
          builder: TimelineTileBuilder.fromStyle(
            itemExtent: constraints.maxWidth / 12,
            contentsAlign: ContentsAlign.reverse,
            itemCount: 12,
            contentsBuilder: (context, index) {
              return Text(
                'event $index',
                style: const TextStyle(
                  fontSize: 20,
                ),
              );
            },
            indicatorStyle: IndicatorStyle.dot,
            connectorStyle: ConnectorStyle.solidLine,
          ),
        );

        return GestureDetector(
          child: timelineComp,
          onScaleUpdate: (details) {
            print('scale $details');
          },
          onPanStart: (details) {
            
          },
        );
      },
    );
  }
}
