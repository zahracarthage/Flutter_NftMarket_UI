import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nftmarket/models/nft.dart';
import 'package:nftmarket/models/profile.dart';

class artInfo extends StatelessWidget {
  final Nft nft;
  artInfo(this.nft, {Key? key}) : super(key: key);
  final Profile profile = Profile.GenerateProfile();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nft.name!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              _buildIconText(
                profile.imgUrl!,
                0,
                'Creator',
                profile.twitter!.substring(1),
              ),
              const SizedBox(
                width: 100,
              ),
              _buildIconText(
                  'assets/images/eth.png', 8, 'Current bid', '${nft.price} ETH')
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            nft.desc!,
            style: const TextStyle(
                wordSpacing: 3, height: 1.3, color: Colors.black87),
          )
        ],
      ),
    );
  }

  _buildIconText(String img, double padding, String title, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: Image.asset(img),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black45,
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16, height: 1.5),
            )
          ],
        )
      ],
    );
  }
}
