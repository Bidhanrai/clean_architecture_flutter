# clean_architecture_flutter_sampang

A project implementing clean architecture for flutter apps.

##About

This project does not do much. 
It's just a demonstration of how [clean architecture](https://betterprogramming.pub/the-clean-architecture-beginners-guide-e4b7058c1165) for flutter apps can be achieved.
How files can be organized from feature-first approach.
Each feature breaks down further into three main layers.


- Domain layer (It holds the major business logic code)
  Business and application specific logic and entities.
  Not affected by changes in outer layers
  Written purely in dart.

- Data layer (It holds the code for communicating with third party libraries, data sources, apis, etc)
  Manages the application data by retrieving them from external source or local data or cache within the app

- Presentation layer (It holds the code of actual ui (widgets) and state management logic)
  Responsible for showing the UI, interactions, taking user inputs, processing and communicating with domain layer.
  State management logic


##Plugins used

- [stacked](https://pub.dev/packages/stacked) - used for state management based on provider package
- [get_it](https://pub.dev/packages/get_it) - used for dependency injection
- [equatable](https://pub.dev/packages/equatable) - this package is used to be able compare objects in Dart 



###some helpful links
[](https://codewithandrea.com/articles/flutter-project-structure/)
[](https://www.youtube.com/watch?v=6jjaVWEC9Qw)
[](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
[](https://medium.com/ruangguru/an-introduction-to-flutter-clean-architecture-ae00154001b0)


  


