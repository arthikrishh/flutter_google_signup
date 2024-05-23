# Google Sign-In Flutter App

This Flutter application demonstrates how to implement Google Sign-In using GetX for state management and Google Fonts for styling.

<img width="1094" alt="Screenshot 2024-01-23 at 12 07 44 AM" src="https://github.com/arthikrishh/flutter_google_signup/assets/116914004/30336397-b22a-4931-bda5-6b2e109667ac">


## Features

- Google Sign-In integration
- User authentication state management with GetX
- Responsive UI with custom styling

## Screenshots

<img width="1126" alt="Screenshot 2024-01-23 at 12 28 40 AM" src="https://github.com/arthikrishh/flutter_google_signup/assets/116914004/f3c54a1c-d2ad-44d1-812d-66dddeb245b9">

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK
- A Google Cloud Platform project with OAuth 2.0 credentials: [Create OAuth 2.0 Credentials](https://developers.google.com/identity/sign-in/web/sign-in#create_authorized_credentials)

### Installing

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/google-signin-flutter.git
   cd google-signin-flutter

2. Install dependencies:

   ```bash
   flutter pub get

3. Add your Google OAuth 2.0 credentials:

    * Go to your Google Cloud Platform project.
    * Navigate to APIs & Services > Credentials.
    * Create an OAuth 2.0 Client ID for Android and Web.
    * Download the google-services.json file and place it in the android/app directory.
    * For iOS, follow the instructions to add the GoogleService-Info.plist file to your iOS project.

4. Run the application:

   ```bash
   flutter run

### Usage

  * On launch, you will see the Google Sign-In button.
  * Click the button to sign in with your Google account.
  * Once signed in, you will see your profile information displayed.
  * Click the logout button to sign out.
    
### Code Overview

 # Main Files
 
  * lib/main.dart: Entry point of the application.
  * lib/login_page.dart: Contains the UI for the login and profile screen.
  * lib/login_controller.dart: Manages the authentication state using GetX.

 # Main Dependencies
 
  * get: For state management.
  * google_fonts: For custom fonts.
  * google_sign_in: For Google authentication.

### Folder Structure

```plaintext
lib/
├── main.dart
├── login_page.dart
├── login_controller.dart
assets/
└── images/
    └── google.png
screenshots/
└── login_screen.png
└── profile_screen.png 
```

### Contributing

Contributions are welcome! Please open an issue or submit a pull request for any changes.


For More You can visit my website [Aarthi Krishnan](https://aarthikrishnan.com)


