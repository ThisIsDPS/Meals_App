import 'package:flutter/material.dart';

// Structure for each category item
class Category {
  Category({
    required this.id,
    required this.title,
    required this.color,
  });

  final String id;
  final String title;
  final Color color;
}
