
import 'events.dart';
import 'events_model.dart';

List<EventTypeModel> getEventsTypes(){
  List<EventTypeModel> events=[];
  EventTypeModel eventModel=new EventTypeModel();

  eventModel.imgAssetPath="assets/images/c++.png";
  eventModel.eventType="C++";
  events.add(eventModel);
  eventModel=new EventTypeModel();

  eventModel.imgAssetPath="assets/images/c.png";
  eventModel.eventType="C";
  events.add(eventModel);
  eventModel=new EventTypeModel();

  eventModel.imgAssetPath="assets/images/python.png";
  eventModel.eventType="PYTHON";
  events.add(eventModel);
  eventModel=new EventTypeModel();


  eventModel.imgAssetPath="assets/images/web-d.png";
  eventModel.eventType="WEB-D";
  events.add(eventModel);
  eventModel=new EventTypeModel();

  return events;
}
List<EventsModel>getEvents() {
  List<EventsModel> events = [];
  EventsModel eventModel = new EventsModel();
  eventModel.imgAssetPath="assets/images/csi.png";
  eventModel.date="JAN 21,2019";
  eventModel.venue="A1-201";
  eventModel.desc="C++ SIGS for FE:";
  events.add(eventModel);
  eventModel=new EventsModel();

  eventModel.imgAssetPath="assets/images/ieee1.png";
  eventModel.date="JAN 21,2019";
  eventModel.venue="A1-201";
  eventModel.desc="fywf uyuuqwy iuyiuh";
  events.add(eventModel);
  eventModel=new EventsModel();

  eventModel.imgAssetPath="assets/images/sig.png";
  eventModel.date="JAN 21,2019";
  eventModel.venue="A1-201";
  eventModel.desc="fywf uyuuqwy iuyiuh";
  events.add(eventModel);
  eventModel=new EventsModel();

  eventModel.imgAssetPath="assets/images/sig.png";
  eventModel.date="JAN 21,2019";
  eventModel.venue="A1-201";
  eventModel.desc="fywf uyuuqwy iuyiuh";
  events.add(eventModel);
  eventModel=new EventsModel();

  eventModel.imgAssetPath="assets/images/sig.png";
  eventModel.date="JAN 21,2019";
  eventModel.venue="A1-201";
  eventModel.desc="fywf uyuuqwy iuyiuh";
  events.add(eventModel);
  eventModel=new EventsModel();
  return events;
}


List<EventsModel>Events_cpc() {
  List<EventsModel> events_cpc = [];
  EventsModel eventModel = new EventsModel();
  eventModel.imgAssetPath="assets/images/csi.png";
  eventModel.date="JAN 21,2019";
  eventModel.venue="A1-201";
  eventModel.desc="C++ SIGS for FE:";
  events_cpc.add(eventModel);
  eventModel=new EventsModel();

  eventModel.imgAssetPath="assets/images/ieee1.png";
  eventModel.date="JAN 21,2019";
  eventModel.venue="A1-201";
  eventModel.desc="fywf uyuuqwy iuyiuh";
  events_cpc.add(eventModel);
  eventModel=new EventsModel();

  eventModel.imgAssetPath="assets/images/sig.png";
  eventModel.date="JAN 21,2019";
  eventModel.venue="A1-201";
  eventModel.desc="fywf uyuuqwy iuyiuh";
  events_cpc.add(eventModel);
  eventModel=new EventsModel();

  eventModel.imgAssetPath="assets/images/sig.png";
  eventModel.date="JAN 21,2019";
  eventModel.venue="A1-201";
  eventModel.desc="fywf uyuuqwy iuyiuh";
  events_cpc.add(eventModel);
  eventModel=new EventsModel();

  eventModel.imgAssetPath="assets/images/sig.png";
  eventModel.date="JAN 21,2019";
  eventModel.venue="A1-201";
  eventModel.desc="fywf uyuuqwy iuyiuh";
  events_cpc.add(eventModel);
  eventModel=new EventsModel();
  return events_cpc;
}