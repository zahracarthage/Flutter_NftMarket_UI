import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nftmarket/constants/colors.dart';
import 'package:nftmarket/models/nft.dart';
import 'package:nftmarket/screens/details/widgets/BidderList.dart';
import 'package:nftmarket/screens/details/widgets/artInfo.dart';
import 'package:nftmarket/screens/details/widgets/buyBtn.dart';
import 'package:nftmarket/screens/details/widgets/detailBanner.dart';
import 'package:nftmarket/screens/profile/widgets/tab_silver_delegate.dart';

class DetailPage extends StatelessWidget {
  final Nft nft;
  DetailPage(this.nft, {Key? key}) : super(key: key);
  final tabs = ['Info', 'Bids', 'History'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                elevation: 0,
                expandedHeight: 330,
                backgroundColor: buttonColor,
                leading: _buildIcon(context, Icons.arrow_back_ios_outlined,
                    back: true),
                actions: [
                  _buildIcon(context, Icons.more_vert_outlined, back: false)
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: detailBanner(nft),
                ),
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: artInfo(nft),
              ),
              SliverPersistentHeader(
                delegate: TabSliverDelegate(TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
                    isScrollable: true,
                    labelPadding: EdgeInsets.only(left: 0, right: 40),
                    tabs: tabs
                        .map(
                          (e) => Tab(
                            child: Text(
                              e,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                        .toList())),
                pinned: true,
              )
            ];
          },
          body: TabBarView(
            children: [
              ListView(
                children: const [],
              ),
              BidderList('Bids', nft.bidders!),
              BidderList('History', nft.history!)
            ],
          ),
        ),
      ),
      floatingActionButton: const BuyBtn(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _buildIcon(BuildContext context, IconData icon, {bool back = false}) {
    return IconButton(
        onPressed: back ? () => Navigator.of(context).pop() : null,
        splashRadius: 25,
        icon: Icon(icon, color: Colors.black, size: 20));
  }
}
