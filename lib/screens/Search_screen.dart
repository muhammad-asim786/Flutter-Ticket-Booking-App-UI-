// import 'dart:html';
import 'dart:ui';

import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 70),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Waht are',
                style: Styles.headLineStyle1.copyWith(fontSize: 60),
              ),
              Text('You Looking For?',
                  style: Styles.headLineStyle1.copyWith(fontSize: 60)),
              Gap(40),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 340,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50))),
                    child: Center(
                        child: Text(
                      'AirLines Tickets',
                      style: Styles.headLineStyle3,
                    )),
                  ),
                  Container(
                    height: 50,
                    width: 340,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Center(
                        child: Text('Hotels',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white))),
                  ),
                ],
              ),
              Gap(50),
              Container(
                padding: EdgeInsets.all(12),
                height: 80,
                width: 1000,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15))),
                child: Container(
                  padding: EdgeInsets.only(top: 14, left: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.flight_takeoff,
                        size: 30,
                      ),
                      Gap(15),
                      Text(
                        'AirLines Tickets',
                        style: Styles.headLineStyle3.copyWith(fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(50),
              Container(
                padding: EdgeInsets.all(12),
                height: 80,
                width: 1000,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15))),
                child: Container(
                  padding: EdgeInsets.only(top: 14, left: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.flight_land_outlined,
                        size: 30,
                      ),
                      Gap(15),
                      Text(
                        'AirLines Tickets',
                        style: Styles.headLineStyle3.copyWith(fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(50),
              Container(
                padding: EdgeInsets.all(12),
                height: 80,
                width: 1000,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15))),
                child: Container(
                  child: Center(
                    child: Text(
                      'AirLines Tickets',
                      style: Styles.headLineStyle3
                          .copyWith(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Gap(50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'UPCOMING FLIGHTS',
                    style: Styles.headLineStyle2.copyWith(fontSize: 30),
                  ),
                  InkWell(
                    onTap: () {
                      print('you tab on viewall');
                    },
                    child: Text(
                      'View all',
                      style: Styles.textStyle
                          .copyWith(color: Styles.primaryColor, fontSize: 25),
                    ),
                  ),
                ],
              ),
              Gap(50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: AppLayout.getHeight(800),
                    width: size.width * 0.42,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(40)),
                        color: Colors.white),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(15),
                            height: AppLayout.getHeight(400),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/2.jpeg')),
                                borderRadius: BorderRadius.circular(
                                    AppLayout.getHeight(40))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              '20% Discount on the early booking of Do not miss',
                              style:
                                  Styles.headLineStyle1.copyWith(fontSize: 50),
                            ),
                          ),
                        ]),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 23),
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: AppLayout.getHeight(25),
                                  horizontal: AppLayout.getHeight(18)),
                              // margin: EdgeInsets.symmetric(
                              //     horizontal: 23, vertical: 0),
                              height: AppLayout.getHeight(380),
                              width: size.width * 0.49,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF3ABBBB),
                                  borderRadius: BorderRadius.circular(40)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Discount \nfor  survey',
                                    style: Styles.headLineStyle2.copyWith(
                                        color: Colors.white, fontSize: 60),
                                  ),
                                  Text(
                                    'Take the sevey about our services and get discount',
                                    style: Styles.headLineStyle2.copyWith(
                                        color: Colors.white, fontSize: 40),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: -50,
                              top: -45,
                              child: Container(
                                padding: EdgeInsets.all(40),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 30, color: Color(0xFF189999))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(1),
                      Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          height: AppLayout.getHeight(380),
                          width: size.width * 0.49,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(40)),
                          child: Container(
                            padding: EdgeInsets.all(30),
                            child: Column(
                              children: [
                                Text(
                                  'Take Love',
                                  style: Styles.headLineStyle2.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                ),
                                Gap(15),
                                RichText(
                                  text: const TextSpan(children: [
                                    TextSpan(
                                        text: '🥰',
                                        style: TextStyle(fontSize: 68)),
                                    TextSpan(
                                        text: '🥰',
                                        style: TextStyle(fontSize: 90)),
                                    TextSpan(
                                        text: '🥰',
                                        style: TextStyle(fontSize: 68)),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
