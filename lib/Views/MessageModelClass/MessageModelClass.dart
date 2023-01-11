class ChatModel {
  final bool user;
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

  ChatModel(
      {required this.user,
        required this.avatarUrl,
        required this.name,
        required this.datetime,
        required this.message});

  static List<ChatModel> dummyData = [
    ChatModel(
      user: true,
      avatarUrl: "https://randomuser.me/api/portraits/women/34.jpg",
      name: "Laurent",
      datetime: "20:18\n"
          "27-07-2022",
      message: "How about meeting tomorrow?",
    ),
    ChatModel(
      user: true,
      avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
      name: "Tracy",
      datetime: "20:18\n"
          "27-07-2022",
      message: "I love that idea, it's great!",
    ),
    ChatModel(
      user: false,
      avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
      name: "Claire",
      datetime: "20:18\n"
          "27-07-2022",
      message: "I wasn't aware of that. Let me check",
    ),
    ChatModel(
      user: false,
      avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      name: "Joe",
      datetime: "20:18\n"
          "27-07-2022",
      message: "Flutter just release 1.0 officially. Should I go for it?",
    ),
    ChatModel(
      user: true,
      avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
      name: "Mark",
      datetime: "20:18\n"
          "27-07-2022",
      message: "It totally makes sense to get some extra day-off.",
    ),
    ChatModel(
      user: false,
      avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      name: "Joe",
      datetime: "20:18\n"
          "27-07-2022",
      message: "Flutter just release 1.0 officially. Should I go for it?",
    ),
    ChatModel(
      user: true,
      avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
      name: "Williams",
      datetime: "20:18\n"
          "27-07-2022",
      message: "It has been re-scheduled to next Saturday 7.30pm",
    ),
    ChatModel(
      user: false,
      avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      name: "Joe",
      datetime: "20:18\n"
          "27-07-2022",
      message: "Flutter just release 1.0 officially. Should I go for it?",
    ),
    ChatModel(
      user: true,
      avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      name: "Joe",
      datetime: "20:18\n"
          "27-07-2022",
      message: "Flutter Good",
    ),
  ];
}