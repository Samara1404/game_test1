import 'package:flutter/material.dart';

import '../continents/app_color.dart';

class Variants extends StatelessWidget {
  const Variants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2), 
        itemBuilder: (context, i) {
          return Card(
            color: AppColors.grey,
            child: InkWell(
              onTap: () {},
              child: Center(child: Text(i.toString())),
                    
            ),
          );
        }),
    );
  }
}
