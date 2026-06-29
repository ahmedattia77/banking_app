# BankPick Mobile Application 📱

A modern, secure, and fast banking and digital wallet application built with Flutter using Clean Architecture principles and production-ready folder structuring.

---


https://github.com/user-attachments/assets/39176639-8919-458c-8fce-6149849644da



## 🏗️ Project Architecture & Folder Structure

The project strictly follows **Clean Architecture** principles combined with **Feature-first structuring**. Each feature is completely isolated, containing its own Data, Domain (if applicable), and Presentation layers.

Here is an explanatory breakdown of our `lib/` directory structure based on the current implementation:

```text
lib/
│
├── features/                          # All app features grouped by module
│   ├── onboarding/                    # Onboarding & Splash module
│   │   └── views/pages/               # Onboarding Screens & FakeSplashScreen
│   │
│   ├── home/                          # Home dashboard module
│   │   ├── data/                      # Data layer (Models, Repositories implementations)
│   │   │   ├── model/
│   │   │   └── rebository/
│   │   │   └── usecase/
│   │   └── views/                     # Presentation layer for Home
│   │       ├── pages/                 # e.g., home_page.dart
│   │       └── widgest/               # e.g., home_icon_contianer.dart, home_appbar.dart
│   │
│   ├── edit_profile/                  # Profile Management module
│   │   └── views/                     # Presentation (pages & custom widgets)
│   │
│   ├── settings/                      # Settings & Configurations module
│   │   └── views/pages/               # e.g., settings_page.dart
│   │
│   ├── request_money/                 # Money Request & Transaction module
│   │   └── views/widgets/             # Feature-specific components
│   │
│   └── navigation_layout/             # Core app Shell (Persistent Navigation Bar)
│       └── views/pages/               # navigation_bar_page.dart
│
└── main.dart                          # App Entry point & Theme configuration
