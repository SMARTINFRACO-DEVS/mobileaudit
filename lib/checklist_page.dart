import 'package:flutter/material.dart';
import 'package:msaudit/user_model.dart';
import 'models.dart'; // Import your models and sample data
import 'package:msaudit/completescreen.dart';

class ChecklistPage extends StatefulWidget {
  late final Tasklist user;

  @override
  _ChecklistPageState createState() => _ChecklistPageState();
}

class _ChecklistPageState extends State<ChecklistPage> {
  final Map<String, Map<String, String?>> _answers = {}; // Update type to String?

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checklist')),
      body: ListView(
        children: [
          ..._buildChecklistCategorySections('Site Environment', checklistData.siteEnvironment),
          ..._buildChecklistSection('Tower', checklistData.tower),
          ..._buildChecklistSection('Earthing', checklistData.earthing),
          ..._buildChecklistSectorIssues('Sector Issues', checklistData.sectorIssues),
          ..._buildChecklistSection('BTS Equipment', checklistData.btsEquipment),
          ..._buildChecklistSection('Power Equipment Unit', checklistData.powerEquipmentUnit),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _submitForm,
        child: Icon(Icons.save),
      ),
    );
  }

  // Handles sections with categories
  List<Widget> _buildChecklistCategorySections(String title, Map<String, ChecklistCategory> categories) {
    return categories.entries.map((entry) {
      final category = entry.value;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(category.name, style: Theme.of(context).textTheme.titleLarge),
          ),
          ..._buildChecklistSection(category.name, category.items),
        ],
      );
    }).toList();
  }

  List<Widget> _buildChecklistSection(String title, Map<String, String> items) {
    return [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(title, style: Theme.of(context).textTheme.titleLarge),
      ),
      ...items.entries.map((entry) {
        final key = entry.key;
        final label = entry.value;
        final response = _answers[title]?[key] ?? 'NA';

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: Theme.of(context).textTheme.bodyLarge),
            Row(
              children: ['P', 'F', 'NA'].map((option) {
                return Expanded(
                  child: RadioListTile<String>(
                    title: Text(option),
                    value: option,
                    groupValue: response,
                    onChanged: (String? value) {
                      setState(() {
                        if (_answers[title] == null) {
                          _answers[title] = {};
                        }
                        _answers[title]?[key] = value;
                      });
                    },
                  ),
                );
              }).toList(),
            ),
          ],
        );
      }).toList(),
    ];
  }

  List<Widget> _buildChecklistSectorIssues(String title, Map<String, Map<String, String>> sectorIssues) {
    return sectorIssues.entries.expand((sectorEntry) {
      final sectorTitle = sectorEntry.key;
      final sectorItemsMap = sectorEntry.value;
      return [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(sectorTitle, style: Theme.of(context).textTheme.titleLarge),
        ),
        ..._buildChecklistSection(sectorTitle, sectorItemsMap),
      ];
    }).toList();
  }
void _submitForm() {
  // Handle form submission, e.g., send data to a server or save locally
  print('Form data: $_answers');

  // Create a Tasklist object (replace with actual implementation)
  Tasklist tasklist = Tasklist(
    // Populate the Tasklist object with the necessary data
    // For example, if Tasklist requires specific parameters, provide them here
    // taskId: 'some-id', taskName: 'some-task', etc.
  );

  // Simulate sending data to a database
  Future.delayed(Duration(seconds: 2), () {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => CompleteScreen(user: tasklist),
      ),
    );
  });
}


  }

