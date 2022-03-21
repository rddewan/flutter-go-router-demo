import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class BaseConsumerState<T extends ConsumerStatefulWidget> extends ConsumerState<T> with RestorationMixin<T>, WidgetsBindingObserver{


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
    // TODO (richard): override from child class.    
  }

}