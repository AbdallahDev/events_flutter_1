import 'package:meta/meta.dart';

//This class is for the event object model.
class Event {
  int _id;

  //This is the name of the entity, it will hold the name of the entity if it's
  // chosen from the entity drop down menu in the web app, or it will hold the
  // name of the entity if it's typed as a text in the event entity textField in
  // the web app.
  String _eventEntityName;
  //This variable will store the time of the event either as clock time or text
  // time because in the events web system the user sometimes enters the time in
  // the appointment text box.
  String _time;

  //This represents when the event will behold as it's typed as a text in the
  // event appointment textField in the web app.
  String _eventAppointment;
  String _subject;
  String _eventDate;

  //These two variables (_hallName, _eventPlace) used to store where the event
  // will behold. The hall name is when the hall is chosen the halls dropdown
  // menu in the events web app, and the event place will be used if the hall is
  // not chosen from the drop-down menu instead inserted in the event place text
  // box in the web app.
  //
  //This variable stores the hall name in case the event behold in one of them.
  String _hallName;
  //This is the name of the place where the event will be held, and it will be
  // typed in the event place textField in the web app.
  String _eventPlace;

  /*I've made the parameters required so they can appear when the object created,
   it will make things easier.*/
  Event({
    @required id,
    @required eventEntityName,
    @required time,
    @required eventAppointment,
    @required subject,
    @required eventDate,
    @required hallName,
    @required eventPlace,
  })  : _id = id,
        _eventEntityName = eventEntityName,
        _time = time,
        _eventAppointment = eventAppointment,
        _subject = subject,
        _eventDate = eventDate,
        _hallName = hallName,
        _eventPlace = eventPlace;

  //I'll use just getters because I'll not try to modify the objects in the database,
  // I'll just fetch them from the remote DB and I'll store them in the local DB.
  String get eventPlace => _eventPlace;

  String get hallName => _hallName;

  String get eventDate => _eventDate;

  String get subject => _subject;

  String get eventAppointment => _eventAppointment;

  String get time => _time;

  String get eventEntityName => _eventEntityName;

  int get id => _id;

  //This method will be used when the app creates a new event object using
  // values from the DB.
  Event.fromMap(Map map) {
    //Here the map keys should be the same as the one in the fetched JSON from
    // the API.
    _id = map['id'];
    //Here I'll assign the event entity name from the entity_name map value if
    // the event_entity_name map value is empty, else I'll assign from the
    // event_entity_name map value.
    if (map['event_entity_name'] == "")
      _eventEntityName = map['entity_name'];
    else
      _eventEntityName = map['event_entity_name'];

    //I've assigned the value of the field "event_time" because in the API it'll
    // have the value of the event appointment or the value of the event time.
    _time = map['event_time'];
    _eventAppointment = map['eventAppointment'];
    _subject = map['subject'];
    _eventDate = map['event_date'];
    _hallName = map['hall_name'];
    _eventPlace = map['event_place'];
  }
}
