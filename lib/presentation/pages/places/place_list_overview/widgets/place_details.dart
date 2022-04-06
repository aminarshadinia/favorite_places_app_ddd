import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlaceDetals extends StatelessWidget {
  final String title;
  final String url;
  final double latitude;
  final double longitude;

  const PlaceDetals({
    Key? key,
    required this.title,
    required this.url,
    required this.latitude,
    required this.longitude,
  }) : super(key: key);

  get initialCameraPosition => CameraPosition(
        target: LatLng(latitude, longitude),
        zoom: 11.5,
      );
  get marker => Marker(
        markerId: const MarkerId('origin'),
        infoWindow: const InfoWindow(title: 'title'),
        // icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        position: LatLng(latitude, longitude),
      );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 25.0,
            ),
            const Center(
                child: Text('Place Details..',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w600))),
            const SizedBox(
              height: 5.0,
            ),
            Row(children: [
              Expanded(
                child: SizedBox(
                  height: 250,
                  child: Center(
                    child: Hero(
                      tag: title,
                      child: Image.network(
                        url,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(height: 14.0),
            Row(children: [
              Expanded(
                child: SizedBox(
                  height: 300,
                  child: LatLng(latitude, longitude) == const LatLng(0.0, 0.0)
                      ? const Center(
                          child: Text(
                            'You haven\'t selected a location on map.',
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      : GoogleMap(
                          myLocationButtonEnabled: false,
                          // zoomControlsEnabled: false,
                          initialCameraPosition: initialCameraPosition,
                          markers: {
                            if (marker != null) marker,
                          },
                        ),
                ),
              ),
            ]),
          ],
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
