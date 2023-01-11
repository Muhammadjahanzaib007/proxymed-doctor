class FindDoctorList {
  String icon;
  String imageName;
  String text;
  String text1;
  String text2;
  String text3;

  FindDoctorList(
      {required this.icon,
      required this.imageName,
      required this.text,
      required this.text1,
      required this.text2,
      required this.text3});
}

List<FindDoctorList> findDoctorListModel = [
  FindDoctorList(
      icon: "assets/images/Vector.svg",
      imageName: "assets/images/Dr. Pediatrician.png",
      text: "Dr. Pediatrician",
      text1: "Urologist, Kidney Surgeon, Peadiatricn\nUrologist",
      text2: "MBBS ,FCPS (Urology)",
      text3: "7 Years experience "),
  FindDoctorList(
      icon: "assets/images/heart_icon.png",
      imageName: "assets/images/Dr. Waramniuk.png",
      text: "Dr. Waramniuk",
      text1: "Urologist, Kidney Surgeon, Peadiatricn\nUrologist",
      text2: "MBBS ,FCPS (Urology)",
      text3: "7 Years experience "),
  FindDoctorList(
      icon: "assets/images/heart_iconn.png",
      imageName: "assets/images/Dr. Crownover.png",
      text: "Dr. Crownover",
      text1: "Urologist, Kidney Surgeon, Peadiatricn\nUrologist",
      text2: "MBBS ,FCPS (Urology)",
      text3: "7 Years experience "),
];
