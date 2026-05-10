# 🥘 Pantry-Pal — Recipe Suggester iOS App

<img src="docs/screenshots/app-screens.png" alt="Pantry-Pal Screenshots" width="900"/>

**What's in your pantry? Let's cook something.**

*A SwiftUI app that suggests recipes based on the ingredients you already have — built offline-first for Apple's Swift Student Challenge 2024.*

[![Swift](https://img.shields.io/badge/Swift-5.9-orange?logo=swift&logoColor=white)](https://swift.org)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-Playgrounds-blue?logo=apple&logoColor=white)](https://developer.apple.com/swiftui/)
[![Platform](https://img.shields.io/badge/Platform-iOS%20%7C%20iPadOS-black?logo=apple)](https://apple.com/ios)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)
[![Challenge](https://img.shields.io/badge/Apple-Swift%20Student%20Challenge%202024-silver?logo=apple)](https://developer.apple.com/swift-student-challenge/)

---

## 🧠 The Idea

Food waste happens because people don't know what to cook with what they already have. Pantry-Pal flips the recipe discovery flow — instead of finding a recipe and then shopping, you tell the app what's already in your kitchen and it tells you what you can make right now.

---

## 📱 How It Works

The flow is simple and intentional:

**1. Select your ingredients** → Tap items you have at home (rice, eggs, bread, tomato...)

**2. See matching recipes** → App instantly shows all recipes you can make with those exact items

**3. Cook it** → Tap any recipe for a full step-by-step cooking guide

---

## 🔑 Features

| Feature | Description |
|---------|-------------|
| 🛒 **Ingredient Picker** | Visual grid of pantry items — tap to select what you have |
| 🍳 **Smart Recipe Matching** | Only shows recipes you can actually make with selected items |
| 📋 **Step-by-Step Guide** | Full cooking instructions for each recipe |
| ✈️ **100% Offline** | No internet required — all data is local, works anywhere |

---

## 🏗 Architecture

Pantry Pal.swiftpm/
└── App/
├── Pantry Pal.swift        # App entry point
├── ContentView.swift       # Root view + navigation
├── HomeView.swift          # Landing screen
├── SelectItemsView.swift   # Ingredient selection grid
├── RecipeView.swift        # Matching recipes list
├── StepsView.swift         # Step-by-step recipe detail
├── Data.swift              # Local recipe & ingredient data
└── Assets.xcassets         # Images and app assets

**User flow:**
`HomeView → SelectItemsView → RecipeView → StepsView`

---

## 🛠 Tech Stack

| Layer | Technology |
|-------|-----------|
| **Language** | Swift |
| **UI Framework** | SwiftUI |
| **Data** | Hardcoded local Swift data (offline-first) |
| **Platform** | iOS / iPadOS |
| **Built With** | Swift Playgrounds |

---

## 🍎 Swift Student Challenge 2024

This app was submitted to **Apple's Swift Student Challenge 2024** — Apple's annual competition for student developers to showcase apps built entirely in Swift Playgrounds.

The constraint was strict: the app had to be **fully self-contained with no internet dependency**. That shaped the architecture — all recipe and ingredient data is bundled locally in `Data.swift`, making it work completely offline.

---

## 🗺 What I'd Build Next

This was my first SwiftUI project — a learning milestone. Here's where I'd take it:

- [ ] **Camera-based detection** — point your camera at pantry items, CV model identifies them automatically *(the original vision)*
- [ ] **Cross-ingredient discovery** — mix and match unusual combinations to discover new recipes
- [ ] **Dietary filters** — vegetarian, vegan, gluten-free toggles
- [ ] **Favourites & history** — save recipes you've cooked before
- [ ] **Firebase backend** — user accounts, synced pantry lists across devices

---

## 📄 License

MIT License — see [LICENSE](LICENSE) for details.

---

Made with 🍳 by [Nishant Sinha](https://github.com/NishantSinha7) · [LinkedIn](https://www.linkedin.com/in/nishant-sinha-0a1130319) · [Email](mailto:nishantsinha7122002@gmail.com)

*Submitted to Apple's Swift Student Challenge 2024*
