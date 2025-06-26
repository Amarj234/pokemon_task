# Pokémon Card List App 🧩

📝 Note
This README.md summary was generated with the help of ChatGPT for formatting and presentation clarity. However, all the application code, architecture, logic, and implementation were entirely written and developed by me.

A Flutter-based Pokémon card listing application built for the **Lead Flutter Developer Assignment**. This app demonstrates clean architecture, Bloc state management, API integration, dependency injection, and unit testing.

## 🎥 Demo Video

[Click here to watch the demo video](https://youtu.be/NjcQbXL8UFI?si=0QmDlImgfQDyt0KQ)



## 📱 Features

- 🔍 **Search & Filter Cards**  
  Search Pokémon cards using the public API by card set name.

- 🧾 **Card List with Pagination**  
  Displays cards in a 2x2 grid using paginated API.

- 📄 **Card Detail View**  
  Tap any card to view details like:
    - Attacks
    - Set
    - Types
    - Weaknesses
    - Artist
    - Much more — with animated transitions

- 🔁 **Smooth Navigation**  
  Routing handled via structured route management.

- 🗂️ **Offline Image Caching**  
  Optimized network image rendering using `CachedNetworkImage`.

---

## 🛠️ Tech Stack

- **Flutter**
- **BLoC** (State Management)
- **Clean Architecture**
- **Dependency Injection**
- **REST API (Pokémon TCG)**
- **Unit Testing** (`flutter_test`)
- **Image Caching** with `cached_network_image`

---

## 🔗 APIs Used

- **Card List API:**  
  `https://api.pokemontcg.io/v2/cards?page=1&pageSize=10`

- **Search API (By Set Name):**  
  `https://api.pokemontcg.io/v2/cards?q=set.name:generations`

---

## 🧪 Testing

- All logic layers are covered with `flutter_test`
- Key test cases:
    - Bloc state transitions (loading → success → error)
    - Search input behavior
    - Detail view UI rendering (text only, ignoring images)

[//]: # ( we can also write golden test for mach our UI widget with picture)
---

## 🧭 Architecture Overview

[//]: # (- **Feature-based folder structure**  i can do more perfect folder structure)
- **Bloc pattern** for separation of concerns
- **Repository pattern** for data access abstraction
- **JSON Serializable** for model generation
- **DI-ready structure** for future scalability

---

## ▶️ How to Run

[//]: # (dart run build_runner build) run this command for generate freezed file

```bash
dart run build_runner build
flutter pub get
flutter run
