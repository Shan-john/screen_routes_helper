/// A Screen router.
import 'package:flutter/material.dart';

/// `Routes` class provides utility functions for navigating between screens in a Flutter application.
class Routes {
  /// The singleton instance of the `Routes` class.
  static Routes instance = Routes();

  /// Navigates to the specified screen and removes all the screens from the stack until the new screen.
  ///
  /// The [widget] parameter represents the destination screen widget to be pushed.
  /// The [context] parameter is the build context used to obtain the Navigator.
  /// Returns a [Future] that completes to the value provided to [Navigator.pop] when the screen is popped.
  Future<dynamic> pushAndRemoveUntil({required Widget widget, required BuildContext context}) {
    return Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (cxt) => widget), (route) => false);
  }

  /// Navigates to the specified screen.
  ///
  /// The [widget] parameter represents the destination screen widget to be pushed.
  /// The [context] parameter is the build context used to obtain the Navigator.
  /// Returns a [Future] that completes to the value provided to [Navigator.pop] when the screen is popped.
  Future<dynamic> push({required Widget widget, required BuildContext context}) {
    return Navigator.of(context).push(
      MaterialPageRoute(builder: (cxt) => widget),
    );
  }

  /// Replaces the current screen with the specified screen.
  ///
  /// The [widget] parameter represents the destination screen widget to be pushed.
  /// The [context] parameter is the build context used to obtain the Navigator.
  /// Returns a [Future] that completes to the value provided to [Navigator.pop] when the screen is popped.
  Future<dynamic> pushReplace({required Widget widget, required BuildContext context}) {
    return Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (cxt) => widget),
    );
  }

  /// Pops the current screen from the navigation stack.
  ///
  /// The [context] parameter is the build context used to obtain the Navigator.
  void pop(BuildContext context) {
    Navigator.of(context).pop();
  }
}
