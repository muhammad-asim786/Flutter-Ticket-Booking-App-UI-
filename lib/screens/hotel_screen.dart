import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(15),
          vertical: AppLayout.getHeight(17)),
      margin: EdgeInsets.only(
          right: AppLayout.getHeight(5), top: AppLayout.getHeight(5)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
          color: Styles.primaryColor),
      width: size.width * 0.6,
      height: AppLayout.getHeight(700),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            height: AppLayout.getHeight(500),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/${hotel['image']}")),
            )),
        Gap(10),
        Text(
          hotel['place'],
          style:
              Styles.headLineStyle2.copyWith(color: Colors.white, fontSize: 40),
        ),
        Gap(1),
        Text(
          hotel['destination'],
          style: Styles.headLineStyle2
              .copyWith(color: Colors.grey.shade400, fontSize: 35),
        ),
        Gap(10),
        Text(
          hotel['price'],
          style:
              Styles.headLineStyle1.copyWith(color: Colors.white, fontSize: 40),
        )
      ]),
    );
  }
}
