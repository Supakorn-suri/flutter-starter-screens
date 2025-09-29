import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Setting',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      )),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text('General'),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(Icons.language),
                title: const Text('Language'),
                value: const Text('English'),
                onPressed: (context) {
                  // navigate to language selection
                },
                description: const Text(
                    'Select your preferred language for the app interface.'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {
                  // toggle dark mode / custom theme
                },
                initialValue: true,
                leading: const Icon(Icons.dark_mode),
                title: const Text('Dark Mode'),
              ),
              SettingsTile(
                title: const Text('Theme Color'),
                leading: const Icon(Icons.palette),
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
                title: const Text('Text Size'),
                leading: const Icon(Icons.text_fields),
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
            title: const Text('Notifications'),
            tiles: [
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: const Icon(Icons.notifications),
                title: const Text('App Notifications'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: const Icon(Icons.volume_up),
                title: const Text('Notification Sound'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: false,
                leading: const Icon(Icons.vibration),
                title: const Text('Vibration'),
              ),
            ],
          ),
          SettingsSection(
            title: const Text('Account'),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.lock),
                title: const Text('Privacy & Security'),
                onPressed: (context) {},
                description:
                    const Text('Manage privacy settings and security options.'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
