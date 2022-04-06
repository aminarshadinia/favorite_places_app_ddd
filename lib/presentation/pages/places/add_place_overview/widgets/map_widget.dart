import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sample_app/application/places/note_form/place_form_bloc.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(13.660397, 100.525939),
    zoom: 4,
  );
  late GoogleMapController _googleMapController;
  Marker? _origin;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (controller) => _googleMapController = controller,
        markers: {
          if (_origin != null) _origin!,
        },
        onTap: _addMarker,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(_initialCameraPosition),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.center_focus_strong),
      ),
    );
  }

  void _addMarker(LatLng pos) {
    setState(() {
      _origin = Marker(
        markerId: const MarkerId('origin'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        position: (pos.latitude == 0.0 && pos.longitude == 0.0)
            ? const LatLng(0.0, 0.0)
            : pos,
      );
    });
    context.read<PlaceFormBloc>().add(
          PlaceFormEvent.latitudeChanged(_origin!.position.latitude),
        );
    context.read<PlaceFormBloc>().add(
          PlaceFormEvent.longitudeChanged(_origin!.position.longitude),
        );
  }
}
