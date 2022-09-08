// ignore_for_file: prefer_const_constructors

import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_style.dart';
import 'package:book_tickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> tickets;
  const TicketView({Key? key, required this.tickets}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          SizedBox(
            child: Container(
              padding: EdgeInsets.all(20),
              width: size.width * 0.80,
              height: AppLayout.getHeight(150),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21))),
                color: Color(0xFF526799),
              ),
              child: Column(children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Row(
                          children: [
                            Text(
                              tickets['from']['code'],
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white, fontSize: 30),
                            ),
                            Expanded(child: Container()),
                            const ThickContainer(),
                            Expanded(
                                child: SizedBox(
                              height: AppLayout.getHeight(24),
                              child: Flex(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  direction: Axis.horizontal,
                                  children: List.generate(
                                      15,
                                      (index) => const Text(
                                            '-',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ))),
                            )),
                            const ThickContainer(),
                            Spacer(),
                            Text(
                              tickets['to']['code'],
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white, fontSize: 30),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: AppLayout.getHeight(250), top: 5),
                          child: Transform.rotate(
                            angle: 1.5,
                            child: const Icon(
                              Icons.local_airport,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(tickets['from']['name'],
                            style: Styles.headLineStyle4.copyWith(
                                color: Colors.grey[350], fontSize: 23)),
                        Text(tickets['flying_time'],
                            style: Styles.headLineStyle3.copyWith(
                                color: Colors.grey[350], fontSize: 23)),
                        Text(tickets['to']['name'],
                            style: Styles.headLineStyle3.copyWith(
                                color: Colors.grey[350], fontSize: 23)),
                      ],
                    ),
                  ],
                ),
              ]),
            ),
          ),
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(20)),
            width: size.width * 0.80,
            height: AppLayout.getHeight(130),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                  bottomRight: Radius.circular(AppLayout.getHeight(21))),
              color: Colors.redAccent,
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tickets['date'],
                    style: Styles.headLineStyle2
                        .copyWith(color: Colors.white, fontSize: 30),
                  ),
                  Text(tickets['deprature_time'],
                      style: Styles.headLineStyle2
                          .copyWith(color: Colors.white, fontSize: 30)),
                  Text(tickets['number'],
                      style: Styles.headLineStyle2
                          .copyWith(color: Colors.white, fontSize: 30)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '    Date',
                    style: Styles.headLineStyle4
                        .copyWith(color: Colors.grey[350], fontSize: 23),
                  ),
                  Text('            Departure Time',
                      style: Styles.headLineStyle4
                          .copyWith(color: Colors.grey[350], fontSize: 23)),
                  Text('Number',
                      style: Styles.headLineStyle4
                          .copyWith(color: Colors.grey[350], fontSize: 23)),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
