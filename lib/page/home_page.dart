import 'package:flutter/material.dart';

import 'package:game_test/components/continent_card.dart';
import 'package:game_test/continents/app_text.dart';
import 'package:game_test/models/continent.dart';
import 'package:game_test/page/test_page.dart';

import '../continents/app_color.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
        title: const Text(AppText.gameTitle),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: AppColors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: AppColors.blue,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          const Divider(
            height: 2,
            color: Colors.black,
            indent: 30,
            endIndent: 30,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: continents.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return ContinentsCard(
                    item: continents [index], onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const TestPage())); 
                    }
                  );
                 
                }),
          )
        ],
      ),
    );
  }
}
