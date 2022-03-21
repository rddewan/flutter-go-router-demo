import 'package:flutter/material.dart';
import 'package:flutter_goroute_demo/base/base_consumer_state.dart';
import 'package:flutter_goroute_demo/feature/setting/presentation/controller/setting_controller.dart';
import 'package:flutter_goroute_demo/language/language_code.dart';
import 'package:flutter_goroute_demo/widget/setting_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreen createState() => _SettingScreen();
}

class _SettingScreen extends BaseConsumerState<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(        
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              alignment: Alignment.center,
              child: Text(
                'Setting',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Common',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.bold),),
                    const SizedBox(height: 16.0),
                    Column(
                      children: [
                        Consumer(
                          builder: (context, ref, child) {
                            final languageCode = ref.watch(settingControllerProvider.select((value) => value.languageCode));
                            return SettingItem(
                              text: 'Change Language',
                              value: _setLanguageValue(languageCode),
                              onTap: () {                                                          
                                
                              },
                            );
                          },                          
                        ),
                        Consumer(
                          builder: ((context, ref, child)  {
                            final themeMode = ref.watch(settingControllerProvider.select((value) => value.themeMode));
                              return SettingItem(
                                text: 'Change Theme',
                                value: _setThemeValue(themeMode),
                                onTap: () {   
                                   
                                },
                            );
                          }),
                        ),                          
                        const Divider(color: Colors.grey)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),);
    
  }

  String _setThemeValue(String? value) {

    if (value == null || value == ThemeMode.light.name) {
      return 'light';
    }

    return 'dark';
  }

  String _setLanguageValue(String? languageCode) {

    if (languageCode == null || languageCode == LanguageCode.th.name) {
      return 'th';
    }

    return 'en';
  }
}
