// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:book_tickets/screens/Jason_data.dart';
import 'package:book_tickets/screens/home_screen.dart';
import 'package:book_tickets/screens/hotel_screen.dart';
import 'package:book_tickets/screens/ticket_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../utils/app_style.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(children: [
            Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning',
                      style: Styles.headLineStyle4.copyWith(fontSize: 20),
                    ),
                    Gap(5),
                    Text(
                      'BOOK TICKETS',
                      style: Styles.headLineStyle1.copyWith(fontSize: 35),
                    ),
                  ],
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('assets/aeroplane.jpeg'))),
                ),
              ],
            ),
            Gap(30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                  color: Color(0xFFF4F6FD),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Icon(Icons.search),
                  Text('Search....'),
                ],
              ),
            ),
            Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'UPCOMING FLIGHTS',
                  style: Styles.headLineStyle2.copyWith(fontSize: 35),
                ),
                InkWell(
                  onTap: () {
                    print('you tab on viewall');
                  },
                  child: Text(
                    'View all',
                    style: Styles.textStyle
                        .copyWith(color: Styles.primaryColor, fontSize: 26),
                  ),
                ),
              ],
            ),
          ]),
        ),
        Gap(20),
        SingleChildScrollView(
          padding: EdgeInsets.only(left: 20, right: 20),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: ticketsList
                .map((singleTickets) => TicketView(tickets: singleTickets))
                .toList(),
          ),
        ),
        Gap(50),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'HOTELS',
                style: Styles.headLineStyle2.copyWith(fontSize: 35),
              ),
              InkWell(
                onTap: () {
                  print('you tab on viewall');
                },
                child: Text(
                  'View all',
                  style: Styles.textStyle
                      .copyWith(color: Styles.primaryColor, fontSize: 26),
                ),
              ),
            ],
          ),
        ),
        Gap(15),
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 40),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: hotelList
                .map((singleHotel) => HotelScreen(
                      hotel: singleHotel,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
