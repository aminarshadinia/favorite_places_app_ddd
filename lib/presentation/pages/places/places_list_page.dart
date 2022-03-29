import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/application/auth/auth_bloc.dart';
import 'package:sample_app/presentation/pages/places/add_place_page.dart';

class PlacesListPage extends StatelessWidget {
  static const routeName = '/placesList';
  const PlacesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Places'),
          leading: IconButton(
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.signedOut());
            },
            icon: const Icon(Icons.exit_to_app),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AddPlacePage.routeName);
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: Text('PLACES PAGE'));
  }
}
