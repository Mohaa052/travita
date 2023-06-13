
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DetermineTheStartPosition extends StatefulWidget {
  const DetermineTheStartPosition({super.key});

  @override
  State<DetermineTheStartPosition> createState() => MapSampleState();
}

class MapSampleState extends State<DetermineTheStartPosition> {
static double? longitude ;
static double? latitude ;
  /// the lat2 and lang2 will be current location or local location
  static double lat = 31.261053668476137;
  static double lang = 32.30693131685257;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(lat, lang),
    zoom: 17.4746,
  );

  GoogleMapController? gmc;

  Set<Marker> firstMarker = {
    Marker(
      onTap: () {
        print("marker 2");
      },
      draggable: true,
      position: LatLng(lat, lang),
      onDragEnd: (LatLng location) {
          longitude= location.longitude;
          latitude =location.latitude;
      },
      markerId: MarkerId("2"),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.3,
                  child: GoogleMap(
                    markers: firstMarker,
                    mapType: MapType.normal,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      gmc = controller;
                    },
                  )),
              TextButton(
                  onPressed: () {
                    print("object");
                    print("the latitude =$latitude");
                    print("the longitude =$longitude");
                  },
                child: Text("Done"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
