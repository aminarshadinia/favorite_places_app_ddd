import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sample_app/application/auth/auth_bloc.dart';
import 'package:sample_app/presentation/pages/places/add_place_overview/place_form_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        AppBar(
          title: const Text('Drawer Menu'),
          automaticallyImplyLeading: false,
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.add),
          title: const Text('Add Place'),
          onTap: () {
            Navigator.of(context).pushNamed(PlaceFormPage.routeName);
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Exit'),
          onTap: () {
            context.read()<AuthBloc>().add(const AuthEvent.signedOut());
          },
        ),
      ],
    ));
  }
}
