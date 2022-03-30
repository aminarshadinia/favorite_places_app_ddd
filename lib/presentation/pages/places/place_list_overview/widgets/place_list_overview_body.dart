import 'package:flutter/material.dart';
import 'package:sample_app/infrastructure/core/firestore_helpers.dart';
import 'package:sample_app/presentation/pages/places/place_list_overview/widgets/place_card_widget.dart';

class PlaceCardWidget extends StatefulWidget {
  const PlaceCardWidget({Key? key}) : super(key: key);

  @override
  _PlaceCardWidgetState createState() => _PlaceCardWidgetState();
}

class _PlaceCardWidgetState extends State<PlaceCardWidget> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('users').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            return Column(children: [
              PlaceCard(data),
            ]);
          }).toList(),
        );
      },
    );
  }
}
