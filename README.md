# Build a New AI-Powered Mobile Chat Game Prototype

Create a small but functional Android APK that demonstrates real-time, mixed human-AI chat inside game lobbies.

---

## 🧩 Core Requirements

### 🔌 Real-Time Networking
- Use WebSocket (native, Socket.IO, etc.) for low-latency messaging.
- Support unlimited lobbies and unlimited participants per lobby.

### 🏠 Lobby & Room Management
- Home screen lists lobbies with participant counts.
- Users can:
  - Create public/private lobbies
  - Set max human/AI seats
  - Join/leave lobbies

### 🤖 Mixed Human-AI Chat
- Each lobby can spawn one or more ChatGPT (or Anthropic) bots via API.
- Bots:
  - Have visible names/avatars
  - Reply within ~2–3 seconds of user messages
  - Stream responses if possible

### 🎮 Lightweight Game Loop (Proof-of-Extensibility)
- Inject trivial game events (e.g., trivia questions, votes) every **N messages** or **T seconds**.
- Showcase how chat evolves into gameplay.

### 📱 Mobile Packaging
- Deliver a signed APK runnable on **Android 10+**.
- Use any framework (Flutter, React Native, Kotlin, etc.).
- Document all build steps.

---

## 📹 Video Guidelines

- Capture screen while app runs (phone or emulator).
- Add voice-over explaining:
  - What the app does
  - Your personal contributions (specify if it was a team effort)
  - Key technical/UX decisions—especially AI components
- Upload to **YouTube or Google Drive** (unlisted).
- Share the link.

---

## 📦 Deliverables

- ✅ APK file + download link
- 📁 Source repository (GitHub/GitLab) with commit history
- 📄 README (≤ 2 pages) including:
  - Architecture diagram (client ↔ WebSocket server ↔ LLM API)
  - Tech stack & libraries
  - Prompt strategy & rate-limit handling
  - Build & run instructions
  - Known limitations & future work
- 🎥 3-minute demo video showing:
  - Installation
  - Lobby creation
  - Mixed chat in action

---

## 🧪 Evaluation Criteria

- ⚡ Correctness & stability of real-time messaging
- 🧼 Clean, maintainable code and repo hygiene
- 🧠 Ingenuity in prompt design & AI integration
- 🖼️ Minimal yet intuitive UI/UX
