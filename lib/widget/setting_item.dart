import 'package:flutter/material.dart';


class SettingItem extends StatelessWidget {
  final String text;
  final String? value;
  final VoidCallback onTap;

  const SettingItem({
    Key? key,
    required this.text,
    this.value,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: InkRipple.splashFactory,
      onTap: onTap,
      child: Container(
        padding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Row(
          children: [
            Expanded(
              child: Text(text),
            ),
            if (value != null) Text(value!),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Icon(Icons.navigate_next,
                  color: Theme.of(context).colorScheme.primary,),
            ),
          ],
        ),
      ),
    );
  }
}
