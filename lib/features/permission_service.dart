import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  void requestPermissions() async {
    try {
      bool locationService = await Permission.locationWhenInUse.isDenied;
      bool cameraService = await Permission.camera.isDenied;
      bool galleryService = await Permission.mediaLibrary.isDenied;
      if (locationService) {
        Permission.locationWhenInUse.request();
      }
      if (cameraService) {
        Permission.camera.request();
      }
      if (galleryService) {
        Permission.mediaLibrary.request();
      }
    } catch (e) {
      print(e);
      print("There was an error getting permissions");
    }
  }
}
