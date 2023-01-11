class SpecialityList {
  String imageName;
  String text;

  SpecialityList({required this.imageName, required this.text});
}

List<SpecialityList> specialityListModel = [
  SpecialityList(imageName: "assets/images/dental.png", text: "Dental"),
  SpecialityList(imageName: "assets/images/cardiac.png", text: "Cardiac"),
  SpecialityList(imageName: "assets/images/eye.png", text: "Eye"),
  SpecialityList(imageName: "assets/images/general.png", text: "General"),
];
