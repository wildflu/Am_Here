import 'package:amhere/domain/get_controller/setting_controller/settings_controller.dart';
import 'package:amhere/presontation/components/widgets/change_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
      init: SettingsController(),
      builder: (controller) {
        return ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          const SizedBox(height: 70,),
          const Text(
            "Settings",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.w300, color: Colors.black54),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/one.jpg',
                    width: 130,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 1,
                      height: 100,
                      color: Colors.black12,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Edit",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        IconButton(
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.black12),
                            onPressed: () {},
                            icon: const Icon(Icons.edit))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 40,),
          SettingCardComponent(
            color: Colors.blue.shade100,
            icon: Icons.location_history,
            text: "Location",
            component: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_new_sharp, textDirection: TextDirection.rtl,size: 15,)),
          ),
          SettingCardComponent(
              color: Colors.red.shade100,
              icon: Icons.language_outlined,
              component: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_new_sharp, textDirection: TextDirection.rtl,size: 15,)),
              text: "Language"),
          SettingCardComponent(
              color: Colors.amber.shade100,
              component: Switch(
                value: controller.isEnableLocationOnMap,
                onChanged: (value)=> controller.enableLocationChangeSatus(value),
              ),
              icon: Icons.location_on_outlined,
              text: "Display Location"),
          SettingCardComponent(
              color: Colors.green.shade100,
              icon: Icons.message_outlined,
              component: Switch(
                value: controller.isExceptMessages,
                onChanged: (value) => controller.exceptMessagesChangeSatus(value),
              ),
              text: "Enable Messages"),
          SettingCardComponent(
              color: Colors.deepOrange.shade100,
              component: const ChangeThemeComponent(),
              icon: Icons.location_on_outlined,
              text: "Theme"),
        ],
      );
      },
    );
  }
}

class SettingCardComponent extends StatelessWidget {
  const SettingCardComponent({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.component,
  });
  final String text;
  final IconData icon;
  final Color color;
  final Widget component;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(icon),
            style: IconButton.styleFrom(
                backgroundColor: color, padding: const EdgeInsets.all(10)),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Text(
            text,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Theme.of(context).primaryColor),
          )),
          component
        ],
      ),
    );
  }
}
