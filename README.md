# Keep Note Flutter

A cross-platform note-taking application built with Flutter, inspired by Google Keep.

It follows Clean Architecture principles and primarily uses official Flutter packages along with
Flutter Favorite packages, including:
* **Bloc** for state management and clear separation of business logic from the UI code
* **go_router** for navigation and deep linking
* **get_it** for dependence injection
* **freezed** for generating immutable data classes, unions/sealed classes, and boilerplate-free `copyWith`, `toString`, and `equality`
* **shared_preferences** for local storage of simple data
* **sqflite** for local SQLite database storage of complex data
* **infinite_scroll_pagination** for pagination
* **flutter_local_notifications** for scheduling and displaying local notification

## Project Structure
```
lib/
├── config/di/          # Dependency injection setup
├── data/               # Data sources and repositories
├── domain/             # Entities and use cases
├── presentation/       # Screens, widgets, and UI logic (Bloc providers, etc.)
├── routing/            # App navigation and routes (GoRouter)
└── main.dart           # Application entry point
```

## Screenshots
#### Listing Screen
![Listing in Grid](images/Simulator Screenshot - iPhone 16e - 2025-12-27 at 05.59.40.png)
![Listing in List](images/Simulator Screenshot - iPhone 16e - 2025-12-27 at 05.59.52.png)
![Search](images/Simulator Screenshot - iPhone 16e - 2025-12-27 at 06.00.49.png)
#### Edit Screen
![new edit screen](images/Simulator Screenshot - iPhone 16e - 2025-12-27 at 06.03.38.png)
![Edit screen with id](images/Simulator Screenshot - iPhone 16e - 2025-12-27 at 06.01.24.png)
![Set noti](images/Simulator Screenshot - iPhone 16e - 2025-12-27 at 06.02.01.png)
![noti](images/Simulator Screenshot - iPhone 16e - 2025-12-27 at 06.03.02.png)
