# IYO Grocery App

A Flutter mobile application for grocery shopping.

## Overview

IYO Grocery App is a modern mobile application built with Flutter that provides a seamless grocery shopping experience. The app features a clean, intuitive interface for browsing and purchasing groceries.

## Features

- User authentication (login, signup, password recovery)
- Product browsing and search with filtering options
- Shopping cart functionality
- Order management and tracking
- User profile and account management
- Payment method integration

## Screenshots

<!-- Add your screenshots here -->
![Welcome Screen](path/to/screenshot1.png)
![Product Listing](path/to/screenshot2.png)
![Shopping Cart](path/to/screenshot3.png)
![Order Confirmation](path/to/screenshot4.png)

## Tech Stack

- Flutter SDK: ^3.5.3
- Dart: ^3.5.3
- Key packages:
  - flutter_form_builder: ^9.5.0
  - flutter_svg: ^2.0.16
  - google_fonts: ^6.2.1
  - pinput: ^5.0.0
  - flutter_gen: ^5.8.0
  - form_builder_validators: ^11.0.0
  - gap_here: ^1.0.0
  - vector_graphics: ^1.1.15

## Getting Started

### Prerequisites

- Flutter SDK (version ^3.5.3)
- Dart SDK (version ^3.5.3)
- Android Studio / VS Code with Flutter extensions
- An emulator or physical device for testing

### Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/iyo_grocery_app.git
   cd iyo_grocery_app
   ```

2. Install dependencies:
   ```
   flutter pub get
   ```

3. Generate necessary files:
   ```
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. Update app icons (optional):
   ```
   flutter pub run flutter_launcher_icons
   ```

5. Run the app:
   ```
   flutter run
   ```

## Project Structure

- `assets/`: Contains images, SVGs, and other static resources
  - `images/`: App images and product photos
  - `svgs/`: Vector graphics for icons and illustrations
  
- `lib/`: Source code for the application
  - `core/`: Core functionality and utilities
    - `assets.gen.dart`: Auto-generated asset references
    - `layouts/`: Reusable layout components
    - `pallete.dart`: Color definitions
    - `shared/`: Shared widgets used across the app
    - `theme/`: App theming configuration
    - `utils.dart`: Utility functions
  
  - `features/`: Feature-specific modules
    - `account/`: User account management
    - `cart/`: Shopping cart functionality
    - `explore/`: Product exploration and search
    - `home/`: Main home screen
    - `item/`: Product detail pages
    - `login/` & `signup/`: Authentication screens
    - `order/`: Order processing and tracking
    - `shop/`: Shopping interface
    - `welcome/`: Onboarding screens

## Development

### Architecture

The app follows a feature-based architecture, where each major feature is organized into its own directory. This approach makes the codebase more maintainable and scalable.

Key architectural principles:
- Separation of UI and business logic
- Reusable widgets and components
- Consistent theming and styling

### Coding Standards

- Follow the official [Dart style guide](https://dart.dev/guides/language/effective-dart/style)
- Use meaningful variable and function names
- Write comments for complex logic
- Create reusable widgets for repeated UI elements
- Maintain consistent file naming conventions

### Adding New Features

1. Create a new directory under `features/` for your feature
2. Implement the UI components and business logic
3. Update the navigation to include your new feature
4. Add tests for your feature

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
