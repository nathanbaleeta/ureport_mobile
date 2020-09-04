# Contributing to ureport-mobile

Interested in contributing to ureport-mobile? Thanks! There are plenty of ways you can help.

Thank you for helping us make this project great and being a part of the ureport-mobile community. Here are a few guidelines that will help you along the way.

## Code of Conduct

ureport-mobile has adopted the [Contributor Covenant](https://www.contributor-covenant.org/) as its Code of Conduct, and we expect project participants to adhere to it.
Please read [the full text](/CODE_OF_CONDUCT.md) so that you can understand what actions will and will not be tolerated.

## What you need to know

In order to contribute as a developer you will need to have a basic understanding of [Dart](https://dart.dev/), [Flutter](https://flutter.dev/), [RapidPro](https://rapidpro.io/), [Firebase Cloud Messaging](https://pub.dev/packages/firebase_messaging), [Android Studio AVD Manager](https://developer.android.com/studio/run/managing-avds) and [Github](https://help.github.com/en/github). 

## Issue tracking

ureport-mobile uses GitHub’s tracker called [Issues](https://github.com/unicef/ureport-mobile/issues) for easy collaboration among developers to keep track of tasks, enhancements, and bugs during software sprints. A typical issue looks like this:
* A **title** and **description** describe what the issue is all about.
* Color-coded labels help you categorize and filter your issues (just like labels in email).
* A **milestone** acts like a container for issues. This is useful for associating a group of issues with specific features or time period (e.g. Weekly Sprint 9/9-9/20 or FCM 1.0.0). 
* One **assignee** is responsible for working on the issue at any given time.
* **Comments** allow anyone with access to the repository to provide feedback.

## Set up your development environment

This is a starting point for new developers who wish to setup their development workstations' for Flutter mobile development.

You need two pieces of software to complete this setup: the [Flutter SDK](https://flutter.dev/docs/get-started/install) and an [editor](https://flutter.dev/docs/get-started/editor). You can use your preferred editor, such as Android Studio or IntelliJ with the Flutter and Dart plugins installed, or Visual Studio Code with the [Dart Code and Flutter extensions](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code).

You can test drive this app using one of the following devices:
- A physical [Android device](https://flutter.dev/docs/get-started/install/macos#set-up-your-android-device) or [iOS device](https://flutter.dev/docs/get-started/install/macos#deploy-to-ios-devices) connected to your computer.
- The [Android emulator](https://flutter.dev/docs/get-started/install/macos#set-up-the-android-emulator) or [iOS simulator](https://flutter.dev/docs/get-started/install/macos#set-up-the-ios-simulator).

For macOS you'll also need:
- A Mac configured with Xcode.

## Coding formatting
To be more productive as a team of developers we follow a single, shared style which is enforced through [automatic formatting](https://flutter.dev/docs/development/tools/formatting). Depending on your text editor, please follow the instructions below to configure automatic formatting:


- **Android Studio/ IntelliJ:** Install the Dart plugin (see Editor setup) to get automatic formatting of code in Android Studio and IntelliJ. To automatically format your code in the current source code window, use Cmd+Alt+L (on Mac) or Ctrl+Alt+L (on Windows and Linux). Android Studio and IntelliJ also provides a check box named Format code on save on the Flutter page in Preferences (on Mac) or Settings (on Windows and Linux) which will format the current file automatically when you save it.

- **VS Code:** nstall the Flutter extension (see Editor setup) to get automatic formatting of code in VS Code.To automatically format the code in the current source code window, right-click in the code window and select Format Document. You can add a keyboard shortcut to this VS Code Preferences.
To automatically format code whenever you save a file, set the editor.formatOnSave setting to true.

Finally, when you submit a Pull Request, they are run again by our continuous integration tools, but hopefully, your code is already clean!


## Submitting a Pull Request (Guidelines)

Good pull requests, such as patches, improvements, and new features, are a fantastic help. They should remain focused in scope and avoid containing unrelated commits.

In summary, if you want to contribute to ureport-mobile, the simplest way is to:
1. Claim an [issue](https://github.com/unicef/ureport-mobile/issues) from the issue tracker.
2. Fork the [ureport-mobile](https://github.com/unicef/ureport-mobile) project.
3. Clone it to your local system.
4. Make a new branch.
5. Make your changes.
6. Try as much as you can to include unit tests for your changes. 
7. Push it back to your repo.
8. Click the Compare & pull request button.
9. Click Create pull request to open a new pull request.

## CI/CD
We use [CircleCI](https://circleci.com/) for continuous integration to automatically run unit and integration tests before merging new code into the base branch. 

## Project Wiki
Our [wiki](https://github.com/unicef/ureport-mobile/wiki) has several pages of information for developers, and people contributing to ureport-mobile. Check it out for your authoritative source of information about the ureport-mobile community.

## License

By contributing your code to the unicef/ureport-mobile GitHub repository, you agree to license your contribution under the GNU GENERAL PUBLIC LICENSE.

