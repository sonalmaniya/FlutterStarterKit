# Flutter Starter Kit

**Flutter Starter Kit** is a comprehensive template to kickstart your Flutter applications. It offers a clean architecture, well-organized folder structure, and pre-configured libraries. Whether you're a beginner or an experienced developer, this kit helps you focus on building beautiful apps faster.

---

## 🚀 Getting Started

This project is a starting point for a Flutter application.

### ✅ Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart SDK](https://dart.dev/get-dart)

---

## 🔧 Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/sonalmaniya/FlutterStarterKit.git
   ```

2. **Navigate to the project directory:**

   ```bash
   cd FlutterStarterKit
   ```

3. **Install dependencies:**

   ```bash
   flutter pub get
   ```

4. **Run the app:**

   ```bash
   flutter run
   ```

---

## 📦 Libraries & Tools Used

| Purpose                  | Package                                                                 |
|--------------------------|-------------------------------------------------------------------------|
| Routing                  | [`auto_route`](https://pub.dev/packages/auto_route)                     |
| Connectivity             | [`connectivity_plus`](https://pub.dev/packages/connectivity_plus)       |
| Networking               | [`dio`](https://github.com/flutterchina/dio)                            |
| Encryption               | [`encrypt`](https://pub.dev/packages/encrypt)                           |
| Equality                 | [`equatable`](https://pub.dev/packages/equatable)                       |
| State Management (BLoC)  | [`flutter_bloc`](https://pub.dev/packages/flutter_bloc)                 |
| Environment Handling     | [`flutter_dotenv`](https://pub.dev/packages/flutter_dotenv)             |
| Localization             | [`flutter_localization`](https://pub.dev/packages/flutter_localization) |
| Dependency Injection     | [`get_it`](https://pub.dev/packages/get_it)                             |
| Persistent Storage       | [`shared_preferences`](https://pub.dev/packages/shared_preferences)     |

---

## 📁 Directory Structure

```
FlutterStarterKit/
├── android/
├── ios/
├── lib/
│   ├── config/
│   ├── widgets/
│   │   ├── custom_button.dart
│   │   └── user_avatar.dart
│   ├── constants/
│   │   ├── enums.dart
│   │   ├── image_constant.dart
│   │   └── pref_constants.dart
│   ├── network/
│   ├── navigation/
│   │   ├── observer/
│   │   │   └── app_navigator_observer.dart
│   │   └── routes/
│   │       ├── app_router_imports.dart
│   │       └── app_routes.dart
│   ├── resource/
│   │   ├── dimension/
│   │   └── styles/
│   ├── utils/
│   ├── presentation/
│   │   └── news/
│   │       ├── bloc/
│   │       │   ├── news_bloc.dart
│   │       │   ├── news_event.dart
│   │       │   └── news_state.dart
│   │       ├── models/
│   │       │   └── news_model.dart
│   │       ├── api/
│   │       │   └── news_api.dart
│   │       ├── repository/
│   │       │   └── news_repository.dart
│   │       ├── widget/
│   │       │   └── news_screen.dart
│   │       └── view/
│   │           ├── widget/
│   │           └── news_screen.dart
│   └── main.dart
├── test/
├── pubspec.yaml
├── README.md
```

---

## 🧰 Custom Commands

### ✅ Setup Pre-commit Hooks (with Husky)

```bash
dart run husky install
```

### 🔁 Run Custom Script Commands

```bash
rps <command_name>
```

#### Available Commands:

- **Generate Locales:**
  ```bash
  rps gen_locale
  ```

- **Generate Navigation Routes:**
  ```bash
  rps nav_generator
  ```

- **Setup Development Environment:**
  ```bash
  rps setup_dev_env
  ```

---

## 🔮 Upcoming Features

- [ ] Theme support (light/dark mode)
- [ ] Logging system
- [ ] CI/CD integration
- [ ] Error boundary and reporting

---

## 👩‍💻 Author

**Sonal Maniya**  
[GitHub](https://github.com/sonalmaniya) · [LinkedIn](https://www.linkedin.com/in/sonalmaniya)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).
