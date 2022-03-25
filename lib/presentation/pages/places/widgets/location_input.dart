import 'package:flutter/material.dart';
import 'package:location/location.dart';

import './location_helper.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({Key? key}) : super(key: key);

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  // final String _previewImageUrl ="https://maps.googleapis.com/maps/api/staticmap?center=&40.718217,-73.998284&zoom=13&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C40.718217,-73.998284&key=AIzaSyBdpbW-8f6qiNCJGalpJcLavTZkHKiWe08";
  // final String _previewImageUrl ="https://maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=100x50&maptype=roadmap&markers=color:red%7Clabel:C%7C40.718217,-73.998284&key=AIzaSyAiiF4hmVPc3Nfgav1pJDUDzWrtIy4Qt9I";
var _previewImageUrl ="";
  Future<void> _getCurrentUserLocation() async {
    final locationData = await Location().getLocation();
    final staticMapImagUrl = LocationHelper.generateLocationPreviewImage(
      latitude: locationData.latitude,
      longitude: locationData.longitude
    );
    setState(() {
      _previewImageUrl = staticMapImagUrl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: _previewImageUrl == ""
              ? const Text(
                  'No location chosen',
                  textAlign: TextAlign.center,
                )
              : Image.network(
                "https://maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=600x300&maptype=roadmap&markers=color:blue%7Clabel:S%7C40.702147,-74.015794&markers=color:green%7Clabel:G%7C40.711614,-74.012318&markers=color:red%7Clabel:C%7C40.718217,-73.998284&key=AIzaSyAiiF4hmVPc3Nfgav1pJDUDzWrtIy4Qt9I"
                // _previewImageUrl
                  // 'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png'
                  ,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              label: const Text('Current Location'),
              icon: const Icon(Icons.location_on),
              onPressed: _getCurrentUserLocation,
            ),
            TextButton.icon(
              label: const Text('Select on Map'),
              icon: const Icon(Icons.map),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
