class ChatsController {
  late Chats selectedChats;

  final List<Chats> chats = [
    Chats(text: "Chats"),
    Chats(text: "Community"),
    Chats(text: "Calls"),
  ];
}

class Chats {
  final String text;

  Chats({
    required this.text,
  });
}
