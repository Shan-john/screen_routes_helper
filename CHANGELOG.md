## 0.0.1

*  

Singleton Design Pattern: The Routes class is implemented as a singleton, ensuring there's only one instance of it throughout the application's lifecycle.

Pushing Routes: The package offers a method push() to navigate to a new screen by pushing it onto the navigation stack. This method takes a Widget and the BuildContext as parameters.

Pushing and Removing Until: Another method pushAndRemoveUntil() is provided for scenarios where you need to push a new route and remove all the routes below it from the stack. This is particularly useful for implementing features like authentication flows.

Replacing Routes: The pushReplace() method replaces the current route on the navigation stack with a new one. This is commonly used for scenarios like going from a login screen to a home screen and ensuring the user cannot navigate back to the login screen.

Popping Routes: The pop() method allows for popping the current route off the navigation stack, effectively navigating back to the previous screen. This method is useful for handling back button presses or implementing custom navigation logic.