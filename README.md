# Flutter Quiz App

A simple quiz application built using Flutter as part of learning advanced basics. Users can answer a series of questions and view a summary of their results upon completion.

## Features

*   Presents multiple-choice questions one by one.
*   Tracks user answers.
*   Displays a final results screen summarizing:
    *   Question number
    *   Question text
    *   The user's selected answer
    *   The correct answer
*   Highlights correct vs. incorrect answers in the summary.
*   Scrollable summary view for quizzes with many questions.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

*   Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
*   An IDE like Android Studio or VS Code with Flutter plugins installed.
*   A device (emulator or physical) to run the app.

### Installation & Running

1.  **Clone the repository** (if you have it on Git):
    ```bash
    git clone <your-repository-url>
    cd adv_basics
    ```
    If you don't have it on Git yet, just navigate to your project directory:
    ```bash
    cd path/to/your/adv_basics
    ```

2.  **Install dependencies:**
    Open a terminal in the project root directory (`adv_basics`) and run:
    ```bash
    flutter pub get
    ```

3.  **Run the app:**
    Make sure you have a device running or an emulator selected, then run:
    ```bash
    flutter run
    ```

## Project Structure (Key Files)

*   `lib/main.dart`: The main entry point for the Flutter application. Initializes the app and loads the `Quiz` widget.
*   `lib/quiz.dart`: (Assuming this file exists) The main stateful widget managing the quiz flow (displaying questions, handling answers, navigating to results).
*   `lib/summary.dart`: A stateless widget responsible for displaying the final results summary based on the provided data.
*   `lib/data/questions.dart`: (Assuming this file exists) Likely contains the list of questions and answers used in the quiz.
*   `lib/widgets/`: (Optional - if you have custom widgets) Directory for reusable UI components like answer buttons, question text styling, etc.

## Built With

*   Flutter - The UI toolkit used.
*   Dart - The programming language used.

