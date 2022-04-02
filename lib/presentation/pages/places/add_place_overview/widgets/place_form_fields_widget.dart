import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/application/places/note_form/place_form_bloc.dart';
import 'package:sample_app/presentation/pages/places/add_place_overview/widgets/location_input.dart';

class AddPlaceFields extends StatefulWidget {
  // static const routeName = '/add-place';
  const AddPlaceFields({Key? key}) : super(key: key);

  @override
  State<AddPlaceFields> createState() => _AddPlaceFieldsState();
}

class _AddPlaceFieldsState extends State<AddPlaceFields> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaceFormBloc, PlaceFormState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            autovalidate: state.showErrorMessages,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Title'),
                  keyboardType: TextInputType.text,
                  onChanged: (value) => context.read<PlaceFormBloc>().add(
                        PlaceFormEvent.titleChanged(value),
                      ),
                  validator: (_) => context
                      .read<PlaceFormBloc>()
                      .state
                      .place
                      .title
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          // we use maybeMap and orElse cuz we only care about a specific failure in each input
                          empty: (_) => 'Cannot be empty',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 120,
                      height: 110,
                      margin: const EdgeInsets.only(top: 20, right: 10),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: const Text('Enter a URL'),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Image URL',
                          hintText: 'https:// ... .png|jpg|jpeg',
                        ),
                        keyboardType: TextInputType.url,
                        onChanged: (value) => context.read<PlaceFormBloc>().add(
                        PlaceFormEvent.imageChanged(value),
                      ),
                  validator: (_) => context
                      .read<PlaceFormBloc>()
                      .state
                      .place
                      .image
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          // we use maybeMap and orElse cuz we only care about a specific failure in each input
                          imageFormat: (_) => 'Use a valid format of URL: png-jpg-jpeg',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const LocationInput()
              ],
            ),
          ),
        );
      },
    );
  }
}
