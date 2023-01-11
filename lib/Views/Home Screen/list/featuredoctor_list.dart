class FeaturedoctorList {
  String icon;
  String number;
  String imageName;
  String text;
  String text1;

  FeaturedoctorList(
      {required this.icon,
      required this.number,
      required this.imageName,
      required this.text,
      required this.text1});
}

List<FeaturedoctorList> featuredoctorListModel = [
  FeaturedoctorList(
      icon: "assets/images/heart_iconn.png",
      number: "3.7",
      imageName: "assets/images/Dr. Crick.png",
      text: "Dr. Crick",
      text1: "25.00/ hours"),
  FeaturedoctorList(
      icon: "assets/images/heart_icon.png",
      number: "3.0",
      imageName: "assets/images/Dr. Strain.png",
      text: "Dr. Strain",
      text1: "22.00/ hours"),
  FeaturedoctorList(
      icon: "assets/images/heart_iconn.png",
      number: "2.9",
      imageName: "assets/images/Dr. Lachinet.png",
      text: "Dr. Lachinet",
      text1: "29.00/ hours"),
  FeaturedoctorList(
      icon: "assets/images/heart_icon.png",
      number: "2.9",
      imageName: "assets/images/Dr. Lachinet.png",
      text: "Dr. Lachinet",
      text1: "29.00/ hours"),
];
