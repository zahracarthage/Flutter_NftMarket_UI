import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nftmarket/models/bidder.dart';
import 'package:nftmarket/screens/details/widgets/BidderCard.dart';

class BidderList extends StatelessWidget {
  final String scrollKey;
  final List<Bidder> bidderList;
  const BidderList(this.scrollKey, this.bidderList, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        key: PageStorageKey(scrollKey),
        padding: const EdgeInsets.all(20),
        itemBuilder: (_, index) => BidderCard(bidderList[index]),
        separatorBuilder: (_, index) => const SizedBox(
              height: 15,
            ),
        itemCount: bidderList.length);
  }
}
