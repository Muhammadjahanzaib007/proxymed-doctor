class NearbydoctorList {
  String imageName;
  String text;
  String text1;

  NearbydoctorList(
      {required this.imageName, required this.text, required this.text1});
}

List<NearbydoctorList> nearbydoctorListModel = [
  NearbydoctorList(
      imageName: "assets/images/Dr. Fillerup Grab.png",
      text: "Dr. Fillerup Grab",
      text1: "Medicine Specialist"),
  NearbydoctorList(
      imageName: "assets/images/Dr. Blessing.png",
      text: "Dr. Blessing",
      text1: "Dentist Specialist"),
];
