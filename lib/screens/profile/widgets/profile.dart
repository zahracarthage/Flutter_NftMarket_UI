import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nftmarket/models/profile.dart';
import 'package:nftmarket/screens/profile/widgets/custom_grid.dart';
import 'package:nftmarket/screens/profile/widgets/profile_info.dart';
import 'package:nftmarket/screens/profile/widgets/tab_silver_delegate.dart';

class ProfilePage extends StatelessWidget {
  final profile = Profile.GenerateProfile();
  final tabs = ['Creations', 'Collections'];
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: ProfileInfo(profile),
              ),
              SliverPersistentHeader(
                delegate: TabSliverDelegate(
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
                    tabs: tabs
                        .map((e) => Tab(
                              child: Text(
                                e,
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                pinned: true,
              )
            ];
          },
          body: TabBarView(
            children: [
              CustomGrid('Creations', profile.creations!),
              CustomGrid('Collections', profile.collections!),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: _buildIcon(Icons.arrow_back_ios_outlined),
      actions: [_buildIcon(Icons.more_vert_outlined)],
    );
  }

  IconButton _buildIcon(IconData icon) {
    return IconButton(
        onPressed: () {},
        splashRadius: 25,
        icon: Icon(icon, color: Colors.black, size: 20));
  }
}
