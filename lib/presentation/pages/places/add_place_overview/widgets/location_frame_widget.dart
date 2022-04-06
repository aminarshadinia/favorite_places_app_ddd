import 'package:flutter/material.dart';
import 'package:sample_app/presentation/pages/places/add_place_overview/widgets/map_widget.dart';

class LocationFrame extends StatefulWidget {
  const LocationFrame({Key? key}) : super(key: key);

  @override
  State<LocationFrame> createState() => _LocationFrameState();
}

class _LocationFrameState extends State<LocationFrame> {
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
          child: const Map(),
        ),
      ],
    );
  }
}
