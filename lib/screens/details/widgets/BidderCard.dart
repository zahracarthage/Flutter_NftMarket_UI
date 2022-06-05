import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nftmarket/constants/colors.dart';
import 'package:nftmarket/models/bidder.dart';
import 'package:intl/intl.dart';

class BidderCard extends StatelessWidget {
  final Bidder bidder;
  const BidderCard(this.bidder, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: randomPinkList[random.nextInt(9) + 1],
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bid Placed by ${bidder.name}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '${DateFormat.yMMMd().format(bidder.date!)} at ${bidder.date!.hour}:${bidder.date!.minute}',
                  style: TextStyle(color: Colors.grey[400]!),
                )
              ],
            )
          ],
        ),
        Text(
          '${bidder.price} ETH',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
