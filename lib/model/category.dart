import 'package:meta/meta.dart';

//This class is for the category object model.
class Category {
  int _id;
  String _name;

  /*I've made the parameters required so they can appear when the object created,
   it will make things easier.*/
  Category({@required id, @required name})
      : _id = id,
        _name = name;

  //I'll use just getters because I'll not try to modify the objects in the database,
  // I'll just fetch them from the remote DB and I'll store them in the local DB.
  int get id => _id;

  String get name => _name;

  //This method will be used when the app creates a new category object using
  // values from the DB.
  Category.fromMap(Map<String, dynamic> map) {
    _id = map['event_entity_category_id'];
    _name = map['event_entity_category_name'];
  }
}
