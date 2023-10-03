// ignore_for_file: camel_case_types

class Suroo {
  Suroo({required this.text, required this.jooptor, required this.image});
  final String text;
  final List<joop> jooptor;
  final String image;
}

List<Suroo> asiaQuestions = [s1, s2, s3, s4, s5, s6];

class joop {
  joop({required this.text, this.isTrue = false});
  final String text;
  final bool isTrue;
}

final s1 = Suroo(
    text: "Bishkek",
    jooptor: [
      joop(text: "Kyrgyzstan", isTrue: true),
      joop(text: "Russia"),
      joop(text: "Korea"),
      joop(text: "Brazil"),
    ],
    image: "Bishkek");

final s2 = Suroo(
    text: "Canberra",
    jooptor: [
      joop(text: "Cambodjia"),
      joop(text: "Korea"),
      joop(text: "Australia", isTrue: true),
      joop(text: "Singapur"),
    ],
    image: "Canberra");

final s3 = Suroo(
    text: "Moscow",
    jooptor: [
      joop(text: "Nepal"),
      joop(text: "Morocco"),
      joop(text: "Kosta Rica"),
      joop(text: "Russia", isTrue: true),
    ],
    image: "Moscow");

final s4 = Suroo(
    text: "New York",
    jooptor: [
      joop(text: "Madrid"),
      joop(text: "USA", isTrue: true),
      joop(text: "Bangladesh"),
      joop(text: "Brazil"),
    ],
    image: "NewYork");

final s5 = Suroo(
    text: "Paris",
    jooptor: [
      joop(text: "China"),
      joop(text: "Algir"),
      joop(text: "Scotland"),
      joop(text: "France", isTrue: true),
    ],
    image: "Paris");

final s6 = Suroo(
    text: "Pekin",
    jooptor: [
      joop(text: "China", isTrue: true),
      joop(text: "New Delli"),
      joop(text: "Canada"),
      joop(text: "Xainan"),
    ],
    image: "Pekin");
