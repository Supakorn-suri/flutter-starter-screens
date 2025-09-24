import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('General'),
            tiles: [
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('Language'),
                value: Text('English'),
                onPressed: (context) {
                  // navigate to language selection
                },
                description: Text(
                    'Select your preferred language for the app interface.'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {
                  // toggle dark mode / custom theme
                },
                initialValue: true,
                leading: Icon(Icons.dark_mode),
                title: Text('Dark Mode'),
              ),
              SettingsTile(
                title: Text('Theme Color'),
                leading: Icon(Icons.palette),
                trailing: DropdownButton<String>(
                  onChanged: (value) {},
                  items: <String>['Blue', 'Red', 'Green', 'Purple']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SettingsTile(
                title: Text('Text Size'),
                leading: Icon(Icons.text_fields),
                trailing: Slider(
                  min: 0.5,
                  max: 2.0,
                  divisions: 3,
                  onChanged: (newValue) {},
                  value: 1.0,
                ),
              ),
            ],
          ),
          SettingsSection(
            title: Text('Notifications'),
            tiles: [
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.notifications),
                title: Text('App Notifications'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.volume_up),
                title: Text('Notification Sound'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: false,
                leading: Icon(Icons.vibration),
                title: Text('Vibration'),
              ),
            ],
          ),
          SettingsSection(
            title: Text('Account'),
            tiles: [
              SettingsTile.navigation(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.lock),
                title: Text('Privacy & Security'),
                onPressed: (context) {},
                description:
                    Text('Manage privacy settings and security options.'),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
