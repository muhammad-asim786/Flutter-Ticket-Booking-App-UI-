// ignore_for_file: prefer_const_constructors

import 'package:book_tickets/screens/tickets_screen.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_style.dart';
import 'package:book_tickets/widgets/thick_container.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('assets/aeroplane.jpeg'))),
                    ),
                    Gap(20),
                    Container(
                      padding: EdgeInsets.only(bottom: 0, top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Book Tickets',
                            style: Styles.headLineStyle1.copyWith(fontSize: 46),
                          ),
                          Text(
                            'New-York',
                            style: Styles.headLineStyle4.copyWith(
                                color: Colors.grey.shade500,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                          Gap(10),
                          Container(
                            height: 40,
                            width: 260,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      padding: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                            width: 4,
                                            color:
                                                Color.fromARGB(255, 7, 5, 119),
                                          )),
                                    ),
                                  ),
                                  Gap(15),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 2),
                                    child: Text(
                                      'Premium Status',
                                      style: Styles.headLineStyle3.copyWith(
                                          fontSize: 30,
                                          color:
                                              Color.fromARGB(255, 20, 5, 132)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 180, bottom: 65),
                      child: Text(
                        'Edit',
                        style: Styles.headLineStyle3.copyWith(fontSize: 25),
                      ),
                    )
                  ],
                ),
                Gap(50),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(15))),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 40,
                              child: Icon(
                                FluentSystemIcons
                                    .ic_fluent_lightbulb_circle_filled,
                                size: 40,
                                color: Colors.blue,
                              ),
                            ),
                            Gap(15),
                            Container(
                              padding: EdgeInsets.only(top: 15),
                              child: Column(
                                children: [
                                  Text(
                                    'You have got new award',
                                    style: Styles.headLineStyle1.copyWith(
                                        fontSize: 45, color: Colors.white),
                                  ),
                                  Text(
                                    'You have 95 Flights in year',
                                    style: Styles.headLineStyle4.copyWith(
                                        fontSize: 35,
                                        color: Colors.grey.shade300),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: -30,
                      top: -30,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 25,
                            color: Color.fromARGB(255, 85, 21, 189),
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Gap(30),
            Text(
              'Accumulated miles',
              style: Styles.headLineStyle2.copyWith(fontSize: 30),
            ),
            Gap(70),
            Container(
              child: Center(
                child: Text(
                  '1908042',
                  style: Styles.headLineStyle1
                      .copyWith(fontSize: 60, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Gap(40),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Miles Accured',
                    style: Styles.headLineStyle4.copyWith(fontSize: 26),
                  ),
                  Text('11 June 2022',
                      style: Styles.headLineStyle4.copyWith(fontSize: 26))
                ],
              ),
            ),
            Gap(40),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '23 042',
                    style: Styles.headLineStyle1.copyWith(fontSize: 30),
                  ),
                  Text('Airline Co',
                      style: Styles.headLineStyle1.copyWith(fontSize: 30))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Miles',
                    style: Styles.headLineStyle4.copyWith(fontSize: 25),
                  ),
                  Text('Recived Form',
                      style: Styles.headLineStyle4.copyWith(fontSize: 25))
                ],
              ),
            ),
            Gap(40),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '25',
                    style: Styles.headLineStyle1.copyWith(fontSize: 30),
                  ),
                  Text('McDonal',
                      style: Styles.headLineStyle1.copyWith(fontSize: 30))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Miles',
                    style: Styles.headLineStyle4.copyWith(fontSize: 25),
                  ),
                  Text('Recived Form',
                      style: Styles.headLineStyle4.copyWith(fontSize: 25))
                ],
              ),
            ),
            Gap(40),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '67 2890',
                    style: Styles.headLineStyle1.copyWith(fontSize: 30),
                  ),
                  Text('DBestech',
                      style: Styles.headLineStyle1.copyWith(fontSize: 30))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Miles',
                    style: Styles.headLineStyle4.copyWith(fontSize: 25),
                  ),
                  Text('Recived Form',
                      style: Styles.headLineStyle4.copyWith(fontSize: 25))
                ],
              ),
            ),
            Gap(60),
            Column(
              children: [
                Text(
                  'How to get More Miles',
                  style: Styles.headLineStyle1
                      .copyWith(color: Color.fromARGB(255, 137, 52, 137)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
