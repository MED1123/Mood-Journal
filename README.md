# 🧠 Mood Journal – Inteligentny dziennik nastroju

Flutterowa aplikacja mobilna, która pozwala zapisywać codzienne wpisy nastrojów i analizować je za pomocą sztucznej inteligencji (GPT). Aplikacja sugeruje działania na podstawie emocji wykrytych w Twoich notatkach.

---

## ✨ Funkcje

- ✍️ Wpisywanie nastroju w dzienniku
- 🧠 Analiza wpisu za pomocą GPT (OpenRouter)
- 🪄 Sugestie działania: relaks, motywacja, autorefleksja
- 💾 Lokalna baza danych (SQLite/Hive – w trakcie integracji)
- 🔐 Bezpieczne przechowywanie klucza API (`.env`)
- 📱 Działa na Androidzie (planowane wsparcie dla iOS, watchOS)

---

## 🧪 Wersja MVP (Minimalny Produkt)

| Funkcja                 | Status |
|------------------------|--------|
| Wpis tekstu            | ✅     |
| Integracja z GPT       | ✅     |
| Sugestie nastroju      | ✅     |
| Baza lokalna           | 🔜     |
| Historia wpisów        | 🔜     |
| Połączenie z kalendarzem lub zdrowiem | 🔜     |

---

## 🧰 Stos technologiczny

- **Flutter** – UI/UX aplikacji
- **Dart** – logika
- **OpenRouter** – alternatywa dla OpenAI API
- **Dotenv** – przechowywanie klucza API
- **SQLite / Hive** – lokalna baza danych (do integracji)

---

## 🛠️ Instalacja lokalna

1. Sklonuj repozytorium:

   ```bash
   git clone https://github.com/TWOJ-LOGIN/mood_journal.git
   cd mood_journal
2. Dodaj plik .env z kluczem API
3. Uruchom emulator lub podłącz urządzenie i uruchom aplikację:
   Najpierw `flutter pub spec`.
   A następnie aby uruchomić aplikację, użyj polecenia `flutter run`.

