import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/application/places/place_actor/place_actor_bloc.dart';
import 'package:sample_app/domain/place/place.dart';

class PlaceCard extends StatelessWidget {
  // final Place place;
  // const PlaceCard(this.place, {Key? key}) : super(key: key);

  final Map<String, dynamic> place;
  const PlaceCard(this.place, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onLongPress: () {
          final placeActorBloc = context.read<PlaceActorBloc>();
          // placeActorBloc.add(PlaceActorEvent.deleted(place));
        },
        leading: Image(
          image: NetworkImage(place['image']),
          height: 50.0,
          width: 50.0,
        ),
        trailing: const Icon(Icons.favorite_border_outlined),
        title: Text(place['title']),
      ),
      elevation: 10,
      shadowColor: Colors.blue,
      margin: const EdgeInsets.all(20),
    );
  }
}
