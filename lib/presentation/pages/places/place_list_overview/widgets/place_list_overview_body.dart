import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/application/places/place_watcher/place_watcher_bloc.dart';

import 'package:sample_app/infrastructure/core/firestore_helpers.dart';

import 'package:sample_app/presentation/pages/places/place_list_overview/widgets/place_card_widget.dart';

class Testi extends StatelessWidget {
  const Testi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaceWatcherBloc, PlaceWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) =>
                const Center(child: CircularProgressIndicator()),
            loadSuccess: (state) {
              if(state.place.id != null) {
                print(state.place.id);
              }
                return Text('success');
            },
            loadFailute: (state) {
               return Text('failure');
            });
      },
    );
  }
}
// import 'package:flutter/material.dart';

// import 'package:sample_app/infrastructure/core/firestore_helpers.dart';

// import 'package:sample_app/presentation/pages/places/place_list_overview/widgets/place_card_widget.dart';

// class PlaceCardWidget extends StatefulWidget {
//   const PlaceCardWidget({Key? key}) : super(key: key);

//   @override
//   _PlaceCardWidgetState createState() => _PlaceCardWidgetState();
// }

// class _PlaceCardWidgetState extends State<PlaceCardWidget> {
//   final Stream<QuerySnapshot> _usersStream =
//       FirebaseFirestore.instance.collection('users').snapshots();

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<QuerySnapshot>(
//       stream: _usersStream,
//       builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//         if (snapshot.hasError) {
//           return const Text('Something went wrong');
//         }

//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const LinearProgressIndicator();
//         }

//         return ListView(
//           children: snapshot.data!.docs.map((DocumentSnapshot document) {
//             Map<String, dynamic> data =
//                 document.data()! as Map<String, dynamic>;
//             return Column(children: [
//               PlaceCard(data),
//             ]);
//           }).toList(),
//         );
//       },
//     );
//   }
// }
