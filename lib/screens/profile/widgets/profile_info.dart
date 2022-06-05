import 'package:flutter/material.dart';
import 'package:nftmarket/models/profile.dart';

class ProfileInfo extends StatelessWidget {
  final Profile profile;
  const ProfileInfo(
    this.profile, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(profile.imgUrl!),
        ),
        const SizedBox(height: 30),
        Text(
          profile.name!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          profile.twitter!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          profile.desc!,
          style:
              const TextStyle(fontSize: 14, height: 1.5, color: Colors.black54),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 18),
        Text(
          profile.email!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 30),
      ]),
    );
  }
}
