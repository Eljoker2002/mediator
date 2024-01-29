class NotificationController {

  late Notification selectedNotification;

  final List<Notification> notification = [
    Notification(text: "General"),
    Notification(text: "Applications"),
  ];
}

class Notification {
  final String text;

  Notification({
    required this.text,
  });
}
