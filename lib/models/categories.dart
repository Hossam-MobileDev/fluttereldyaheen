
import 'dart:convert';

class Category {
  String? catid;
  String? title;
  String? url;
  String? type;
  String? photo;
  //String? lastupdate;
  //String? visitor;
 // String? subcategoriesCount;
 // String? subcategories;
  //String? totalitems;

  Category(
      {this.catid,
        this.title,
        this.url,
        this.type,
        this.photo,
       // this.lastupdate,
       // this.visitor,
       // this.subcategoriesCount,
       // this.subcategories,
        });

  Category.fromJson(Map<String, dynamic> json) {
    catid = json['catid'];
    title = json['title'];
    url = json['url'];
    type = json['type'];
    photo = json['photo'];
   // lastupdate = json['lastupdate'];
   // visitor = json['visitor'];
   // subcategoriesCount = json['subcategoriesCount'];
   // subcategories = json['subcategories'];
    //totalitems = json['totalitems'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['catid'] = this.catid;
    data['title'] = this.title;
    data['url'] = this.url;
   // data['type'] = this.type;
    data['photo'] = this.photo;
  //  data['lastupdate'] = this.lastupdate;
   // data['visitor'] = this.visitor;
    //data['subcategoriesCount'] = this.subcategoriesCount;
    //data['subcategories'] = this.subcategories;
   // data['totalitems'] = this.totalitems;
    return data;
  }
}

