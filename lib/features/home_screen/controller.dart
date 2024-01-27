import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeController {
  late Category selectedCategory;

  final List<Category> home = [
    Category(title: "All", width: 45.w),
    Category(title: "Jobs", width: 45.w),
    Category(title: "Internships", width: 81.w),
    Category(title: "Tasks", width: 45.w),
    Category(title: "Competition", width: 84.w),
  ];
}

class Category {
  final String title;
  final double width;

  Category({
    required this.width,
    required this.title,
  });
}
