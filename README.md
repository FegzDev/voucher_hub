# Voucher Hub

A Flutter mobile application that integrates with the VoucherHub API, enabling users to browse, purchase, and manage digital gift cards through a seamless end-to-end experience.

---

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Architecture](#architecture)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
    - [Running the App](#running-the-app)
- [API Integration](#api-integration)
- [Screens](#screens)
- [State Management](#state-management)
- [Local Persistence](#local-persistence)
- [Security](#security)
- [Assumptions](#assumptions)
- [Evaluation Criteria Coverage](#evaluation-criteria-coverage)

---

## Overview

Voucher Hub is a production-quality Flutter application built as part of a mobile developer assessment. It integrates directly with the VoucherHub backend API, allowing customers to browse gift card products, manage a shopping cart, complete checkout, and view their purchased vouchers.

**Test Credentials**

```
Email:    test@mail.com
Password: Password1@
```

---

## Features

- **Authentication**: Secure login with JWT token storage; supports logout.
- **Product Catalogue**: Browse all available gift cards with images, names, countries, and pricing. Supports pull-to-refresh, loading states, and error states.
- **Product Details**: View full product descriptions, denominations, redemption instructions, and add items to the cart.
- **Shopping Cart**: View, update quantities, and remove cart items. Displays unit price and subtotal per item.
- **Cart Total Calculation**: Calls the backend to compute subtotal, fees, and final payable total.
- **Checkout**: Confirms order details, triggers the checkout API, and displays the order summary or failure reason.
- **Voucher List**: Browse all purchased vouchers with product name, purchase date, and expiry date.
- **Voucher Details**: View voucher code, PIN, serial number, and expiry date for each purchased voucher.
- **User Profile**: Displays authenticated user info and provides a logout action.

---

## Architecture

The project follows **Clean Architecture** principles combined with a feature-first folder structure. Responsibilities are clearly separated into three layers:

### Data Layer
Handles all remote and local data sources, network models (freezed), JSON serialization, and mappers that convert data models to domain models.

- **Remote**: Dio-based HTTP clients for each feature domain (auth, cart, products, vouchers).
- **Local**: Drift (SQLite) for persistent product caching; Flutter Secure Storage for the JWT access token.
- **Mappers**: Extension methods that convert response/local models to domain models.

### Domain Layer
Contains pure Dart business logic with no framework dependencies.

- **Models**: Immutable plain Dart classes (Cart, Product, Voucher, Checkout, etc.).
- **Repositories**: Abstract interfaces that the data layer implements.

### Presentation (UI) Layer
Built with Flutter widgets and BLoC for state management.

- **BLoC**: One BLoC per feature screen; events and states modelled with Freezed sealed classes.
- **Screens and Widgets**: Stateless where possible, stateful only when local form state is required.
- **Navigation**: GoRouter with a redirect guard driven by the auth token stream.

### Dependency Injection
GetIt is used as the service locator. Each feature module exposes a `configureDI` function called from the root `di.dart` file, keeping DI setup modular and testable.

---

## Tech Stack

| Category | Package |
|---|---|
| Language | Dart |
| Framework | Flutter |
| State Management | flutter_bloc |
| Code Generation | freezed, json_serializable |
| Networking | Dio |
| Local Database | Drift (SQLite) |
| Secure Storage | flutter_secure_storage |
| Navigation | go_router |
| Functional Programming | fpdart |
| Dependency Injection | get_it |
| Localisation | flutter_localizations / intl |

---

## Project Structure

```
lib/
├── auth/               # Authentication (login, logout, JWT storage)
│   ├── data/           # Remote data source, request/response models, repository impl
│   ├── domain/         # AuthRepository interface, LoginData model
│   └── ui/             # LoginBloc, AuthBloc, LoginScreen, widgets
├── cart/               # Shopping cart and checkout
│   ├── data/           # Cart API, request/response models, mappers, repository impl
│   ├── domain/         # CartRepository interface, Cart/CartItem/CartTotal/Checkout models
│   └── ui/             # CartBloc, CheckoutBloc, CartTotalBloc, AddCartItemBloc, screens
├── product/            # Gift card catalogue and product details
│   ├── data/           # Remote + local data sources, mappers, repository impl
│   ├── domain/         # ProductRepository interface, Product model
│   └── ui/             # ProductCatalogueBloc, ProductDetailsBloc, screens, widgets
├── voucher/            # Purchased voucher list and details
│   ├── data/           # Remote data source, mapper, repository impl
│   ├── domain/         # VoucherRepository interface, Voucher model
│   └── ui/             # VoucherListBloc, VoucherDetailsBloc, screens, widgets
├── user/               # User profile and local user persistence
│   ├── data/           # Drift data source, local model, mappers, repository impl
│   ├── domain/         # UserRepository interface, User model
│   └── ui/             # UserBloc, ProfileScreen
├── error_handling/     # Shared error models and mappers
├── network/            # Dio setup, auth interceptor, HTTP helpers
├── database/           # Drift AppDatabase, table definitions, type converters
├── navigation/         # GoRouter configuration, route paths
├── l10n/               # Localisation strings (English)
├── ui/                 # Shared widgets (VoucherHubButton, ScreenPadding, etc.)
├── util/               # AmountFormatter
├── di/                 # Root DI configuration
└── main.dart           # App entry point
```

---

## Getting Started

### Prerequisites

- Flutter SDK: `^3.x` (Dart SDK `^3.11.5`)
- Android Studio or Xcode (for device/emulator targets)
- A connected Android or iOS device, or an active emulator/simulator

Verify your Flutter installation:

```bash
flutter doctor
```

### Installation

1. Clone the repository:

```bash
git clone <repository-url>
cd voucher_hub
```

2. Install dependencies:

```bash
flutter pub get
```

3. Run code generation (freezed, json_serializable, drift):

```bash
dart run build_runner build --delete-conflicting-outputs
```

### Running the App

**Android:**

```bash
flutter run
```

**iOS:**

```bash
flutter run
```

**Build a release APK:**

```bash
flutter build apk --release
```

**Build a release IPA (requires macOS + Xcode):**

```bash
flutter build ipa --release
```

---

## API Integration

All network requests target the VoucherHub backend at:

```
https://assessment.suregifts.com.ng/api/
```

### Endpoints Used

| Method | Endpoint | Description |
|---|---|---|
| `POST` | `/auth/login` | Authenticate user and retrieve JWT |
| `GET` | `/suregifts/products` | List all available gift card products |
| `GET` | `/suregifts/products/{code}` | Get a single product by code |
| `GET` | `/cart` | Retrieve the current user cart |
| `POST` | `/cart/items` | Add an item to the cart |
| `PUT` | `/cart/items/{id}` | Update a cart item quantity |
| `DELETE` | `/cart/items/{id}` | Remove a cart item |
| `DELETE` | `/cart` | Clear the entire cart |
| `GET` | `/cart/total` | Calculate cart subtotal, fees, and total |
| `POST` | `/checkout` | Confirm and process the checkout |
| `GET` | `/vouchers` | List all purchased vouchers |
| `GET` | `/vouchers/{id}` | Get a single voucher by ID |

### Authorization

Every request (except login) automatically includes the Bearer token via a Dio interceptor:

```
Authorization: Bearer <jwt_token>
```

If the server responds with `401 Unauthorized`, the interceptor deletes the locally stored token, which triggers the GoRouter redirect to the login screen.

### Error Handling

All network calls are wrapped with `safeGet`, `safePost`, `safePut`, and `safeDelete` extension methods on Dio. These catch `DioException` and return an `Either<ErrorResponse, Response>`, ensuring no unhandled exceptions propagate to the UI. The BLoC layer maps errors to `ErrorData` domain models and emits the appropriate failure state.

---

## Screens

| Screen | Description |
|---|---|
| Login | Email/password form with validation; loading state on submission |
| Product Catalogue | Grid of gift cards; pull-to-refresh; loading, empty, and error states |
| Product Details | Full product info; denomination chips or free-amount input; add to cart |
| Cart | Item list with increase/decrease/remove controls; linear progress during updates |
| Checkout | Displays subtotal, fees, and total; confirm button triggers checkout API |
| Checkout Receipt | Displays payment reference, voucher count, and total after success |
| Voucher List | List of all purchased vouchers; pull-to-refresh |
| Voucher Details | Voucher code, PIN, serial number, and expiry date |
| Profile | Displays user name and email; logout button |

---

## State Management

Each feature screen has a dedicated BLoC that:

1. Accepts typed event sealed classes (generated with Freezed).
2. Emits typed state sealed classes (generated with Freezed).
3. Delegates all data access to the domain repository interface.

Example state lifecycle for the cart:

```
initial -> loading -> success | empty | failure
success -> updating (optimistic cart shown) -> success | cartItemFailure
```

`cartItemFailure` carries both the previous cart (shown in the UI) and the error message (shown in a SnackBar), allowing the user to continue interacting with the last known cart state.

---

## Local Persistence

### Product Cache (Drift / SQLite)

Products are cached in a local SQLite database via Drift. On each `getProducts` call, the repository first checks whether locally cached products exist and are still within their 1-day validity window. If valid, the local result is returned immediately without a network request. If expired or empty, the remote API is called and results are written to the database.

### JWT Token (Flutter Secure Storage)

The access token is stored in the device's secure keystore (Keychain on iOS, EncryptedSharedPreferences on Android) via `flutter_secure_storage`. A broadcast stream from the storage notifies `AuthBloc` and `UserBloc` whenever the token changes, which triggers GoRouter's redirect logic.

### User Profile (Drift / SQLite)

The authenticated user's profile (id, email, first name, last name) is persisted locally so the home screen can display the user's name without an extra network call.

---

## Security

- JWT tokens are never stored in SharedPreferences or plain storage; `flutter_secure_storage` is used exclusively.
- The Dio authorization interceptor attaches the token from secure storage on every request.
- On logout (or a `401` response), the token and user record are deleted from local storage before the user is redirected to the login screen.
- No sensitive credentials are hardcoded in the source code.

---

## Assumptions

1. **Payment is simulated**: The checkout endpoint handles payment internally on the backend. No real payment SDK integration is required.
2. **Single currency per session**: The app displays whatever currency the API returns per product; no currency conversion is performed client-side.
3. **Product validity window**: Cached products are considered valid for 24 hours. This value is defined in `LocalProductDefaults.validity` and can be adjusted.
4. **Denomination selection**: If a product has fixed denominations, the user selects from chips. If it has no denominations, a free-amount text field is shown instead.
5. **Cart is server-side**: There is no local cart state beyond what the API returns. All cart mutations (add, update, remove) go through the backend.
6. **Order history screen**: The spec mentions an order history screen; the current implementation covers vouchers (which represent purchased order outcomes) as the primary post-checkout view. A dedicated order history screen was not implemented due to the absence of a `/orders` endpoint in the provided API surface.
7. **Voucher operations history**: Voucher operation history (purchased, delivered, failed) was not implemented as the corresponding endpoint was not confirmed in the backend.

---

## Evaluation Criteria Coverage

| Area | Approach |
|---|---|
| Functional completeness (30%) | Authentication, product catalogue, product details, cart CRUD, total calculation, checkout, voucher list, and voucher details are all implemented |
| Architecture and maintainability (20%) | Clean Architecture with feature-first folder structure; repository pattern; DI with GetIt |
| UI/UX quality (15%) | Loading indicators, empty states, error states, pull-to-refresh, material banners, and adaptive progress indicators throughout |
| Code quality (15%) | Freezed sealed classes for type-safe events and states; extension-based mappers; consistent naming; no business logic in widgets |
| Error handling and resilience (10%) | Either-based error propagation from network to UI; `cartItemFailure` state preserves cart during update errors; 401 auto-logout |
| Security practices (5%) | Secure token storage; bearer token interceptor; token cleared on logout and unauthorised response |
| Documentation (5%) | This README covering setup, architecture, API, assumptions, and screen guide |

---

## Official API Documentation

[VoucherHub Integration Guide](https://voucherhub.readme.io/reference/integration-guide)