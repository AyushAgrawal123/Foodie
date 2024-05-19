import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
    );
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ), // BoxDecoration
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Delivery fee
          Column(
            children: [
              Text(
                'Rs.75',
                style: myPrimaryTextStyle,
              ),
              Text(
                'Delivery fee',
                style: mySecondaryTextStyle,
              ),
            ], // Children
          ), // Column
          const SizedBox(width: 20), // SizedBox for spacing
          // Delivery time
          Column(
            children: [
              Text(
                '15-30 min',
                style: myPrimaryTextStyle,
              ), // Text
              Text(
                'Delivery time',
                style: mySecondaryTextStyle,
              ),
            ], // Children
          ), // Column
        ], // Children
      ), // Row
    ); // Container
  }
}
