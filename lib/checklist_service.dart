import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class ChecklistService {
  Future<Map<String, dynamic>?> loadChecklist() async {
    try {
      String jsonString = await rootBundle.loadString('assets/checklist.json');
      Map<String, dynamic> json = jsonDecode(jsonString);
      return json;
    } catch (e) {
      print('Error loading checklist: $e');
      return null;
    }
  }
}
