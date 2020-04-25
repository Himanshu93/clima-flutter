import 'package:geolocator/geolocator.dart';

class Location {
  double _latitude=0;
  double _longitude=0;
  Position _position;
/* 
  Location () {
    getCurrentLocation();
    this._latitude = getLatitude();
    this._longitude = getLongitude();
  } */

  Future<void> getCurrentLocation() async {
    try {
      _position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      this._latitude = _position.latitude;
      this._longitude = _position.longitude;
    } catch (e) {
      print(e);
    }
  }

  double getLatitude() {
    return this._latitude;
  }

  double getLongitude() {
    return this._longitude;
  }
}
