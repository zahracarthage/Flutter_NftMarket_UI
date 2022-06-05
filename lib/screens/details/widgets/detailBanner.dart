import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nftmarket/models/nft.dart';

class detailBanner extends StatelessWidget {
  final Nft nft;
  const detailBanner(this.nft, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          height: 400,
          width: double.maxFinite,
          child: Hero(
            tag: nft.imgUrl!,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(nft.imgUrl!, fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          right: 30,
          bottom: 30,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.favorite_outline_outlined,
              color: Colors.pink,
            ),
          ),
        )
      ],
    );
  }
}
