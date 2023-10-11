import 'package:eapp/app/modules/useraccount/views/account_screens/orders/order_items/EventCard.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;
  const MyTimelineTile(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast, this.eventCard});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        //decorate the lines
        beforeLineStyle: LineStyle(          
          color: isPast ? Colors.green : Colors.grey,
        ),
        //decorate the icon
        indicatorStyle: IndicatorStyle(
          width: 30,
          color: isPast ? Colors.green : Colors.grey,
          iconStyle: IconStyle(
            iconData: Icons.done,
            color: Colors.white,
          ),
        ),
        //Event card
      endChild: EventCard(
        isPast: isPast,
        child: eventCard,
      ),
      ),
    );
  }
}
