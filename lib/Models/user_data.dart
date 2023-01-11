class UserData {
  String? status;
  String? message;
  int? userId;
  String? name;
  String? phone;
  String? email;
  String? roleId;
  String? loginStatus;
  String? profileStatus;
  String? dob;
  String? specialty;
  String? findOfWork;
  String? experience;
  String? services;
  String? location;
  String? price;
  String? profilePicture;
  List<Availability>? availability=[];
  List<Experiences>? experiences=[];
  List<Academics>? academics=[];
  String? createdAt;

  UserData(
      {this.status,
        this.message,
        this.userId,
        this.name,
        this.phone,
        this.email,
        this.roleId,
        this.loginStatus,
        this.profileStatus,
        this.dob,
        this.specialty,
        this.findOfWork,
        this.experience,
        this.services,
        this.location,
        this.price,
        this.profilePicture,
        this.availability,
        this.experiences,
        this.academics,
        this.createdAt});

  UserData.fromJson(Map<String, dynamic> json) {
    status = json['status'].toString();
    message = json['message'];
    userId = json['user_id'];
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    roleId = json['role_id'];
    loginStatus = json['login_status'];
    profileStatus = json['profile_status'];
    dob = json['dob'];
    specialty = json['specialty'];
    findOfWork = json['find_of_work'];
    experience = json['experience'];
    services = json['services'];
    location = json['location'];
    price = json['price'];
    profilePicture = json['profile_picture'];
    if (json['availability'] != null) {
      availability = <Availability>[];
      json['availability'].forEach((v) {
        availability!.add( Availability.fromJson(v));
      });
    }
    if (json['experiences'] != null) {
      experiences = <Experiences>[];
      json['experiences'].forEach((v) {
        experiences!.add( Experiences.fromJson(v));
      });
    }
    if (json['academics'] != null) {
      academics = <Academics>[];
      json['academics'].forEach((v) {
        academics!.add( Academics.fromJson(v));
      });
    }
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['user_id'] = this.userId;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['role_id'] = this.roleId;
    data['login_status'] = this.loginStatus;
    data['profile_status'] = this.profileStatus;
    data['dob'] = this.dob;
    data['specialty'] = this.specialty;
    data['find_of_work'] = this.findOfWork;
    data['experience'] = this.experience;
    data['services'] = this.services;
    data['location'] = this.location;
    data['price'] = this.price;
    data['profile_picture'] = this.profilePicture;
    if (this.availability != null) {
      data['availability'] = this.availability!.map((v) => v.toJson()).toList();
    }
    if (this.experiences != null) {
      data['experiences'] = this.experiences!.map((v) => v.toJson()).toList();
    }
    if (this.academics != null) {
      data['academics'] = this.academics!.map((v) => v.toJson()).toList();
    }
    data['created_at'] = this.createdAt;
    return data;
  }
}

class Availability {
  String? day;
  String? time;

  Availability({this.day, this.time});

  Availability.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['time'] = this.time;
    return data;
  }
}

class Experiences {
  String? title;
  String? description;

  Experiences({this.title, this.description});

  Experiences.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    return data;
  }
}

class Academics {
  String? degreeTitle;
  String? institute;
  String? from;
  String? to;

  Academics({this.degreeTitle, this.institute, this.from, this.to});

  Academics.fromJson(Map<String, dynamic> json) {
    degreeTitle = json['degree_title'];
    institute = json['institute'];
    from = json['from'];
    to = json['to'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['degree_title'] = this.degreeTitle;
    data['institute'] = this.institute;
    data['from'] = this.from;
    data['to'] = this.to;
    return data;
  }
}