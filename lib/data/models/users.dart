class Users {
  List<Data>? data;
  int? total;
  int? page;
  int? limit;

  Users({
    this.data,
    this.total,
    this.page,
    this.limit,
  });

  Users.fromJson(Map<String, dynamic> json) {
    data = (json['data'] as List?)?.map((dynamic e) => Data.fromJson(e as Map<String,dynamic>)).toList();
    total = json['total'] as int?;
    page = json['page'] as int?;
    limit = json['limit'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['data'] = data?.map((e) => e.toJson()).toList();
    json['total'] = total;
    json['page'] = page;
    json['limit'] = limit;
    return json;
  }
}

class Data {
  String? id;
  String? title;
  String? firstName;
  String? lastName;
  String? picture;

  Data({
    this.id,
    this.title,
    this.firstName,
    this.lastName,
    this.picture,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    title = json['title'] as String?;
    firstName = json['firstName'] as String?;
    lastName = json['lastName'] as String?;
    picture = json['picture'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['title'] = title;
    json['firstName'] = firstName;
    json['lastName'] = lastName;
    json['picture'] = picture;
    return json;
  }
}