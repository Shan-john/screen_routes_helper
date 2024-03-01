<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

## Overview:
The Routes package is a utility class designed to simplify navigation within a Flutter application. It provides methods to facilitate common navigation operations such as pushing new routes, replacing routes, and removing routes.

## Key Features:

Singleton Design Pattern: The Routes class is implemented as a singleton, ensuring there's only one instance of it throughout the application's lifecycle.

Pushing Routes: The package offers a method push() to navigate to a new screen by pushing it onto the navigation stack. This method takes a Widget and the BuildContext as parameters.

Pushing and Removing Until: Another method pushAndRemoveUntil() is provided for scenarios where you need to push a new route and remove all the routes below it from the stack. This is particularly useful for implementing features like authentication flows.

Replacing Routes: The pushReplace() method replaces the current route on the navigation stack with a new one. This is commonly used for scenarios like going from a login screen to a home screen and ensuring the user cannot navigate back to the login screen.

Popping Routes: The pop() method allows for popping the current route off the navigation stack, effectively navigating back to the previous screen. This method is useful for handling back button presses or implementing custom navigation logic.

## Usage:
Developers can utilize the Routes package to streamline navigation operations within their Flutter applications. By importing and using this package, they can easily manage routes without needing to directly interact with the Navigator widget, reducing boilerplate code and enhancing code readability.

Scalability and Customization:
While the package provides essential navigation functionalities, it's designed with scalability and customization in mind. Developers can extend or modify the package according to their specific navigation requirements, ensuring flexibility and adaptability as their applications evolve.

## Compatibility:
The Routes package is compatible with Flutter's MaterialPageRoute, making it suitable for applications built using the Material Design framework. It seamlessly integrates with existing Flutter projects and can be used across different platforms supported by Flutter, including iOS, Android, and web.

```dart
class Routes {
 
  static Routes instance = Routes();

   
  Future<dynamic> pushAndRemoveUntil({required Widget widget, required BuildContext context}) {
    return Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (cxt) => widget), (route) => false);
  }

   
  Future<dynamic> push({required Widget widget, required BuildContext context}) {
    return Navigator.of(context).push(
      MaterialPageRoute(builder: (cxt) => widget),
    );
  }
 
  Future<dynamic> pushReplace({required Widget widget, required BuildContext context}) {
    return Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (cxt) => widget),
    );
  }
 
  void pop(BuildContext context) {
    Navigator.of(context).pop();
  }
}
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
