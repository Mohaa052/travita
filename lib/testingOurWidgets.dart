import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:shimmer/shimmer.dart';
import 'package:travita/Component/colors/colors.dart';
import 'package:travita/Component/navigator.dart';
import 'package:travita/Component/widgets/category/category.dart';
import 'package:travita/UI/Details/view.dart';
import 'package:url_launcher/url_launcher.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  static double lat = 31.260976;
  static double lang = 32.306976;

  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(lat, lang),
    zoom: 17.4746,
  );

  GoogleMapController? gmc;
  bool showMap = false;

  Set<Marker> firstMarker = {
    Marker(
      onTap: () {
        print("marker 1");
      },
      draggable: true,
      position: LatLng(lat, lang),
      infoWindow: InfoWindow(
          title: "1",
          onTap: () {
            print("marker infoooo 1 ");
          }),
      markerId: MarkerId("1"),
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
                    LatLng latLng = LatLng(lat, lang);
                    var xy = await gmc!
                        .animateCamera(CameraUpdate.newLatLng(latLng));
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

/// key
/// AIzaSyBloAGsysaE7YchiCy33tn8VUBCpuJ901E

/// camera

class UploadImage extends StatefulWidget {
  const UploadImage({Key? key}) : super(key: key);

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  File? file;
  bool isFile = false;
  void tokenImageWithCamera() async {
    XFile? xFileImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    File image = File(xFileImage!.path);
    setState(() {
      file = image;
      isFile = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: tokenImageWithCamera,
          icon: Icon(Icons.camera),
        ),
      ),
      // body:Center(
      //   child: Column(
      //     children: [
      //       isFile ? Image.file(file!,height: 300,):Icon(Icons.error_outline),
      //       TextButton(onPressed: (){
      //         showDialog(context: context, builder: (context){
      //           return SimpleDialog(
      //             children: [
      //               TextButton(
      //                   onPressed:tokenImageWithcamira
      //                   , child: Text("tack phot with came"))
      //             ],
      //           );
      //         }
      //         );
      //       }, child: Text("Pick Image")),
      //
      //     ],
      //   ),
      // ),
    );
  }
}

class UrlEx extends StatelessWidget {
  _launchUrl(Uri _url) async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  String webSite = 'google.com';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                /*defaultNavigator(
                    context,
                    DetailsScreen(
                      description: "asdfasdfasdfa",
                      image:
                          'https://www.adobe.com/express/feature/image/media_16ad2258cac6171d66942b13b8cd4839f0b6be6f3.png?width=750&format=png&optimize=medium',
                      name: "dog",
                      detailsType: '',
                      detailsId: '',
                    ));*/
              },
              child: Text("details")),
          TextButton(
              onPressed: () {
                final Uri _url = Uri.parse(webSite);
                _launchUrl(_url);
              },
              child: Text('website')),
          /*Shimmer.fromColors(
            baseColor: AppColors.ofWhite,
            highlightColor: AppColors.white,
            child: Category(
              image:
                  'https://www.adobe.com/express/feature/image/media_16ad2258cac6171d66942b13b8cd4839f0b6be6f3.png?width=750&format=png&optimize=medium',
              description: "The description of place loading",
              nameOfPlace: "The name of place loading",
              type: '',
              id: '',
            ),
          )*/
        ],
      ),
    );
  }
}
