💡 Caliber Sense
Caliber Sense is a Flutter-based AI-powered mobile application designed to evaluate an individual's communication skills, aptitude, and personality. Using an intuitive quiz interface, Firebase for authentication and cloud data storage, and TensorFlow Lite for on-device AI evaluation, the app provides users with a personalized assessment of their capabilities.

🚀 Features
🧠 Adaptive Testing
Dynamically adjusts question difficulty based on user performance.

Categories: Aptitude, Language, Memory.

🗣️ Communication Skill Analysis
Evaluates English fluency using AI models.

Text-based question-answer interface to assess grammar, structure, and coherence.

🧮 Aptitude Test
Questions vary in type: logical reasoning, arithmetic, and problem-solving.

Supports adaptive logic based on user responses.

🧵 Personality Profiling
Judges honesty, politeness, and assertiveness using TensorFlow Lite models.

Offers personality insights after test completion.

🔥 Firebase Integration
Authentication: Secure user login/signup using Firebase Auth.

Cloud Firestore: Stores question sets, user test results, and performance history.

Firebase Storage: Hosts image-based questions and user profile data.

📱 Responsive UI
Built using Flutter and Dart with support for multiple screen sizes.

Custom-designed widgets (e.g., QuestionCard, Option, etc.)

🧠 TensorFlow Lite Integration
On-device AI models for personality analysis.

Optimized .tflite models for fast and private inference.

🛠️ Technologies Used
Tech	Purpose
Flutter	Cross-platform mobile development
Dart	Programming language for app logic
Firebase Auth	User authentication
Cloud Firestore	Realtime database
Firebase Storage	Image and asset hosting
TensorFlow Lite	On-device machine learning
Google Fonts	UI Typography
Provider / Riverpod (if used)	State management

📂 Folder Structure (Simplified)
vbnet
Copy
Edit
lib/
├── main.dart
├── models/
│   └── question.dart
├── screens/
│   ├── home_screen.dart
│   ├── profile_screen.dart
│   ├── results_collection.dart
│   ├── test_screens/
│   │   └── memory_test.dart
├── widgets/
│   ├── question_card.dart
│   ├── option.dart
├── data/
│   ├── aptitude_questions.dart
│   ├── memory_questions.dart
├── services/
│   ├── firebase_service.dart
│   ├── ai_model_handler.dart
assets/
└── icons/
    └── coming-soon.png
📸 Screenshots
<!-- Add screenshots here -->
To be added

🧪 Getting Started
Prerequisites:
Flutter SDK (latest stable)

Dart SDK

Firebase CLI (for setup and deployment)

Setup Instructions:
Clone the repo

bash
Copy
Edit
git clone https://github.com/your-username/caliber_sense.git
cd caliber_sense
Install dependencies

bash
Copy
Edit
flutter pub get
Configure Firebase

Create a Firebase project.

Add Android/iOS apps and download google-services.json / GoogleService-Info.plist.

Replace them in android/app/ or ios/Runner/.

Run the app

bash
Copy
Edit
flutter run
