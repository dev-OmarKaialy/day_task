import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final textStyle = const TextStyle(color: Colors.white, fontSize: 24);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xfffed36a),
            onPressed: () {},
            child: const Icon(Icons.add)),
        backgroundColor: const Color(0xff212832),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                DateFormat('MMMM').format(DateTime.now()),
                style: textStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0; i < 7; i++)
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        padding: const EdgeInsets.all(8),
                        color: const Color(0xff263238),
                        child: Column(
                          children: [
                            Text(
                              (DateTime.now().add(Duration(days: i - 3)).day)
                                  .toString(),
                              style: textStyle,
                            ),
                            Text(
                              DateFormat('EEE').format(
                                  DateTime.now().add(Duration(days: i - 3))),
                              style: textStyle.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                      )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Today\'s Tasks',
                style: textStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (int i = 0; i < 5; i++)
                    Container(
                      color: const Color(0xfffed36a),
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        color: const Color(0xff263238),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lorem Ipsum'.toString(),
                              style: textStyle,
                            ),
                            Text(
                              '${DateFormat('HH:mm').format(DateTime.now())} - ${DateFormat('HH:mm').format(DateTime.now().add(const Duration(hours: 4)))}',
                              style: textStyle.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    )
                ],
              )
            ],
          ),
        ));
  }
}
