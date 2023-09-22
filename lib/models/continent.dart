import 'package:flutter/material.dart';
import 'package:game_test/continents/app_text.dart';

class Continent {
  const Continent (
    {required this.name, required this.icon,required this.color});
    final String name;
    final String icon;
    final Color  color;
}
    const asia = Continent(
    name: AppText.asia,
    icon: "asia",
    color: Color(0xffFE8D7D),
);
  const europe= Continent(
    name: AppText.europe,
    icon: "europe",
    color: Color(0xff7DA4FF),
);
  const nAmerica = Continent(
    name: AppText.northAmerica,
    icon: "north_America",
    color: Color(0xffFFAD02),
);
  const sAmerica = Continent(
    name: AppText.southAmerica,
    icon: "south_america",
    color: Color(0xffE7B1E52c),
);
  const africa = Continent(
    name: AppText.africa,
    icon: "africa",
    color: Color(0xffFFE52C),
);
  const australia = Continent(
    name: AppText.australia,
    icon: "australia",
    color: Color(0xff60E280),
);
List <Continent> continents = [
  africa,
  asia,
  australia,
  europe,
  sAmerica,
  nAmerica ,
];
