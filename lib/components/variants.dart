import 'package:flutter/material.dart';
import 'package:game_test/models/suroo.dart';

import '../continents/app_color.dart';

class Variants extends StatelessWidget {
  const Variants({Key? key, required this.jooptor, required this.onTap }): super(key: key);
 final List <joop> jooptor;
 final Function(bool)? onTap; 

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2), 
        itemBuilder: (context, index) {
          return Card(
            color: AppColors.grey,
            child: InkWell(
              onTap: () {
                onTap!(jooptor[index].isTrue);
              },
              child: Center(child: Text(jooptor[index].text)),
                    
            ),
          );
        }),
    );
  }
}
