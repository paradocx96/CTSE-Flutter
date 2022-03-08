import 'package:flutter/material.dart';
import 'package:ctse_labsheet4/services/agify_service.dart';

class Home extends StatefulWidget {
  final AgifyService _agifyService;

  const Home({Key? key})
      : _agifyService = const AgifyService(),
        super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();

  String? _name;
  int? _age;

  void onSubmit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final result = await widget._agifyService.getAgeForName(_name!);

      setState(() {
        _age = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    helperText: 'Name',
                    labelText: 'Name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    setState(() {
                      if (value != null) {
                        _name = value;
                      }
                    });
                  },
                ),
              ),
              ElevatedButton(
                onPressed: onSubmit,
                child: const Text('Get Age'),
              ),
            ],
          ),
        ),
        if (_age != null)
          Center(
            child: Text(
              "Age is $_age",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
      ],
    );
  }
}
