import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/application/places/place_actor/place_actor_bloc.dart';
import 'package:sample_app/presentation/pages/places/place_list_overview/widgets/place_details.dart';

class PlaceCard extends StatelessWidget {
  final Map<String, dynamic> place;
  const PlaceCard(this.place, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          showDialog(
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
          // placeActorBloc.add(PlaceActorEvent.deleted(place[placeActorBloc]));
        },
        leading: SizedBox(
          height: 50.0,
          width: 50.0,
          child: Image(
            image: NetworkImage(place['image']),
            height: 50.0,
            width: 50.0,
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

