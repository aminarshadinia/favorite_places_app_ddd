// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:sample_app/application/places/place_watcher/place_watcher_bloc.dart';

// class PlaceListOverviewBody extends StatelessWidget {
//   const PlaceListOverviewBody({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<PlaceWatcherBloc, PlaceWatcherState>(
//         builder: (context, state) {
//       return state.map(
//         initial: (_) => Container(),
//         loadInProgress: (_) => const Center (child: Text('child: CircularProgressIndicator()'),),
//         loadSuccess: (state) => Text(),
//         loadFailure: (_) => Text('failure'),
//       );
//     },
//     );
//   }
// }
