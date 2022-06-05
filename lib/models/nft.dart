import 'package:nftmarket/models/bidder.dart';

class Nft {
  String? imgUrl;
  String? name;
  num? price;
  String? desc;
  List<Bidder>? bidders;
  List<Bidder>? history;

  Nft(
      {this.imgUrl,
      this.name,
      this.price,
      this.desc,
      this.bidders,
      this.history});
}
