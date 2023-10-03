// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../continents/app_color.dart';

class TestPageAppBar extends StatelessWidget {
  const TestPageAppBar({
    Key? key,
    required this.tuuraJooptor,
    required this.kataJooptor,
    required this.index,
  }) : super(key: key);
  final int tuuraJooptor;
  final int kataJooptor;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4,horizontal:8),
            child: Row(
              children: [
                Text('$kataJooptor', style: TextStyle(color: AppColors.red),),
                const SizedBox(width: 10),
               
                Text('$index', style: TextStyle(color: AppColors.grey, fontSize: 20),),
                 const SizedBox(width: 10),
            
               Text('$tuuraJooptor', style: TextStyle(color: AppColors.green),),
              ],
            ),
            ),
        ),
        const Text('3'),
        Row(
          children: [
            SizedBox(
              width: 80,
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
               itemBuilder: (context, index) {
                return Icon(Icons.favorite,color: AppColors.red,);
               }  
              ),
            ),
            const Icon(Icons.more_vert),
          ],
        ),

        
      ],
    );
  }
}
