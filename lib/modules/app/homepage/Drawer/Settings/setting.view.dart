import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/app/homepage/Drawer/Settings/setting.controller.dart';
import 'package:get/get.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);
  get top => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Obx(
        () => SettingsList(
          sections: [
            SettingsSection(
              title: const Text('Common'),
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  leading: const Icon(Icons.language),
                  title: const Text('Language'),
                  value: const Text('Français'),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile.switchTile(
                    initialValue: controller.isSwitched.value,
                    leading: const Icon(Icons.phone_android),
                    title: const Text('Use system theme'),
                    onToggle: (value) {
                      controller.isSwitched.value = value;
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
