import 'dart:async';

import 'package:flutter/widgets.dart';

class GoRouterStream extends ChangeNotifier {
  GoRouterStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.listen((_) => notifyListeners());
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
