
import 'dart:convert';

class AdsHorizontal {
  String? catId;
  String? catName;
  String? newsid;
  String? title;
  String? photo;
  String? lastUpdate;
  ArDate? arDate;
  String? date;
  String? time;
  String? description;
  String? share;
  int? views;
  int? numberOfComments;
  int? numberOfLikes;
  int? numberOfDislikes;
  String? userId;
  Null? userName;
  String? userPhoto;
  String? url;
  String? next;
  String? prev;

  AdsHorizontal(
      {this.catId,
        this.catName,
        this.newsid,
        this.title,
        this.photo,
        this.lastUpdate,
        this.arDate,
        this.date,
        this.time,
        this.description,
        this.share,
        this.views,
        this.numberOfComments,
        this.numberOfLikes,
        this.numberOfDislikes,
        this.userId,
        this.userName,
        this.userPhoto,
        this.url,
        this.next,
        this.prev});

  AdsHorizontal.fromJson(Map<String, dynamic> json) {
    catId = json['catId'];
    catName = json['catName'];
    newsid = json['newsid'];
    title = json['title'];
    photo = json['photo'];
    lastUpdate = json['lastUpdate'];
    arDate =
    json['ar_date'] != null ? new ArDate.fromJson(json['ar_date']) : null;
    date = json['date'];
    time = json['time'];
    description = json['description'];
    share = json['share'];
    views = json['views'];
    numberOfComments = json['numberOfComments'];
    numberOfLikes = json['numberOfLikes'];
    numberOfDislikes = json['numberOfDislikes'];
    userId = json['userId'];
    userName = json['userName'];
    userPhoto = json['userPhoto'];
    url = json['url'];
    next = json['next'];
    prev = json['prev'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['catId'] = this.catId;
    data['catName'] = this.catName;
    data['newsid'] = this.newsid;
    data['title'] = this.title;
    data['photo'] = this.photo;
    data['lastUpdate'] = this.lastUpdate;
    if (this.arDate != null) {
      data['ar_date'] = this.arDate!.toJson();
    }
    data['date'] = this.date;
    data['time'] = this.time;
    data['description'] = this.description;
    data['share'] = this.share;
    data['views'] = this.views;
    data['numberOfComments'] = this.numberOfComments;
    data['numberOfLikes'] = this.numberOfLikes;
    data['numberOfDislikes'] = this.numberOfDislikes;
    data['userId'] = this.userId;
    data['userName'] = this.userName;
    data['userPhoto'] = this.userPhoto;
    data['url'] = this.url;
    data['next'] = this.next;
    data['prev'] = this.prev;
    return data;
  }
}

class ArDate {
  String? nameday;
  String? day;
  String? namemonth;
  String? year;

  ArDate({this.nameday, this.day, this.namemonth, this.year});

  ArDate.fromJson(Map<String, dynamic> json) {
    nameday = json['nameday'];
    day = json['day'];
    namemonth = json['namemonth'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nameday'] = this.nameday;
    data['day'] = this.day;
    data['namemonth'] = this.namemonth;
    data['year'] = this.year;
    return data;
  }
}

