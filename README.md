# flutter_starter_kit

Flutter Starter Kit is a comprehensive template for building Flutter applications. It provides a solid foundation with a well-organized directory structure, pre-configured libraries, and essential tools to kickstart your Flutter projects. Whether you're a beginner or an experienced developer, Flutter Starter Kit simplifies the app development process, allowing you to focus on building amazing user experiences.

## Getting Started

This project is a starting point for a Flutter application.

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Dart](https://dart.dev/get-dart)

### Installation

1. Clone the repository:

    ```
    git https://github.com/sonalmaniya/FlutterStarterKit.git
    ```

2. Change to the project directory:

    ```
    cd FlutterStarterKit
    ```

3. Install dependencies:

     ```
    flutter pub get
    ```

4. Run the app:

    ```
    flutter run
    ```

### Libraries & Tools Used

- [AppRoute](https://pub.dev/packages/auto_route)
- [Connectivity](https://pub.dev/packages/connectivity_plus)
- [Dio](https://github.com/flutterchina/dio)
- [Encryption](https://pub.dev/packages/encrypt)
- [Equatable](https://pub.dev/packages/equatable)
- [FlutterBloc](https://pub.dev/packages/flutter_bloc)
- [Env](https://pub.dev/packages/flutter_dotenv)
- [Localization](https://pub.dev/packages/flutter_localization)
- [Dependency Injection](https://pub.dev/packages/get_it)
- [Shared Preferences](https://pub.dev/packages/shared_preferences)


### Directory Structure

```
FlutterStarterKit/
|-- android/
|-- ios/
|-- lib/
|   |-- config/
|   |   |-- app_config.dart
|   |-- widgets/
|   |   |-- custom_button.dart
|   |   |-- user_avatar.dart
|   |-- constants/
|   |   |-- enums.dart
|   |   |-- image_constant.dart
|   |   |-- pref_constants.dart
|   |-- network/
|   |-- navigation/
|   |   |-- observer/
|   |   |   |-- app_navigator_observer.dart
|   |   |-- routes/
|   |   |   |-- app_router_imports.dart
|   |   |   |-- app_routes.dart
|   |-- resource/
|   |   |-- dimension/
|   |   |-- styles/
|   |-- utils/
|   |-- presentation/
|   |   |-- news/
|   |   |   | -- bloc/
|   |   |   |   |-- news_bloc.dart
|   |   |   |   |-- news_state.dart
|   |   |   |   |-- news_event.dart
|   |   |   | -- models/
|   |   |   |   |-- news_model.dart
|   |   |   | -- api/
|   |   |   |   |-- news_api.dart
|   |   |   | -- repository/
|   |   |   |   |-- news_repository.dart
|   |   |   |   |-- widget/
|   |   |   |   |-- news_screen.dart
|   |   |   | -- view/
|   |   |   |   |-- widget/
|   |   |   |   |-- news_screen.dart
|   |-- main.dart
|-- test/
|-- pubspec.yaml
|-- README.md
```

Setting Up Pre-commit Checks in Flutter

```
dart run husky install
```

### Run Custom Scripts

```
rps command_name
```

### Generate locale files

```
rps gen_locale
```

### To auto generate routing

```
rps nav_generator
```

### To Setup Env

```
rps setup_dev_env
```

### Up-Coming Features

- Theme Support
- Logger
