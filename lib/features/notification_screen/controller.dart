class NotificationController {

  late Notification selectedNotification;

  final List<Notification> notification = [
    Notification(text: "General"),
    Notification(text: "Applications"),
    Notification(text: "Posts"),
  ];
}

class Notification {
  final String text;

  Notification({
    required this.text,
  });
}
