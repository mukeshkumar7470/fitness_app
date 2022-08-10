class UserDetail {
  String? id;
  String? title;
  String? firstName;
  String? lastName;
  String? picture;
  String? gender;
  String? email;
  String? dateOfBirth;
  String? phone;
  Location? location;
  String? registerDate;
  String? updatedDate;

  UserDetail({
    this.id,
    this.title,
    this.firstName,
    this.lastName,
    this.picture,
    this.gender,
    this.email,
    this.dateOfBirth,
    this.phone,
    this.location,
    this.registerDate,
    this.updatedDate,
  });

  UserDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    title = json['title'] as String?;
    firstName = json['firstName'] as String?;
    lastName = json['lastName'] as String?;
    picture = json['picture'] as String?;
    gender = json['gender'] as String?;
    email = json['email'] as String?;
    dateOfBirth = json['dateOfBirth'] as String?;
    phone = json['phone'] as String?;
    location = (json['location'] as Map<String,dynamic>?) != null ? Location.fromJson(json['location'] as Map<String,dynamic>) : null;
    registerDate = json['registerDate'] as String?;
    updatedDate = json['updatedDate'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['title'] = title;
    json['firstName'] = firstName;
    json['lastName'] = lastName;
    json['picture'] = picture;
    json['gender'] = gender;
    json['email'] = email;
    json['dateOfBirth'] = dateOfBirth;
    json['phone'] = phone;
    json['location'] = location?.toJson();
    json['registerDate'] = registerDate;
    json['updatedDate'] = updatedDate;
    return json;
  }
}

class Location {
  String? street;
  String? city;
  String? state;
  String? country;
  String? timezone;

  Location({
    this.street,
    this.city,
    this.state,
    this.country,
    this.timezone,
  });

  Location.fromJson(Map<String, dynamic> json) {
    street = json['street'] as String?;
    city = json['city'] as String?;
    state = json['state'] as String?;
    country = json['country'] as String?;
    timezone = json['timezone'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['street'] = street;
    json['city'] = city;
    json['state'] = state;
    json['country'] = country;
    json['timezone'] = timezone;
    return json;
  }
}