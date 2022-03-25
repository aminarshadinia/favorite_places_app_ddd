import 'package:flutter/material.dart';
import 'package:sample_app/presentation/pages/places/add_place_page.dart';
import 'package:sample_app/presentation/pages/places/widgets/dio_location.dart';

class PlacesListPage extends StatelessWidget {
  static const routeName = '/placesList';
  const PlacesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Places'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AddPlacePage.routeName);
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: MapScreen());
  }
}
