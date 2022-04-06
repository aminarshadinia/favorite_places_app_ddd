import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/application/places/place_actor/place_actor_bloc.dart';
import 'package:sample_app/infrastructure/core/firestore_helpers.dart';
import 'package:sample_app/presentation/pages/places/place_list_overview/widgets/place_details.dart';

class PlaceCard extends StatelessWidget {
  final Map<String, dynamic> place;
  const PlaceCard(this.place, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.all(6),
        onTap: () {
          showDialog(
            barrierColor: Colors.black.withOpacity(0.8),
            context: context,
            builder: (BuildContext context) {
              return PlaceDetals(
                url: place['image'],
                title: place['title'],
                latitude: place['latitude'],
                longitude: place['longitude'],
              );
            },
          );
        },
        onLongPress: () {
        final placeActorBloc = context.read<PlaceActorBloc>();
          showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Delete favorite place'),
              content: Text(
                  'You are about to delete " ${place['title']} " , are you sure?'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    placeActorBloc
                        .add(PlaceActorEvent.deleted(place['id']));
                    Navigator.pop(context);
                  },
                  child: const Text('DELETE',style: TextStyle(color: Colors.red),),
                ),
              ],
            ),
          );
        },
        leading: SizedBox(
          height: 70.0,
          width: 70.0,
          child: Image(
            image: NetworkImage(place['image']),
          ),
        ),
        trailing: const Icon(Icons.info_outline),
        title: Text(place['title']),
      ),
      elevation: 10,
      shadowColor: Colors.blue,
      margin: const EdgeInsets.all(20),
    );
  }
}
