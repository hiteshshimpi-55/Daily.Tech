# Daily.Tech News App

Welcome to the Daily.Tech News App! This app is designed to provide users with the latest news articles from various sources.

## Features

- Browse tech news.
- Read detailed article descriptions and click through to the full articles.
- Filter news articles based on user preferences.

## Technologies Used

- Flutter: Cross-platform framework for building mobile apps.
- Clean Architecture: Separation of concerns to promote maintainability and testability.
- BLoC Pattern: Business Logic Component pattern for managing the app's state.

## Architecture Overview

The News App follows the principles of Clean Architecture, dividing the codebase into different layers:

1. **Presentation Layer:** This is where the user interface resides. It consists of screens, widgets, and UI-related code.

2. **Domain Layer:** Contains the app's business logic, use cases, and entities. It's independent of any external frameworks.

3. **Data Layer:** Handles data retrieval and storage. It includes repositories and data sources.

## BLoC Pattern

The app uses the BLoC (Business Logic Component) pattern to manage state and interact with the domain layer. Each feature has its own BLoC, which exposes Streams for UI to react to. BLoCs can be thought of as mediators between the UI and the business logic.

## Folder Structure

- `lib`
  - `data`: Contains data sources, repositories, and mappers.
  - `domain`: Houses use cases, entities, and interfaces.
  - `presentation`: Holds BLoCs, screens, widgets, and UI-related code.
  - `app`: Contains the main app setup, configuration, and routes.
  - `injection`: Handles dependency injection using `get_it`.

## Getting Started

1. Make sure you have Flutter and Dart installed on your machine.
2. Clone this repository.
3. Run `flutter pub get` in the project directory to install dependencies.
4. Start the app by running `flutter run`.

## Contributing

Contributions are welcome! If you'd like to contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and write tests if necessary.
4. Run the tests with `flutter test`.
5. Open a pull request and describe your changes.

## Contact

If you have any questions or need assistance, feel free to contact us at [shimpihitesh2@gmail.com](mailto: shimpihitesh2@gmail.com).
