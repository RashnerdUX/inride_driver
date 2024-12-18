import 'package:geolocator/geolocator.dart';
import 'package:riverpod/riverpod.dart';
import 'package:inride_driver/features/features_barrel.dart';

final locationServiceProvider = Provider<LocationService>((ref) {
  return LocationService();
});

final fetchUserLocationProvider = Provider((ref) async {
  final locationService = ref.watch(locationServiceProvider);
  return await locationService.fetchUserLocation();
});

final userLocationProvider = StateProvider<Position>((ref) {
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
});
