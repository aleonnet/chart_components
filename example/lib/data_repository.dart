import 'package:flutter/material.dart';

class DataRepository {
  static List<double> data = [
    2.2,
    0.7,
    1.4,
    4.3,
    3.2,
    2.1,
    4.0,
    2.7,
    1.4,
    2.2,
    3.1,
    1.9,
    2.8,
    1.5,
    1.2,
    0,
    2.9,
    1.8,
    2.2,
    3.2,
    4.5,
    0.7,
    1.9,
    3.8,
    4.1,
    1.3,
  ];

  static List<double> getData() {
    return data;
  }

  static List<String> getLabels() {
    List<String> labels = [
      'mo',
      'tu',
      'we',
      'th',
      'fr',
      'sa',
      'su',
      'mo',
      'tu',
      'we',
      'th',
      'fr',
      'sa',
      'su',
      'mo',
      'tu',
      'we',
      'th',
      'fr',
      'sa',
      'su',
      'mo',
      'tu',
      'we',
      'th',
      'fr',
      'sa',
      'su',
      'mo',
      'tu',
      'we',
      'th',
      'fr',
      'sa',
      'su'
    ];

    return labels;
  }

  static Color getColor(double value) {
    if (value < 2) {
      return Colors.indigo.shade100;
    } else if (value < 4) {
      return Colors.indigo.shade500;
    } else
      return Colors.indigo.shade900;
  }

  static Color getDayColor(int day) {
    if (day < data.length) {
      return getColor(data[day]);
    } else
      return Colors.indigo.shade100;
  }

  static Icon getIcon(double value) {
    if (value < 1) {
      return Icon(
        Icons.star_border,
        size: 24,
        color: getColor(value),
      );
    } else if (value < 2) {
      return Icon(
        Icons.star_half,
        size: 24,
        color: getColor(value),
      );
    } else
      return Icon(
        Icons.star,
        size: 24,
        color: getColor(value),
      );
  }
}
