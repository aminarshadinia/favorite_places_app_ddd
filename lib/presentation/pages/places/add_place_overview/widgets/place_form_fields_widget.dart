import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/application/places/place_form/place_form_bloc.dart';
import 'package:sample_app/presentation/pages/places/add_place_overview/widgets/location_frame_widget.dart';

class AddPlaceFields extends StatefulWidget {
  
  const AddPlaceFields({Key? key}) : super(key: key);

  @override
  State<AddPlaceFields> createState() => _AddPlaceFieldsState();
}

class _AddPlaceFieldsState extends State<AddPlaceFields> {
  final _imageUrlController = TextEditingController();

  @override
  void dispose() {
    _imageUrlController.dispose();
    super.dispose();
  }

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
                      child: _imageUrlController.text.isEmpty
                          ? const Center(
                              child: Text('Enter a URL'),
                            )
                          : FittedBox(
                              child: Image.network(
                                _imageUrlController.text,
                                fit: BoxFit.cover,
                              ),
                            ),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Image URL',
                          hintText: 'https:// ... .png|jpg|jpeg',
                        ),
                        keyboardType: TextInputType.url,
                        controller: _imageUrlController,
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
                                imageFormat: (_) =>
                                    'Use a valid format of URL: png-jpg-jpeg',
                                orElse: () => null,
                              ),
                              (_) => null,
                            ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const LocationFrame()
              ],
            ),
          ),
        );
      },
    );
  }
}
