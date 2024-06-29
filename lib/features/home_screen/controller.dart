import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mediator/core/app_colors.dart';

class HomeController {
  late Category selectedCategory;

  final List<Category> home = [
    Category(title: "Jobs", width: 78.w, color: AppColors.lGreen),
    Category(title: "Internships", width: 78.w, color: AppColors.lPink),
    Category(title: "Tasks", width: 78.w, color: AppColors.blueC9),
    Category(title: "Competition", width: 78.w, color: AppColors.greenC9),
  ];
}

class Category {
  final String title;
  final double width;
  final Color color;

  Category({
    required this.color,
    required this.width,
    required this.title,
  });
}
