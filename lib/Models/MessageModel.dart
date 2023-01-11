class MeasageModel {
  final bool user;
  final String imagename;
  final String name;
  final String time;
  final String date;
  final String message;

  MeasageModel(
      {required this.user,
      required this.imagename,
      required this.name,
      required this.time,
      required this.date,
      required this.message});

  static List<MeasageModel> dummyData = [
    MeasageModel(
      user: true,
      imagename: "assets/images/MessageImage.png",
      name: "Dr. Pediatrician",
      time: "16:21",
      date: "27-07-2022",
      message: "hi",
    ),
    MeasageModel(
      user: true,
      imagename: "assets/images/MessageImage1.png",
      name: "Dr. Pediatrician",
      time: "16:21",
      date: "27-07-2022",
      message: "hi",
    ),
    MeasageModel(
      user: true,
      imagename: "assets/images/MessageImage.png",
      name: "Dr. Pediatrician",
      time: "16:21",
      date: "27-07-2022",
      message: "hi",
    ),
    MeasageModel(
      user: true,
      imagename: "assets/images/MessageImage1.png",
      name: "Dr. Pediatrician",
      time: "16:21",
      date: "27-07-2022",
      message: "hi",
    ),
  ];
}
