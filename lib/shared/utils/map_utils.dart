import 'package:url_launcher/url_launcher.dart';

class MapUtils {
  MapUtils._();

  static Future<void> openMap(
    double latitude,
    double longtitude,
  ) async {
    String googleMapUrl =
        "https://wwww.google.com/maps/search/?api=1&query=$latitude,$longtitude";

    if (await canLaunch(googleMapUrl)) {
      await launch(googleMapUrl);
    } else {
      throw 'Could not open the Map';
    }
  }
}
