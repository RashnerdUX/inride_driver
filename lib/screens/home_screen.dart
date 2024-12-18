// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inride_driver/models/location_provider.dart';
import 'package:inride_driver/theme/theme_barrel.dart';
import 'package:inride_driver/widgets/widgets_barrel.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:inride_driver/constants.dart';


//This is the screen showing the map and the driver's status
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "HomeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  //For sample purposes, this tells if the driver is offline or online
  final bool isOnline = false;

  //For sample purposes, this checks if the  user is verified
  bool isVerified = false;

  //The controller for GoogleMap
  GoogleMapController? mapController;

  //OnMapCreated function
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {});
  }

  //To maintain the drawer state
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  //The user's current position
  late Position userLocation;

  //This will check if UserLocation is available
  bool isLocationAvailable = false;

  Map<PolylineId, Polyline> polylineMap = {};

  @override
  void initState() {
    initializeMap();
    super.initState();
  }

  void initializeMap() async {
    //For this test, I'll use a custom destination
    final coordinates = await fetchPolylinePoints(
        LatLng(6.464266, 3.304599), LatLng(6.424065400066083, 3.464580895494483),
        );
    generatePolylineFromPoints(coordinates);
  }

  Future<void> generatePolylineFromPoints(
      List<LatLng> polylineCoordinates) async {
    polylineMap = Polyline(
        polylineId: PolylineId("id"),
        color: Colors.black,
        width: 5,
        points: polylineCoordinates) as Map<PolylineId, Polyline>;
  }

  Future<List<LatLng>> fetchPolylinePoints(
      LatLng initialLocation, LatLng destinationLocation) async {
    final polylinePoints = PolylinePoints();

    final result = await polylinePoints.getRouteBetweenCoordinates(
        request: PolylineRequest(
            origin: PointLatLng(
                initialLocation.latitude, initialLocation.longitude),
            destination: PointLatLng(
                destinationLocation.latitude, destinationLocation.longitude),
            mode: TravelMode.driving),
        googleApiKey: kGoogleMapsApi);

    if (result.points.isNotEmpty) {
      return result.points
          .map((point) => LatLng(point.latitude, point.longitude))
          .toList();
    } else {
      debugPrint(result.errorMessage);
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final initialLocation = ref.watch(userLocationProvider);
    final initialCoordinates = LatLng(6.464266, 3.304599);

    const finalLocation = LatLng(6.424065400066083, 3.464580895494483);
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      drawer: const CustomNavDrawerWithNotch(),
      body: Builder(builder: (context) {
        return Stack(
          children: [
            Container(
              color: Colors.black,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: initialCoordinates,
                  zoom: 12,
                ),
                markers: {
                  Marker(
                    markerId: const MarkerId("sourcelocation"),
                    icon: BitmapDescriptor.defaultMarker,
                    position: initialCoordinates,
                  ),
                  const Marker(
                      markerId: MarkerId("destinationlocation"),
                      icon: BitmapDescriptor.defaultMarker,
                      position: finalLocation),
                },
                polylines: Set.of(polylineMap.values),
              ),
            ),
            Positioned(
                top: 16,
                left: 32,
                right: 32,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomNavigationItem(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      body: const Icon(
                        Icons.menu_rounded,
                        size: 30,
                      ),
                    ),
                    CustomNavigationItem(
                      body: RichText(
                        text: const TextSpan(
                            text: "\$",
                            style: TextStyle(
                                color: Palette.accentTextColor,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                            children: [
                              TextSpan(
                                text: "20",
                                style: TextStyle(color: Colors.black),
                              )
                            ]),
                      ),
                    ),
                    CustomNavigationItem(
                      onTap: () {
                        print(initialLocation.toString());
                      },
                      body: Icon(
                        Icons.notifications_none_rounded,
                        size: 30,
                      ),
                    )
                  ],
                ))
          ],
        );
      }),
      bottomSheet: isVerified
          ? CustomPersistentBottomSheet(
              title: isOnline ? "You're offline" : "You're online",
              body: isOnline
                  ? const CustomFilledButton(label: "Go Online")
                  : const CustomFilledButton(label: "Go Offline"),
            )
          : const CustomPersistentBottomSheet(
              title: "You're offline",
              body: CustomBodyText(
                text: "Your account will be verified in 24 hours",
              ),
            ),
    );
  }
}

class RideAcceptanceSheet extends StatelessWidget {
  const RideAcceptanceSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPersistentBottomSheet(
        title: "You're Online",
        body: Column(
          children: [
            const Text("data"),
            SizedBox(
              child: const Column(),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomOutlinedButton(label: "Accept"),
                CustomFilledButton(label: "Decline"),
              ],
            )
          ],
        ),);
  }
}
