import 'package:flutter/material.dart';
import 'package:game_test/components/test_page_slider.dart';
import 'package:game_test/components/variants.dart';
import 'package:game_test/continents/app_color.dart';
import 'package:game_test/models/suroo.dart';

import '../app/test_page_appbar.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key, required this.suroo});
  final List<Suroo> suroo;
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const TestPageAppBar(),
      ),
      body: Column(
        children: [
          const TestSlider(),
          const Center(
            child: Text('Pekin',
            style: TextStyle(fontSize: 30,
            height: 1.5,
            ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/Pekin.jpg'),
              ),
            ),
          ),
          const Variants(),
        ],
      ),
    );
  }
}


