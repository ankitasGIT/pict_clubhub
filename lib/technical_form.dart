import 'package:flutter/material.dart';

class TechnicalFormPage extends StatefulWidget {
  @override
  _TechnicalFormPageState createState() => _TechnicalFormPageState();
}

class _TechnicalFormPageState extends State<TechnicalFormPage> {
  final _formKey = GlobalKey<FormState>();

  final List<String> _eventCategories = [
    "ACM",
    "IEEE",
    "Art Circle",
    "CSI",
    "DebSoc",
    "NSS",
    "Pictoreal",
    "Robotics Club",
    "TEDx",
  ];

  // Form fields values
  String _eventName = '';
  String? _eventCategory;
  String _eventInfo = '';
  String _eventLink = '';
  DateTime _eventStartDateTime = DateTime.now();
  DateTime? _eventEndDateTime;
  int? _eventDuration;
  int? _eventFees;
  String _eventVenue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        shadowColor: Colors.grey[600],
        elevation: 1,
        title: const Text('Technical Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Event Name',
                  labelStyle: TextStyle(color: Colors.white),
                ),
                style: const TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter event name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _eventName = value!;
                },
              ),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Event Category',
                  labelStyle: TextStyle(color: Colors.white),
                ),
                dropdownColor: Colors.grey[800],
                style: const TextStyle(color: Colors.white),
                value: _eventCategory,
                items: _eventCategories
                    .map((category) => DropdownMenuItem(
                          value: category,
                          child: Text(category),
                        ))
                    .toList(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select event category';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _eventCategory = value!;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Event Info',
                    labelStyle: TextStyle(color: Colors.white)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter event info';
                  }
                  return null;
                },
                style: const TextStyle(color: Colors.white),
                onSaved: (value) {
                  _eventInfo = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Event Link',
                    labelStyle: TextStyle(color: Colors.white)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter event link';
                  }
                  return null;
                },
                style: const TextStyle(color: Colors.white),
                onSaved: (value) {
                  _eventLink = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Event Venue',
                    labelStyle: TextStyle(color: Colors.white)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter event venue';
                  }
                  return null;
                },
                style: const TextStyle(color: Colors.white),
                onSaved: (value) {
                  _eventVenue = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Event Start Date and Time',
                    labelStyle: TextStyle(color: Colors.white)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter event start date and time';
                  }
                  return null;
                },
                style: const TextStyle(color: Colors.white),
                onSaved: (value) {
                  // Parse and save start date time here
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Event End Date and Time (Optional)',
                    labelStyle: TextStyle(color: Colors.white)),
                style: const TextStyle(color: Colors.white),
                onSaved: (value) {
                  // Parse and save end date time here
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Event Duration (Optional)',
                    labelStyle: TextStyle(color: Colors.white)),
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.white),
                onSaved: (value) {
                  // Parse and save event duration here
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Event Fees (Optional)',
                    labelStyle: TextStyle(color: Colors.white)),
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.white),
                onSaved: (value) {
                  // Parse and save event fees here
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    _submitForm();
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    // Perform form submission with the entered values
    // You can access the form field values here and submit them to your backend or perform any other action
    // For example:
    print('Event Name: $_eventName');
    print('Event Category: $_eventCategory');
    print('Event Info: $_eventInfo');
    print('Event Link: $_eventLink');
    print('Event Venue: $_eventVenue');
    // Print other form field values...

    // After submission, you can navigate back to the previous screen or perform any other action
    Navigator.pop(context); // Navigate back to previous screen
  }
}
