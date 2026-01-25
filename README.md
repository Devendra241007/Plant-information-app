
# 🌱 PlantInfo — Plant Information App

**License:** Flutter · XML (Offline Data)

PlantInfo is a lightweight Flutter application that provides **detailed information about plants** in a clean and structured format.  
The app is designed to load **plant descriptions from an XML file**, while **plant names and images are stored locally**, ensuring fast performance and offline accessibility.

---

## 🌟 Overview

PlantInfo is built as:
- A **plant reference app** for users
- A **portfolio-grade Flutter project** demonstrating structured local data handling

The app focuses on:
- Offline data access
- XML parsing in Flutter
- Clean UI and simple navigation
- Efficient data loading using indexes

---

## 🧠 What PlantInfo Does

- 🌿 Displays a list of plants with **name and image**
- 📖 Loads **detailed plant descriptions from XML**
- 🔢 Fetches plant data **based on selected index**
- ⚡ Works **offline** without any backend or API
- 🧩 Keeps data organized and lightweight

---

## ✨ Features

### 🌱 Plant List
- Displays plant names and images
- Data stored locally for fast loading
- Clean and scrollable list UI

### 📄 Plant Description
- Detailed plant information loaded from XML
- Parsed dynamically based on plant index
- Supports structured and expandable descriptions

### 📦 Offline Support
- No internet connection required
- XML file bundled with the app
- Ideal for low-data environments

### 🎨 Simple UI
- Clean and minimal Flutter UI
- Focused on readability and content
- Easy navigation between screens

---

## 🧰 Tech Stack

### 🔹 Frontend
- Flutter
- Dart
- Material UI

### 🔹 Data Handling
- XML file for plant descriptions
- Local asset storage for images
- Index-based data mapping

### 🔹 Architecture
- Simple modular structure
- Separation of UI and data logic
- Easy to maintain and extend

---

## ☁️ Data Architecture (XML-Based)

- Plant descriptions stored in an **XML file**
- Each plant description mapped using an **index**
- Plant names and images stored in local lists
- XML parsing handled at runtime
- No database or API required

This approach ensures:
- Fast loading
- Offline availability
- Clean data separation

---

## 📁 Project Structure (`lib/`)

```text
lib/
├── models/
│   └── plant_model.dart
│
├── data/
│   └── plant_descriptions.xml
│
├── utils/
│   └── xml_parser.dart
│
├── screens/
│   ├── plant_list_screen.dart
│   └── plant_detail_screen.dart
│
├── widgets/
│   └── plant_card.dart
│
└── main.dart
````

---

## 🧩 Architecture Overview

* **Model Layer**
  Defines plant data structure.

* **Data Layer**
  XML file containing plant descriptions.

* **Utils Layer**
  Handles XML parsing and index-based data retrieval.

* **Screens Layer**
  Displays plant list and detailed plant information.

* **Widgets Layer**
  Reusable UI components for plant display.

* **Main Entry Point**
  Initializes the app and handles navigation.

Designed for **simplicity, performance, and offline usage**.

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

No additional configuration is required.

---

## 🧪 Testing

* Verify plant list loads correctly
* Test XML parsing for all plant indexes
* Ensure descriptions match selected plants
* Test offline usage

---

## 📌 Roadmap

* 🔍 Search plants by name
* ⭐ Favorite plants
* 🌐 Multi-language plant descriptions
* 🖼️ Image gallery for plants
* 📚 Category-based plant grouping

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
