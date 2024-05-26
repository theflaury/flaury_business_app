# Flaury App

Flaury is a beautifully designed mobile application built using the Flutter framework, leveraging the powerful state management capabilities of GetX and the productivity-boosting CLI tool, Get CLI. 


## Key Features

### 1. **State Management with GetX**
- **Reactive Programming**: Easily manage the state of your application with GetX's reactive programming model.
- **Simple and Intuitive**: Streamline your code with a minimal learning curve and straightforward API.
- **Efficient**: Boost app performance with GetX’s highly efficient state management approach.

### 2. **Routing and Navigation**
- **Simple Navigation**: Define and manage your app’s navigation structure effortlessly.
- **Named Routes**: Use named routes to organize your code and navigate with ease.
- **Dynamic Routing**: Take advantage of dynamic routing for more complex navigation scenarios.

### 3. **Dependency Injection**
- **Lazy Loading**: Optimize resource usage with GetX’s lazy loading capabilities.
- **Singleton Management**: Manage singletons effortlessly to maintain a clean and efficient codebase.

### 4. **Get CLI Integration**
- **Project Scaffolding**: Quickly scaffold new projects and components with Get CLI commands.
- **Automation**: Automate repetitive tasks to save time and reduce human error.
- **Consistency**: Maintain consistency across your codebase with standardized commands and structures.

## Installation

### Prerequisites
- **Flutter SDK**: Ensure you have Flutter installed on your machine.
- **Get CLI**: Install Get CLI by running the following command in your terminal:
  ```bash
  pub global activate get_cli
  ```

### Setup
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-repo/flaury.git
   cd flaury
   ```

2. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the App**:
   ```bash
   flutter run
   ```

## Usage

### Create New Pages
Generate a new page with Get CLI:
```bash
get create page:home
```

### Create New View
Generate a new page with Get CLI:
```bash
get create view:widget on home
```

### Create New View
Generate a new page with Get CLI:
```bash
get create view:"home widget" on home
```

### Manage State
Define a controller to manage your state:
```dart
class HomeController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }
}
```

### Navigation
Navigate between screens using GetX:
```dart
Get.to(HomePage());
Get.toNamed(SecondPage());
Get.offAll(HomePage());
Get.offAllNamed(SecondPage());
```


