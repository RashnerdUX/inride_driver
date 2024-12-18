import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationService {
  Stream<Position> getLocationStream() {
    return Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.bestForNavigation,
        distanceFilter: 100,
      ),
    );
  }

  Future<Position> fetchUserLocation() async {
    bool serviceEnabled;
    LocationPermission locationPermission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      debugPrint('Location service is disabled');
    }

    try {
      locationPermission = await Geolocator.checkPermission();
      if (locationPermission == LocationPermission.denied) {
        locationPermission = await Geolocator.requestPermission();
        if (locationPermission == LocationPermission.denied) {
          return Future.error("User has denied Location permission");
        }
        if (locationPermission == LocationPermission.deniedForever) {
          return Future.error("User has forever denied use of their location");
        }
        return await Geolocator.getCurrentPosition(
          locationSettings: LocationSettings(accuracy: LocationAccuracy.high),
        );
      }
    } catch (e) {
      print(e);
    }

    return Position(
      headingAccuracy: 0.0,
      altitudeAccuracy: 0.0,
      longitude: 0.0,
      latitude: 0.0,
      timestamp: DateTime.now(),
      accuracy: 0.0,
      altitude: 0.0,
      heading: 0.0,
      speed: 0.0,
      speedAccuracy: 0.0,
    );
  }
}
