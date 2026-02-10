<img width="1915" height="979" alt="image" src="https://github.com/user-attachments/assets/711c03f8-fca7-4c76-a833-43fb84d6faab" />### Icon and dropdown button Widget presentation 
### Icon and dropdown button Widget presentation 

# DropdownButton Demo – Flutter Widget Presentation

**Widget showcased:** `DropdownButton`

This Flutter demo app showcases the **DropdownButton widget** through a simple real‑world use case: selecting a preferred color in a settings screen.

The project is designed specifically for an **in‑class widget demo (3–5 minutes)** and follows the course presentation and GitHub submission requirements.

---

## Real‑World Use Case

Many mobile apps allow users to choose preferences such as a theme color, language, or category. This app simulates a **settings screen** where a user selects a color using Flutter’s `DropdownButton` widget.

---

##  Widget Properties Demonstrated (Exactly Three)

### 1️ `value`

* **Default behavior:** Selects the first item in the list
* **What it controls:** The currently selected dropdown item
* **Why it matters:** Keeps the UI in sync with application state

### 2️ `items`

* **Default behavior:** If empty or null, the dropdown will not display options
* **What it controls:** The list of options shown to the user
* **Why it matters:** Allows dynamic data (e.g., from lists or APIs)

### 3️`onChanged`

* **Default behavior:** If null, the dropdown is disabled
* **What it controls:** User interaction and state updates
* **Why it matters:** Enables responding to user input and updating the UI

---

## How to Run the App

### Prerequisites

* Flutter SDK installed
* Android Emulator or physical device

### Steps

```bash
flutter pub get
flutter run
```

---

##  Relevant Code Snippet

```dart
DropdownButton<String>(
  value: selectedItem,
  items: colors.map((color) {
    return DropdownMenuItem<String>(
      value: color,
      child: Text(color),
    );
  }).toList(),
  onChanged: (value) {
    setState(() {
      selectedItem = value!;
    });
  },
)
```

This snippet demonstrates the three required properties (`value`, `items`, and `onChanged`) and how they affect the UI.

---

##  Screenshot

<img width="1915" height="979" alt="Screenshot 2026-02-10 125912" src="https://github.com/user-attachments/assets/7b2efeeb-a2cb-4337-b3cd-6d4b2bdf251c" />


---

##  Project Structure

```
lib/
 └── main.dart
```

---

## 🗓 In‑Class Presentation Date

**Presented on:** *10/2/2026*

---

## Notes

* This project was built for educational purposes.
* Code is intentionally simple to clearly demonstrate the widget behavior.

---

## 📄 License

Free to use for educational and academic purposes.


## GOOGLE DOC:https://docs.google.com/document/d/1l0nUrAtUK26DZGQjNmVDq4pv7FYANrDnDv1cWRt42_Y/edit?usp=sharing

**AUTHOR**: Nehemie ISHIMWE
