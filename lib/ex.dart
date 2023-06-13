// import 'package:flutter/material.dart';
// import 'package:travita/Component/navigator.dart';
// import 'package:travita/UI/Details/view.dart';
//
// class Ex extends StatelessWidget {
//   const Ex({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: TextButton(
//           onPressed: () {
//             defaultNavigator(
//                 context,
//                 DetailsScreen(
//                     image: "https://www.adobe.com/express/feature/image/media_16ad2258cac6171d66942b13b8cd4839f0b6be6f3.png?width=750&format=png&optimize=medium",
//                     name: "dog",
//                     description: 'vvder',
//                     detailsType: 'type',
//                     detailsId: 'id'));
//           },
//           child: Text("details"),
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSamplee extends StatefulWidget {
  const MapSamplee({super.key});

  @override
  State<MapSamplee> createState() => MapSampleState();
}

class MapSampleState extends State<MapSamplee> {
  static double lat = 31.260976;
  static double lang = 32.306976;

  /// the lat2 and lang2 will be current location or local location
  static double lat2 = 31.261053668476137;
  static double lang2 = 32.30693131685257;

  static CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(lat, lang),
    zoom: 17.4746,
  );

  GoogleMapController? gmc;
  bool showMap = false;

  Set<Marker> firstMarker = {
    // Marker(
    //   onTap: () {
    //     print("marker 1");
    //   },
    //   draggable: true,
    //   position: LatLng(lat, lang),
    //   infoWindow: InfoWindow(
    //       title: "1",
    //       onTap: () {
    //         print("marker infoooo 1 ");
    //       }),
    //   markerId: MarkerId("1"),
    // ),

    Marker(
      onTap: () {
        print("marker 2");
      },
      draggable: true,
      position: LatLng(lat2, lang2),
      onDragEnd: (LatLng location) {
        print("the long location = ${location.longitude}");
        print("the lat location = ${location.latitude}");
      },
      infoWindow: InfoWindow(
          title: "2",
          onTap: () {
            print("marker infoooo 2 ");
          }),
      markerId: MarkerId("2"),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 400,
                child: showMap
                    ? GoogleMap(
                        markers: firstMarker,
                        mapType: MapType.normal,
                        initialCameraPosition: _kGooglePlex,
                        onMapCreated: (GoogleMapController controller) {
                          gmc = controller;
                        },
                      )
                    : Container(),
              ),
              ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      showMap = true;
                    });
                    LatLng latang = LatLng(lat, lang);
                    var xy = await gmc!
                        .animateCamera(CameraUpdate.newLatLng(latang));
                  },
                  child: Text("move to location ")),
              ElevatedButton(
                  onPressed: () async {
                    LatLng latang = LatLng(21.422390, 39.722958);
                    var xy =
                        await gmc!.getLatLng(ScreenCoordinate(x: 200, y: 200));
                    print("$xy");
                  },
                  child: Text("get land and lat by xy from map")),
            ],
          ),
        ),
      ),
    );
  }
}
