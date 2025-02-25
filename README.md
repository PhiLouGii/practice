# Login and SignUp with OTP🔐🔐

A Flutter application that allows users to sign up, log in, and verify their identity using a One-Time Password (OTP). This app demonstrates a clean and intuitive user flow for authentication, including email/password-based sign-up/login and OTP verification.

## 📲Features
- Sign-Up: Users can create a new account by providing their email and password.
- Login: Existing users can log in using their email and password. 
- OTP Verifaction: After signing up, users receive a 6-digit OTP to verify their email or phone number. 
- Sleek UI: Modern and responsive design with smooth animations.
- Multi-Screen Flow: Seamless navigation between Sign-Up, Login, and OTP Verification screens.

## 📱Screenshots
![alt text](<Screenshot 2025-02-26 003940-1.png>)
![alt text](<Screenshot 2025-02-26 003958.png>)
![alt text](<Screenshot 2025-02-26 004045.png>)
![alt text](<Screenshot 2025-02-26 004114.png>)

## 📋Getting Started 
Follow these steps to set up and run the project on your local machine.

### ✅Prerequisites
- Flutter SDK: Make sure you have Flutter installed.
- IDE: Use Android Studio, VS Code, or any IDE of your choice with Flutter support.

## ⚙️Installation
1. Clone the repository: 
```bash
git clone https://github.com/your-username/practice.git
cd practice
```

2. Install dependencies: 
```bash
flutter pub get
```

3. Run the app: 
```bash
flutter run
```

## 🗂️Project Structure 
```
lib/
├── main.dart                # Entry point of the application
├── ui/
│   ├── screens/             # Contains all the screens
│   │   ├── login_screen.dart
│   │   ├── sign_up_screen.dart
│   │   └── verify_screen.dart
│   └── main_view.dart       # Main view that manages screen navigation
├── widgets/                 # Reusable widgets
│   └── otp_form.dart        # Custom OTP input form
assets/
├── images/                  # Contains all images used in the app
```

## 🔍How it Works
### 1. Sign-Up Screen: 
- Users can create a new account by entering their email and password.

- After signing up, they are redirected to the OTP Verification screen.

### 2. Login Screen: 
- Existing users can log in using their email and password.

- If the user is new, they can navigate to the Sign-Up screen.

### 3. OTP Verification Screen:
- Users enter a 6-digit OTP code sent to their email or phone.

- The app validates the OTP and proceeds to the next step

## 🫱🏽‍🫲🏻Contributing
Contributions are welcome! If you find a bug or want to add a feature, please open an issue or submit a pull request.

1. Fork the repository.

2. Create a new branch (```git checkout -b feature/AmazingFeature```).

3. Commit your changes (```git commit -m 'Add some AmazingFeature'```).

4. Push to the branch (```git push origin feature/AmazingFeature```).

5. Open a pull request.

## 🏷️License
This project is licensed under the [MIT License](www.mitlicense.com). 

## 👏🏽Acknowledgements
- Flutter: For providing an amazing framework to build beautiful apps.
- Vector Art: The images used in this project are from [Freekpik](www.freepik.com)

## 📞Contact 
If you have any questions or feedback, feel free to reach out: 
- [Philippa Giibwa](pgiibwa04@gmail.com)
- [PhiLouGii](www.philougii@github.com)
