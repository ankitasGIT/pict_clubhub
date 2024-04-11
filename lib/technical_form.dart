/*import 'package:flutter/material.dart';

class TechnicalFormPage extends StatelessWidget {
  const TechnicalFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Technical Event Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(label: Text('Event Name')),
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem(
                    child: Text('Category 1'),
                    value: 'Category 1',
                  ),
                  DropdownMenuItem(
                    child: Text('Category 2'),
                    value: 'Category 2',
                  ),
                  // Add more categories as needed
                ],
                onChanged: (value) {},
                decoration: InputDecoration(label: Text('Event Category')),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(label: Text('Event Info')),
                maxLines: null,
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(label: Text('Event Link')),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(label: Text('Start Date')),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(label: Text('Start Time')),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(label: Text('End Date')),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(label: Text('End Time')),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(label: Text('Event Duration')),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(label: Text('Event Fees')),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(label: Text('Event Image')),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(label: Text('Event Venue')),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(label: Text('Event Created By')),
                initialValue: 'Logged in admin name', // Fetch dynamically
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(label: Text('Event Created Time')),
                initialValue: DateTime.now().toString(), // Fetch current time
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Implement form submission logic
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';

class TechnicalFormPage extends StatefulWidget {
  @override
  _TechnicalFormPageState createState() => _TechnicalFormPageState();
}

class _TechnicalFormPageState extends State<TechnicalFormPage> {
  final _formKey = GlobalKey<FormState>();

  // Form fields values
  String _eventName = '';
  String _eventCategory = '';
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
      appBar: AppBar(
        title: Text('Technical Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Event Name'),
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
              TextFormField(
                decoration: InputDecoration(labelText: 'Event Category'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter event category';
                  }
                  return null;
                },
                onSaved: (value) {
                  _eventCategory = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Event Info'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter event info';
                  }
                  return null;
                },
                onSaved: (value) {
                  _eventInfo = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Event Link'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter event link';
                  }
                  return null;
                },
                onSaved: (value) {
                  _eventLink = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Event Venue'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter event venue';
                  }
                  return null;
                },
                onSaved: (value) {
                  _eventVenue = value!;
                },
              ),
              TextFormField(
                decoration:
                    InputDecoration(labelText: 'Event Start Date and Time'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter event start date and time';
                  }
                  return null;
                },
                onSaved: (value) {
                  // Parse and save start date time here
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Event End Date and Time (Optional)'),
                onSaved: (value) {
                  // Parse and save end date time here
                },
              ),
              TextFormField(
                decoration:
                    InputDecoration(labelText: 'Event Duration (Optional)'),
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  // Parse and save event duration here
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Event Fees (Optional)'),
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  // Parse and save event fees here
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    _submitForm();
                  }
                },
                child: Text('Submit'),
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
