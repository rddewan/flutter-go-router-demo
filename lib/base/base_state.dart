import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> with RestorationMixin<T>, WidgetsBindingObserver {
  
  @override
  void initState() {    
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override  
  String? get restorationId => T.toString();

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    // TODO (richard): override in child class.
    
  }

}
