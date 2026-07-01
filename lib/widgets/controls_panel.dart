import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/user_preferences.dart';

class ControlsPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final prefs = Provider.of<UserPreferences>(context);
    return Container(
      padding: EdgeInsets.all(12),
      color: Colors.black.withOpacity(0.7),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}),
              IconButton(icon: Icon(Icons.photo_library), onPressed: () {}),
              IconButton(icon: Icon(Icons.save), onPressed: () {}),
              IconButton(icon: Icon(Icons.share), onPressed: () {}),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ChoiceChip(label: Text('Female'), selected: prefs.selectedGender == Gender.female, onSelected: (_) => prefs.setGender(Gender.female)),
              ChoiceChip(label: Text('Male'), selected: prefs.selectedGender == Gender.male, onSelected: (_) => prefs.setGender(Gender.male)),
            ],
          ),
          Slider(
            value: prefs.opacity,
            onChanged: prefs.setOpacity,
            min: 0.1,
            max: 1.0,
          ),
        ],
      ),
    );
  }
}
