import 'package:nftmarket/models/bidder.dart';
import 'package:nftmarket/models/nft.dart';

class Profile {
  String? imgUrl;
  String? name;
  String? twitter;
  String? desc;
  String? email;
  List<Nft>? creations;
  List<Nft>? collections;

  Profile(
      {this.imgUrl,
      this.name,
      this.twitter,
      this.desc,
      this.email,
      this.collections,
      this.creations});

  static Profile GenerateProfile() {
    return Profile(
        imgUrl: 'assets/images/avatar.jpeg',
        name: 'Alexy Prefontain',
        twitter: '@zcarthage',
        desc:
            '3D artist from Montreal, Canada. Award Winning, Self proclaimed, narcistic af',
        email: 'euphoria@outlook.com',
        creations: [
          Nft(
            imgUrl: 'assets/images/nft1.jpeg',
            name: 'consume',
            price: 1.53,
            desc:
                'This is an Aestetic picture and collab with my dearest friend, made in blender',
            bidders: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Nft(
            imgUrl: 'assets/images/nft2.jpeg',
            name: 'Your',
            price: 2.53,
            desc:
                'This is an Aestetic picture and collab with my dearest friend, made in blender',
            bidders: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Nft(
            imgUrl: 'assets/images/nft3.jpeg',
            name: 'self',
            price: 4.5,
            desc:
                'This is an Aestetic picture and collab with my dearest friend, made in blender',
            bidders: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Nft(
            imgUrl: 'assets/images/nft4.jpeg',
            name: 'Reflect',
            price: 3.3,
            desc:
                'This is an Aestetic picture and collab with my dearest friend, made in blender',
            bidders: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Nft(
            imgUrl: 'assets/images/nft9.jpeg',
            name: 'Reflect',
            price: 3.3,
            desc:
                'This is an Aestetic picture and collab with my dearest friend, made in blender',
            bidders: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Nft(
            imgUrl: 'assets/images/nft10.jpeg',
            name: 'Reflect',
            price: 3.3,
            desc:
                'This is an Aestetic picture and collab with my dearest friend, made in blender',
            bidders: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
        ],
        collections: [
          Nft(
            imgUrl: 'assets/images/nft5.jpeg',
            name: 'consume',
            price: 1.53,
            desc:
                'This is an Aestetic picture and collab with my dearest friend, made in blender',
            bidders: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Nft(
            imgUrl: 'assets/images/nft6.jpeg',
            name: 'Your',
            price: 2.53,
            desc:
                'This is an Aestetic picture and collab with my dearest friend, made in blender',
            bidders: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Nft(
            imgUrl: 'assets/images/nft7.jpeg',
            name: 'self',
            price: 4.5,
            desc:
                'This is an Aestetic picture and collab with my dearest friend, made in blender',
            bidders: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Nft(
            imgUrl: 'assets/images/nft8.jpeg',
            name: 'Reflect',
            price: 3.3,
            desc:
                'This is an Aestetic picture and collab with my dearest friend, made in blender',
            bidders: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Nft(
            imgUrl: 'assets/images/nft11.jpeg',
            name: 'Reflect',
            price: 3.3,
            desc:
                'This is an Aestetic picture and collab with my dearest friend, made in blender',
            bidders: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
        ]);
  }
}
