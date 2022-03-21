import 'package:flutter/material.dart';
import 'package:flutter_goroute_demo/feature/setting/presentation/controller/setting_controller.dart';
import 'package:flutter_goroute_demo/theme/theme_code.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ThemePicker extends ConsumerWidget {  
  const ThemePicker({Key? key  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(settingControllerProvider).themeMode;
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: ListView.separated(
        itemCount: ThemeCode.values.length,
        separatorBuilder: (context,index) => const Divider(height: 16.0,),
        itemBuilder: (context,index) {
          final theme = ThemeCode.values[index];
          return ListTile(
            leading: theme.name == ThemeMode.dark.name 
            ? const Icon(Icons.nightlight) 
            : const Icon(Icons.lightbulb),
            title: Text(theme.name),
            trailing: selected == theme.name 
              ? const Icon(Icons.check_box_outlined) : null,
            onTap: () {
              ref.read(settingControllerProvider.notifier).setThemeMode(theme.name);
            },
          );
        }));

      
      
  }
}