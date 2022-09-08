// ignore_for_file: prefer_const_constructors

import 'package:book_tickets/screens/Jason_data.dart';
import 'package:book_tickets/screens/ticket_view.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_style.dart';
import 'package:book_tickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sixe = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Waht are',
                  style: Styles.headLineStyle1.copyWith(fontSize: 60),
                ),
                Gap(50),
                Row(
                  children: [
                    Container(
                      height: AppLayout.getHeight(50),
                      width: 340,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppLayout.getHeight(50)),
                              bottomLeft:
                                  Radius.circular(AppLayout.getHeight(50)))),
                      child: Center(
                          child: Text(
                        'Upcoming',
                        style: Styles.headLineStyle3,
                      )),
                    ),
                    Container(
                      height: AppLayout.getHeight(50),
                      width: 340,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              topRight:
                                  Radius.circular(AppLayout.getHeight(50)),
                              bottomRight:
                                  Radius.circular(AppLayout.getHeight(50)))),
                      child: Center(
                          child: Text('Previous',
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white))),
                    ),
                  ],
                ),
                Gap(50),
                Container(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  margin: EdgeInsets.only(left: 40, right: 40),
                  height: AppLayout.getHeight(280),
                  width: sixe.width * 0.80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(30)),
                          topRight: Radius.circular(AppLayout.getHeight(30))),
                      color: Colors.white),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 40),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'NYC',
                            style: Styles.headLineStyle1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Container(
                              padding: EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      AppLayout.getHeight(20)),
                                  border:
                                      Border.all(width: 5, color: Colors.cyan)),
                            ),
                          ),
                          Transform.rotate(
                            angle: 1.5,
                            child: const Icon(
                              Icons.local_airport,
                              color: Colors.cyan,
                              size: 40,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Container(
                              padding: EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      AppLayout.getHeight(20)),
                                  border:
                                      Border.all(width: 5, color: Colors.cyan)),
                            ),
                          ),
                          Text(
                            'NYC',
                            style: Styles.headLineStyle1,
                          ),
                        ],
                      ),
                      Gap(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ney-York',
                            style: Styles.headLineStyle3,
                          ),
                          Text(
                            '8H 30M',
                            style: Styles.headLineStyle3,
                          ),
                          Text(
                            'London',
                            style: Styles.headLineStyle3,
                          )
                        ],
                      ),
                      Gap(30),
                      Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          direction: Axis.horizontal,
                          children: List.generate(
                              15,
                              (index) => const Text(
                                    '-',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 25),
                                  ))),
                      Gap(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ney-York',
                            style: Styles.headLineStyle1,
                          ),
                          Text(
                            '8H 30M',
                            style: Styles.headLineStyle1,
                          ),
                          Text(
                            'London',
                            style: Styles.headLineStyle1,
                          )
                        ],
                      ),
                      Gap(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ney-York',
                            style: Styles.headLineStyle3,
                          ),
                          Text(
                            '8H 30M',
                            style: Styles.headLineStyle3,
                          ),
                          Text(
                            'London',
                            style: Styles.headLineStyle3,
                          )
                        ],
                      ),
                    ]),
                  ),
                ),
                Divider(
                  indent: 39,
                  endIndent: 63,
                  height: 0.2,
                  color: Colors.grey,
                ),
                Container(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  margin: EdgeInsets.only(left: 40, right: 40),
                  height: AppLayout.getHeight(540),
                  width: sixe.width * 0.80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      color: Colors.white),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 40),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Flutte DB',
                            style: Styles.headLineStyle1,
                          ),
                          Text(
                            '5551 78755',
                            style: Styles.headLineStyle1,
                          ),
                        ],
                      ),
                      Gap(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Passanger',
                            style: Styles.headLineStyle3,
                          ),
                          Text(
                            'Passport',
                            style: Styles.headLineStyle3,
                          )
                        ],
                      ),
                      Gap(30),
                      Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          direction: Axis.horizontal,
                          children: List.generate(
                              15,
                              (index) => const Text(
                                    '-',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 25),
                                  ))),
                      Gap(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '7876546789876543',
                            style: Styles.headLineStyle1,
                          ),
                          Text(
                            'BG34Fd4',
                            style: Styles.headLineStyle1,
                          )
                        ],
                      ),
                      Gap(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Number of E-Tickets',
                            style: Styles.headLineStyle3,
                          ),
                          Text(
                            'Booking Code',
                            style: Styles.headLineStyle3,
                          )
                        ],
                      ),
                      Gap(40),
                      Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          direction: Axis.horizontal,
                          children: List.generate(
                              15,
                              (index) => const Text(
                                    '-',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 25),
                                  ))),
                      Gap(10),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/visa.png',
                            scale: 3.4,
                          ),
                          Text(
                            "  ***24562",
                            style: Styles.headLineStyle1,
                          ),
                          Gap(242),
                          Text(
                            '\$44.0',
                            style: Styles.headLineStyle1,
                          ),
                        ],
                      ),
                      Gap(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pyments Methods',
                            style: Styles.headLineStyle3,
                          ),
                          Text(
                            'Price',
                            style: Styles.headLineStyle3,
                          )
                        ],
                      ),
                      Gap(20),
                      Divider(
                        indent: 0,
                        endIndent: 0,
                        height: 0.2,
                        color: Colors.grey,
                      ),
                      Gap(40),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BarcodeWidget(
                          barcode: Barcode.code128(),
                          data: 'https://github.com/martinovovo',
                          drawText: false,
                          color: Styles.textColor,
                          width: double.infinity,
                          height: 70,
                        ),
                      ),
                    ]),
                  ),
                ),
                Gap(15),
                Center(
                  child: TicketView(
                    tickets: ticketsList[0],
                  ),
                )
              ]),
        )
      ]),
    );
  }
}
