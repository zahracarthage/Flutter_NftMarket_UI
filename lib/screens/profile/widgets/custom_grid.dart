import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nftmarket/models/nft.dart';
import 'package:nftmarket/screens/details/details.dart';

class CustomGrid extends StatelessWidget {
  final String scrollKey;
  final List<Nft> list;
  const CustomGrid(this.scrollKey, this.list, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: GridView.builder(
        key: PageStorageKey(scrollKey),
        itemCount: list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 4 / 5,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DetailPage(list[index])),
            );
          },
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Hero(
              tag: list[index].imgUrl!,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(list[index].imgUrl!, fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
