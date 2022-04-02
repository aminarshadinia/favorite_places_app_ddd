import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:sample_app/presentation/pages/places/add_place_overview/widgets/dio_location.dart';


class LocationInput extends StatefulWidget {
  const LocationInput({Key? key}) : super(key: key);

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  Map<dynamic, dynamic> _currentLocation = {};
  Future<void> _getCurrentUserLocation() async {
    Object locationData = await Location().getLocation();
    // final staticMapImagUrl = LocationHelper.generateLocationPreviewImage(
    //   latitude: locationData.latitude,
    //   longitude: locationData.longitude
    // );
      // print(locationData);
    setState(() {
      if (locationData != null) {

    _currentLocation = locationData as Map<dynamic, dynamic>;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 380,
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
          child: _currentLocation == {}
              ? const Text(
                  'No location chosen',
                  textAlign: TextAlign.center,
                )
              : const MapScreen(),
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
