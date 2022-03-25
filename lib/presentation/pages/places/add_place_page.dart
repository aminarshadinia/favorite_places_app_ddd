import 'package:flutter/material.dart';
import 'package:sample_app/presentation/pages/places/widgets/location_input.dart';

class AddPlacePage extends StatefulWidget {
  static const routeName = '/add-place';
  const AddPlacePage({Key? key}) : super(key: key);

  @override
  State<AddPlacePage> createState() => _AddPlacePageState();
}

class _AddPlacePageState extends State<AddPlacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Places I want to visit'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Title'),
                keyboardType: TextInputType.text,
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
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const LocationInput()
            ],
          ),
        ),
      ),
    );
  }
}
