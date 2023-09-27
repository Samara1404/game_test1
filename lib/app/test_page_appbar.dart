import 'package:flutter/material.dart';

import '../continents/app_color.dart';

class TestPageAppBar extends StatelessWidget {
  const TestPageAppBar({
    super.key,
  });

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
                Icon(Icons.tips_and_updates,
                color: AppColors.red,),
                const Text('32'),
                 Icon(Icons.add_circle,
                color: AppColors.blue,),
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