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
  int index = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;
  void check(bool isTrue) {
    if (isTrue == true) {
      tuuraJooptor++;
    } else {
      kataJooptor++;
    }
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title:  TestPageAppBar(tuuraJooptor: tuuraJooptor, kataJooptor: kataJooptor, index: index,),
      ),
      body: Column(
        children: [
           const TestSlider(),
           Center(
            child: Text(
              widget.suroo[index].text,
              style: const TextStyle(
                fontSize: 30,
                height: 1.5,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/${widget.suroo[index].image}.jpg'),
              ),
            ),
          ),
          Variants(
              jooptor: widget.suroo[index].jooptor,
              onTap: (isTrue) async {
                if (index + 1 == widget.suroo.length) {
                  await showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text('Testtin $index suroolorunan'),
                      content: Text(
                          'Tuura jooptoru $tuuraJooptor \n kata jooptoru $kataJooptor'),
                      actions: <Widget>[
                        TextButton(
                            onPressed: () {
                              index = 0;
                              kataJooptor = 0;
                              tuuraJooptor = 0;
                              setState(() {});
                              Navigator.pop(context);
                            },
                            child: const Text('OK'))
                      ],
                    ),
                  );
                } else {
                  if (isTrue == true) {
                    tuuraJooptor++;
                  } else {
                    kataJooptor++;
                  }
                  setState(() {
                    index++;
                  });
                }
              }),
        ],
      ),
    );
  }
}
