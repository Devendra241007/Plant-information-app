
# 🌱 PlantInfo — Plant Information App

**License:** Flutter · Local Data (XML / Dart)

PlantInfo is a Flutter-based plant information application that provides **detailed knowledge about plants**, categorized into **Featured**, **Popular**, and **Rare** sections.  
The app focuses on **offline-friendly data handling**, clean UI, and structured navigation.

---

## 🌟 Overview

PlantInfo is designed as:
- A **plant reference app** for users
- A **portfolio-grade Flutter project** demonstrating structured local data management

The app focuses on:
- Category-based plant browsing
- Local data storage (no backend)
- Clean UI and smooth navigation
- Simple and maintainable architecture

---

## 🧠 What PlantInfo Does

- 🌿 Displays plants in **Featured**, **Popular**, and **Rare** categories
- 📖 Shows **detailed plant information** on selection
- 🖼️ Uses **locally stored plant images**
- 📄 Loads plant content from **local data sources**
- ⚡ Works completely **offline**
- 🎯 Provides fast and lightweight performance

---

## ✨ Features

### 🌟 Featured Plants
- Curated list of highlighted plants
- Dedicated detail screens
- Clean card-based UI

### 🌿 Popular Plants
- Frequently known and commonly used plants
- Separate list and detail screens
- Easy navigation between plants

### 🌱 Rare Plants
- Rare and unique plant collection
- Individual detail screens
- Structured plant information

### 🎨 User Interface
- Clean Flutter UI
- Consistent color theming
- Simple navigation flow
- Splash screen on app launch

---

## 🧰 Tech Stack

### 🔹 Frontend
- Flutter
- Dart
- Material UI

### 🔹 Data Handling
- Local Dart data files
- XML / structured local content
- Asset-based image storage

### 🔹 Architecture
- Feature-based folder organization
- Separation of UI and data logic
- Easy to scale and maintain

---

## ☁️ Data Architecture

- Plant data stored locally (no API or backend)
- Plant details loaded from structured local files
- Categories managed through feature folders
- Fast access and offline availability

---

## 📁 Project Structure (`lib/`)

```text
lib/
├── Featured/
│   ├── featuredplants.dart
│   └── Plantinformation.dart
│
├── Popular/
│   ├── popularplants.dart
│   └── popularplantdetail.dart
│
├── Rare/
│   ├── RarePlantslist.dart
│   └── RarePlantsDetail.dart
│
├── colors.dart
├── data.dart
├── HomeScreen.dart
├── Splashscreen.dart
├── wrapper.dart
└── main.dart
````

---

## 🧩 Architecture Overview

* **Featured Module**
  Displays highlighted plants with detailed information.

* **Popular Module**
  Manages commonly known plants with list and detail views.

* **Rare Module**
  Handles rare plant data with dedicated detail screens.

* **Shared Resources**

  * `data.dart` → Central plant data source
  * `colors.dart` → App-wide color theming

* **Screens**

  * `HomeScreen.dart` → Main navigation screen
  * `Splashscreen.dart` → App launch screen

* **Main Entry Point**

  * `main.dart` initializes the app and routing

Designed for **clarity, offline usage, and easy maintainability**.

---

## ⚙️ Setup & Run

### 1️⃣ Clone Repository

```bash
git clone https://github.com/your-username/plantinfo.git
cd plantinfo
```

### 2️⃣ Run App

```bash
flutter pub get
flutter run
```

No backend, API, or authentication setup required.

---

## 🧪 Testing

* Verify plant lists load correctly
* Test navigation between categories
* Check detail screens for all plants
* Test offline functionality

---

## 📌 Roadmap

* 🔍 Search plants by name
* ⭐ Favorite plants
* 🌐 Multi-language support
* 🖼️ Additional plant images
* 📚 Category filtering and sorting

---

## 🤝 Contributing

Contributions are welcome!

### Steps to Contribute

1. Fork the repository
2. Create a feature branch
3. Commit clean and readable code
4. Open a Pull Request

---

## 📜 Disclaimer

This project is created for **educational and portfolio purposes**.
Plant information is intended for general knowledge only.

---

## 👨‍💻 Author

**Devendra Jethva**
Flutter Developer | App Developer

---

## ⭐ Support This Project

If you like PlantInfo:

* ⭐ Star the repository
* 🍴 Fork it
* 🤝 Contribute
* 📢 Share with others
