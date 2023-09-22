

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game_test/models/continent.dart';

class ContinentsCard extends StatelessWidget {
  const ContinentsCard({ Key? key,
  required this.item,
  required this.onTap,
  }) : super(key: key);
 
final Continent item;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          const SizedBox(height: 8),
          Text(item.name),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SvgPicture.asset('/icons/continents/${item.icon}.svg',
                // ignore: deprecated_member_use
                color: item.color),
              ),),
        ],
      ),
    );
  }
}