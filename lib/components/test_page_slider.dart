import 'package:flutter/material.dart';

import '../continents/app_color.dart';

class TestSlider extends StatelessWidget {
  const TestSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SliderTheme(
        data: SliderThemeData(
          trackHeight: 4,
          overlayShape: SliderComponentShape.noOverlay,
          thumbShape: SliderComponentShape.noThumb,
          trackShape: const RectangularSliderTrackShape(),
        ),
        child: Slider(
          activeColor: AppColors.green,
          secondaryActiveColor: AppColors.grey,
          value: 4,
          onChanged: (value) {},
          min: 0,
          max: 15,
        ),
      ),
    );
  }
}
