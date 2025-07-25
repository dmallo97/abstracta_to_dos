# Abstracta's To-Do Challenge

A Flutter application developed as a technical challenge for Abstracta.

## 🚀 Getting Started

Before you begin, it’s highly recommended to use **FVM (Flutter Version Management)** to handle the correct Flutter SDK version.

### 1. Environment Setup

- If you're using FVM, run the following in the project root to set the correct Flutter version:

  ```bash
  fvm use
  ```

- Remember to prefix all Flutter and Dart commands with `fvm`, like so:

  ```bash
  fvm flutter pub get
  ```

### 2. Clone the Repository

Download or clone this repository to your local machine:

```bash
git clone <repo-url>
```

### 3. Environment Variables

This project includes features such as content generation that require API keys.

- A `.env` file is required and should be placed at the root of the project.
- Make sure to obtain and include the correct API keys inside that file.

### 4. Install Dependencies

Run the following command to fetch all required packages:

```bash
flutter pub get
```

### 5. Generate Code

Use `build_runner` to generate required files (e.g., dependency injection, part files, asset references):

```bash
dart run build_runner build --delete-conflicting-outputs
```

### 6. Run the App

- Open a simulator or connect a physical device.
- Then run:

```bash
flutter run
```

> ℹ️ On first launch, a local database will be created.  
> To reset the app data, simply uninstall and reinstall the app.

---

## ⚠️ Known Issues & Future Enhancements

- **Excessive Bloc–Repository Interactions:**  
  Currently, there are redundant interactions between Blocs and the data layer. If a remote data source is introduced later, this could lead to performance or cost concerns. Ideally, data should be synced once at launch and periodically (e.g., on app background or shutdown).

- **Due Date Handling:**  
  Due dates should default to `23:59:59` to avoid same-day tasks being marked overdue prematurely.

- **Exception Handling UI:**  
  While exceptions are being caught, the UI does not yet reflect these states properly.

- **Editor Complexity:**  
  If To-Do creation/editing becomes more complex, consider separating its logic into a dedicated Cubit or Bloc.

- **Task Prioritization:**  
  Add support for task priorities and sort them accordingly.

---

## 🧱 Project Architecture

This project follows a **feature-first modular structure**, meaning:

- Each feature is self-contained with its own layers (UI, logic, data).
- Common configuration files such as routing, theming, and dependency injection are located in the `/config` directory.
- Shared components like widgets, exceptions, interceptors, and Blocs are placed under `/core`.

---

## 🧠 State Management

Given the simplicity of the app, state management is handled with just two state units:

- **ToDoBloc**  
  Manages all CRUD operations related to To-Dos via use cases. If To-Do editing logic grows, it’s recommended to extract that part into a separate Cubit or Bloc.

- **SummaryCubit**  
  Listens to `ToDoBloc` and emits summary states (e.g., task stats). While dependency injection via providers is possible, both are registered as singletons, so it's not strictly necessary.
