class Category {
  final String title;

  Category({
    required this.title,
  });
}

class UserProfileController {
  final List<Category> categories = [
    Category(title: "First Name"),
    Category(title: "Last Name"),
    Category(title: "Date of birth"),
    Category(title: "Gender"),
    Category(title: "Character"),
    Category(title: "Education"),
    Category(title: "City"),
    Category(title: "University"),
    Category(title: "Skills"),
    Category(title: "Experiences"),
    Category(title: "1000000000"),
    Category(title: "Bio (optional)"),
    Category(title: "Your CV (optional)"),
    Category(title: "Facebook link (optional)"),
    Category(title: "Github link (optional)"),
    Category(title: "Behance link (optional)"),
  ];
}
